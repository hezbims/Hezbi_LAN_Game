import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/data/tic_tac_toe_ws_server_service.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/i_my_ws_connection_handler.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/client_command_model.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/use_case/player_mark_the_board_use_case.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/view_model/end_game_dialog_status.dart';

part 'room_master_tic_tac_toe_view_model.freezed.dart';

class RoomMasterTicTacToeViewModel extends Bloc<RoomMasterTicTacToeEvent, RoomMasterTicTacToeState> {
  final wsService = TicTacToeWsServerService();
  IMyWsConnectionHandler? _wsClientHandler;
  final _playerMarkTheBoard = PlayerMarkTheBoardUseCase();

  RoomMasterTicTacToeViewModel() : super(RoomMasterTicTacToeState.init()){
    on(_prepareWebSocketServer);
    on(_closeWsServer);
    on(_newConnection);
    on(_doneHandlingNewConnection);
    on(_doneHandlingPopAfterClosingWsServer);
    on(_quitGame);
    on(_updateRoomMasterAndClientGameState);
    on(_updateOnlyRoomMasterState);
    on(_showEndGameDialog);
    on(_doneShowEndGameDialog);
    on(_markBoardSafely);
  }


  void _prepareWebSocketServer(
    PrepareWebSocketServer event,
    Emitter<RoomMasterTicTacToeState> emit,
  ) async {
    emit(state.copyWith(wsServerPreparationResponse: ResponseWrapper.loading()));

    final prepareWsServerResult = await wsService.prepareWebSocketServer(
      onClientConnected: (newWsClientHandler){
        if (_wsClientHandler != null){
          newWsClientHandler.closeConnection(null);
          return;
        }
        _wsClientHandler = newWsClientHandler
          ..addOnClientDataListener(
          onData: _handleDataFromClient,
          onError: _handleErrorFromClient,
        );
        _wsClientHandler?.sendData(
          jsonEncode(TicTacToeGameState.init().toJson())
        );
        add(const RoomMasterTicTacToeEvent.newConnection());
      }
    );

    emit(state.copyWith(wsServerPreparationResponse: prepareWsServerResult));
  }

  void _closeWsServer(
    CloseWsServer event,
    Emitter<RoomMasterTicTacToeState> emit,
  ) async {
    _quitGameTimer?.cancel();
    wsService.close();
    await _wsClientHandler?.dispose();
    _wsClientHandler = null;

    emit(state.copyWith(
      wsServerPreparationResponse: null,
      doneClosingWsServer: true,
    ));
  }

  void _doneHandlingPopAfterClosingWsServer(
    DoneHandlingPopAfterClosingWsServer event,
    Emitter<RoomMasterTicTacToeState> emit,
  ){
    emit(RoomMasterTicTacToeState.init());
  }

  void _newConnection(
    NewConnection event,
    Emitter<RoomMasterTicTacToeState> emit,
  ){
    emit(state.copyWith(
      hasConnection: true,
      gameState: TicTacToeGameState.init()
    ));
  }

  void _doneHandlingNewConnection(
    DoneHandlingNewConnection event,
    Emitter<RoomMasterTicTacToeState> emit,
  ){
    emit(state.copyWith(hasConnection: false));
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
    _quitGameTimer = Timer(const Duration(seconds: 4), (){
      add(const RoomMasterTicTacToeEvent.closeWsServer());
    });
  }

  void _handleDataFromClient(dynamic data){
    if (data is! String){
      debugPrint('qqq salah kirim tipe data dari client : ${data.runtimeType}');
      return;
    }
    if (_isGameEnded){
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
          add(const RoomMasterTicTacToeEvent.closeWsServer());
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
  bool get _isGameEnded => _endGameDialogIsShown || _serverClosed;

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
    add(RoomMasterTicTacToeEvent.updateRoomMasterAndClientGameState(
      state.copyWith(gameState: nextGameState))
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

  }
}

@Freezed()
sealed class RoomMasterTicTacToeEvent with _$RoomMasterTicTacToeEvent {
  const factory RoomMasterTicTacToeEvent.prepareWebSocketServer() = PrepareWebSocketServer;
  const factory RoomMasterTicTacToeEvent.closeWsServer() = CloseWsServer;
  const factory RoomMasterTicTacToeEvent.quitGame() = QuitGame;
  const factory RoomMasterTicTacToeEvent.newConnection() = NewConnection;
  const factory RoomMasterTicTacToeEvent.doneHandlingNewConnection() = DoneHandlingNewConnection;
  const factory RoomMasterTicTacToeEvent.doneHandlingPopAfterClosingWsServer() = DoneHandlingPopAfterClosingWsServer;
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

}

@Freezed()
class RoomMasterTicTacToeState with _$RoomMasterTicTacToeState {
  const factory RoomMasterTicTacToeState({
    required ResponseWrapper<WsServerUrl>? wsServerPreparationResponse,
    required bool hasConnection,
    required TicTacToeGameState gameState,
    required bool doneClosingWsServer,
    required EndGameDialogStatus endGameDialogStatus,
    required bool isQuittingGame,
  }) = _RoomMasterTicTacToeState;

  static RoomMasterTicTacToeState init(){
    return RoomMasterTicTacToeState(
      wsServerPreparationResponse: null,
      hasConnection: false,
      gameState: TicTacToeGameState.init(),
      doneClosingWsServer: false,
      endGameDialogStatus: EndGameDialogStatus.notShown,
      isQuittingGame: false,
    );
  }
}

typedef WsServerUrl = String;