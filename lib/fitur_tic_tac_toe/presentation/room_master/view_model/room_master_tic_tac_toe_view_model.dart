import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/common/data/service/player_profile_service.dart';
import 'package:hezbi_lan_game/common/domain/model/response_wrapper.dart';
import 'package:hezbi_lan_game/common/domain/use_case/prepare_game_server_use_case.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/data/tic_tac_toe_service_broadcaster.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/data/tic_tac_toe_ws_server_service.dart';
import 'package:hezbi_lan_game/common/domain/service/i_my_ws_connection_handler.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/client_command_model.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/use_case/decide_the_winner_from_the_board_state_use_case.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/use_case/player_mark_the_board_use_case.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_ui_model/end_game_dialog_status.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_ui_model/i_tic_tac_toe_ui_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_ui_model/i_tic_tac_toe_view_model.dart';

part 'room_master_tic_tac_toe_view_model.freezed.dart';

class RoomMasterTicTacToeViewModel extends Bloc<RoomMasterTicTacToeEvent, RoomMasterTicTacToeState> implements ITicTacToeViewModel {
  
  IMyWsConnectionHandler? _wsClientHandler;
  final _playerProfileService = PlayerProfileService();
  final _playerMarkTheBoard = PlayerMarkTheBoardUseCase();
  final _decideTheWinnerFromTheBoardState = DecideTheWinnerFromTheBoardStateUseCase();
  final _wsService = TicTacToeWsServerService();
  final _ticTacToeServiceBroadcaster = TicTacToeServiceBroadcaster();
  late final _prepareGameServerUseCase = PrepareGameServerUseCase(
    wsServerService: _wsService,
    serviceBroadcaster: _ticTacToeServiceBroadcaster,
  );
  late Future<String> _roomName;

  RoomMasterTicTacToeViewModel() : super(RoomMasterTicTacToeState.init()){
    on(_backToPreviousScreen);
    on(_doneBackToPreviousScreen);
    on(_prepareWebSocketServer);
    on(_quitGame);
    on(_updateRoomMasterAndClientGameState);
    on(_updateOnlyRoomMasterState);
    on(_showEndGameDialog);
    on(_doneShowEndGameDialog);
    on(_markBoardSafely);
    on(_disconnectedFromClient);

    _roomName = _playerProfileService.getPlayerProfile()
        .then((playerProfile) => playerProfile!.name);
  }
  
  void _backToPreviousScreen(
    _BackToPreviousScreen event,
    Emitter<RoomMasterTicTacToeState> emit,
  ){
    emit(state.copyWith(mustBackToPreviousScreen: true));
  }

  void _doneBackToPreviousScreen(
    _DoneBackToPreviousScreen event,
    Emitter<RoomMasterTicTacToeState> emit,
  ){
    emit(state.copyWith(mustBackToPreviousScreen: false));
  }


  void _prepareWebSocketServer(
    PrepareWebSocketServer event,
    Emitter<RoomMasterTicTacToeState> emit,
  ) async {
    emit(state.copyWith(wsServerPreparationResponse: ResponseWrapper.loading()));

    final serverPreparationResponse = await _prepareGameServerUseCase(
      onClientConnected: _handleNewConnection,
      roomName: await _roomName,
      currentPlayerCount: state.hasConnection ? 2 : 1,
    );

    emit(state.copyWith(wsServerPreparationResponse: serverPreparationResponse));
  }

  @override
  Future<void> close() async {
    _quitGameTimer?.cancel();
    await _ticTacToeServiceBroadcaster.unregisterService();
    await _wsService.close();
    await _wsClientHandler?.dispose();
    super.close();
  }

  void _handleNewConnection(
    IMyWsConnectionHandler newWsClientHandler,
  ) async {
    if (_wsClientHandler != null){
      newWsClientHandler.closeConnection(null);
      return;
    }
    await _ticTacToeServiceBroadcaster.unregisterService();
    await _ticTacToeServiceBroadcaster.registerService(
      roomName: await _roomName,
      currentPlayerCount: 2,
      roomAddress: state.wsServerPreparationResponse!.asSucceed().data,
    );

    _wsClientHandler = newWsClientHandler
      ..addOnClientDataListener(
        onData: _handleDataFromClient,
        onError: _handleErrorFromClient,
        onDone: _handleConnectionDone,
      );

    final initialGameState = TicTacToeGameState.init();
    final initialState = state.copyWith(
      hasConnection: true,
      gameState: initialGameState,
    );

    add(RoomMasterTicTacToeEvent.updateRoomMasterAndClientGameState(initialState));
  }

  Timer? _quitGameTimer;
  void _quitGame(
    QuitGame event,
    Emitter<RoomMasterTicTacToeState> emit,
  ) async {
    final newState = state.copyWith(
      isQuittingGame: true,
      gameState: state.gameState.copyWith(
        endGameStatus: TicTacToeEndGameStatus.roomMasterQuitGame
      ),
    );
    add(RoomMasterTicTacToeEvent.updateRoomMasterAndClientGameState(newState));
    _quitGameTimer = Timer(const Duration(seconds: 3), (){
      add(const RoomMasterTicTacToeEvent.backToPreviousScreen());
    });
  }

  void _handleDataFromClient(dynamic data){
    if (data is! String){
      debugPrint('qqq salah kirim tipe data dari client : ${data.runtimeType}');
      return;
    }
    if (_isGameClosed){
      return;
    }

    final jsonData = jsonDecode(data);
    final command = ClientCommandModel.fromJson(jsonData);
    switch(command){
      case MarkCoordinate():
        add(RoomMasterTicTacToeEvent.markBoardSafely(
          row: command.row,
          col: command.col,
          isUpdateFromClient: true,
        ));
        break;
      case ConfirmEndGame():
        if (state.gameState.endGameStatus == TicTacToeEndGameStatus.roomMasterQuitGame) {
          add(const RoomMasterTicTacToeEvent.backToPreviousScreen());
          break;
        }
        add(RoomMasterTicTacToeEvent.updateOnlyRoomMasterState(
          state.copyWith(endGameDialogStatus: EndGameDialogStatus.mustShow))
        );
        break;
      case ClientQuitGame():
        final newState = state.copyWith.gameState(endGameStatus: TicTacToeEndGameStatus.clientQuitGame);
        add(RoomMasterTicTacToeEvent.updateRoomMasterAndClientGameState(newState));
        break;

    }
  }

  bool get _endGameDialogIsShown => state.endGameDialogStatus != EndGameDialogStatus.notShown;
  bool get _serverClosed => _wsClientHandler == null;
  bool get _isGameClosed => _endGameDialogIsShown || _serverClosed;

  void _showEndGameDialog(
    ShowEndGameDialog event,
    Emitter<RoomMasterTicTacToeState> emit,
  ){
    emit(state.copyWith(endGameDialogStatus: EndGameDialogStatus.mustShow));
  }

  void _doneShowEndGameDialog(
    DoneShowEndGameDialog event,
    Emitter<RoomMasterTicTacToeState> emit,
  ){
    emit(state.copyWith(endGameDialogStatus: EndGameDialogStatus.alreadyShown));
  }

  void _updateOnlyRoomMasterState(
    UpdateOnlyRoomMasterState event,
    Emitter<RoomMasterTicTacToeState> emit,
  ){
    emit(event.newState);
  }

  void _markBoardSafely(
    MarkBoardSafely event,
    Emitter<RoomMasterTicTacToeState> emit,
  ){
    // kalau game sudah selesai
    if (state.gameState.endGameStatus != null){
      return;
    }
    final markResponse = _playerMarkTheBoard(
      colMarked: event.col,
      rowMarked: event.row,
      curGameState: state.gameState,
      isClientAction: event.isUpdateFromClient,
    );
    if (markResponse is Error){
      return;
    }

    final nextGameState = (markResponse as Succeed<TicTacToeGameState>).data;
    final nextEndGameStatus = _decideTheWinnerFromTheBoardState(gameState: nextGameState);
    
    add(RoomMasterTicTacToeEvent.updateRoomMasterAndClientGameState(
      state.copyWith(
        gameState:
          nextGameState.copyWith(endGameStatus: nextEndGameStatus),
        endGameDialogStatus:
          nextEndGameStatus == null ? state.endGameDialogStatus : EndGameDialogStatus.mustShow,
      )),
    );
  }

  void _updateRoomMasterAndClientGameState(
    UpdateRoomMasterAndClientGameState event,
    Emitter<RoomMasterTicTacToeState> emit,
  ){
    _wsClientHandler?.sendData(jsonEncode(event.newState.gameState.toJson()));
    emit(event.newState);
  }

  void _handleErrorFromClient(Object error){
    debugPrint('qqq terjadi error pada websocket connection');
  }

  void _handleConnectionDone(int? closeCode, String? closeReason){
    add(RoomMasterTicTacToeEvent.disconnectedFromClient(closeCode, closeReason));
  }

  void _disconnectedFromClient(
    _DisConnectedFromClient event,
    Emitter<RoomMasterTicTacToeState> emit,
  ){
    if (state.gameState.endGameStatus != null){
      return;
    }

    var nextState = state.copyWith.gameState(endGameStatus: TicTacToeEndGameStatus.disconnected);
    nextState = nextState.copyWith(endGameDialogStatus: EndGameDialogStatus.mustShow);

    emit(nextState);
  }
}

@Freezed()
sealed class RoomMasterTicTacToeEvent with _$RoomMasterTicTacToeEvent {
  const factory RoomMasterTicTacToeEvent.prepareWebSocketServer() = PrepareWebSocketServer;
  const factory RoomMasterTicTacToeEvent.backToPreviousScreen() = _BackToPreviousScreen;
  const factory RoomMasterTicTacToeEvent.doneBackToPreviousScreen() = _DoneBackToPreviousScreen;
  const factory RoomMasterTicTacToeEvent.quitGame() = QuitGame;
  const factory RoomMasterTicTacToeEvent.updateRoomMasterAndClientGameState(
    RoomMasterTicTacToeState newState,
  ) = UpdateRoomMasterAndClientGameState;
  const factory RoomMasterTicTacToeEvent.updateOnlyRoomMasterState(
      RoomMasterTicTacToeState newState,
  ) = UpdateOnlyRoomMasterState;
  const factory RoomMasterTicTacToeEvent.showEndGameDialog() = ShowEndGameDialog;
  const factory RoomMasterTicTacToeEvent.doneShowEndGameDialog() = DoneShowEndGameDialog;
  const factory RoomMasterTicTacToeEvent.markBoardSafely({
    required int row,
    required int col,
    required bool isUpdateFromClient,
  }) = MarkBoardSafely;
  const factory RoomMasterTicTacToeEvent.disconnectedFromClient([
    int? closeCode, String? closeReason,
  ]) = _DisConnectedFromClient;
}

@Freezed()
abstract class RoomMasterTicTacToeState with _$RoomMasterTicTacToeState implements ITicTacToeUiState {
  const RoomMasterTicTacToeState._();
  const factory RoomMasterTicTacToeState({
    required ResponseWrapper<WsServerUrl>? wsServerPreparationResponse,
    required bool hasConnection,
    required TicTacToeGameState gameState,
    required bool mustBackToPreviousScreen,
    required EndGameDialogStatus endGameDialogStatus,
    required bool isQuittingGame,
  }) = _RoomMasterTicTacToeState;

  static RoomMasterTicTacToeState init(){
    return RoomMasterTicTacToeState(
      wsServerPreparationResponse: null,
      hasConnection: false,
      gameState: TicTacToeGameState.init(),
      mustBackToPreviousScreen: false,
      endGameDialogStatus: EndGameDialogStatus.notShown,
      isQuittingGame: false,
    );
  }

  @override
  TicTacToeGameState getGameState() => gameState;
}

typedef WsServerUrl = String;