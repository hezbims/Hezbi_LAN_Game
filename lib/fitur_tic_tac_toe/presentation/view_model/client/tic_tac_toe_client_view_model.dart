
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/data/tic_tac_toe_ws_client.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/i_my_ws_connection_handler.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/client_command_model.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/view_model/end_game_dialog_status.dart';

part 'tic_tac_toe_client_view_model.freezed.dart';

class TicTacToeClientViewModel extends Bloc<TicTacToeClientEvent, TicTacToeClientState> {
  final _wsClient = TicTacToeWsClient();
  final String _serverAddress;
  IMyWsConnectionHandler? _wsChannelToServer;
  
  TicTacToeClientViewModel({required String serverAddress}) :
    _serverAddress = serverAddress,
    super(TicTacToeClientState.init()){
    on(_connectToServer);
    on(_handleDataFromServer);
    on(_handleErrorFromServer);
    on(_doneShowEndGameDialog);
    on(_quitGame);

    add(const TicTacToeClientEvent.connectToServer());
  }

  void _connectToServer(
    ConnectToServer event,
    Emitter<TicTacToeClientState> emit,
  ) async {
    emit(state.copyWith(connectResponse: ResponseWrapper.loading()));
    final response = await _wsClient.connectWsServer(
      address: _serverAddress,
    );
    if (response is Succeed<IMyWsConnectionHandler>){
      _wsChannelToServer = response.data
          ..addOnClientDataListener(
            onData: (data) => add(TicTacToeClientEvent.handleDataFromServer(data)),
            onError: (error) => add(TicTacToeClientEvent.handleErrorFromServer(error)),
          );
    }
    emit(state.copyWith(connectResponse: response));
  }

  void _handleDataFromServer(
    HandleDataFromServer event,
    Emitter<TicTacToeClientState> emit,
  ){
    if (event.data is String){
      final jsonData = jsonDecode(event.data);
      final newGameState = TicTacToeGameState.fromJson(jsonData);
      // game telah berakhir, tidak lagi menerima data
      if (_isGameEnded){
        return;
      }


      var newState = state.copyWith(gameState: newGameState);
      if (newGameState.endGameStatus != null){
        newState = newState.copyWith(endGameDialogStatus: EndGameDialogStatus.mustShow);
        _wsChannelToServer?.sendData(jsonEncode(const ClientCommandModel.confirmEndGame().toJson()));
      }

      emit(newState);
    }
  }

  bool get _isGameEnded => state.gameState?.endGameStatus != null;

  void _doneShowEndGameDialog(
    DoneShowEndGameDialog event,
    Emitter<TicTacToeClientState> emit,
  ){
    emit(state.copyWith(endGameDialogStatus: EndGameDialogStatus.alreadyShown));
  }

  void _handleErrorFromServer(
    HandleErrorFromServer event,
    Emitter<TicTacToeClientState> emit,
  ){
    if (event.error is int){
      debugPrint('dapat error integer : ${event.error}');
    } else {
      debugPrint("dapat error ${event.error.runtimeType} : ${event.error}");
    }
  }

  void _quitGame(
    QuitGame event,
    Emitter<TicTacToeClientState> emit,
  ){
    final quitGameJsonString = jsonEncode(const ClientCommandModel.clientQuitGame().toJson());
    _wsChannelToServer?.sendData(quitGameJsonString);
  }

  @override
  Future<void> close() async {
    await _wsChannelToServer?.dispose();
    super.close();
  }

}

@Freezed()
sealed class TicTacToeClientEvent with _$TicTacToeClientEvent {
  const factory TicTacToeClientEvent.connectToServer() = ConnectToServer;
  const factory TicTacToeClientEvent.clickTile({required int row, required int col}) = ClickTile;
  const factory TicTacToeClientEvent.handleDataFromServer(dynamic data) = HandleDataFromServer;
  const factory TicTacToeClientEvent.handleErrorFromServer(Object error) = HandleErrorFromServer;
  const factory TicTacToeClientEvent.doneShowEndGameDialog() = DoneShowEndGameDialog;
  const factory TicTacToeClientEvent.quitGame() = QuitGame;
}

@Freezed()
class TicTacToeClientState with _$TicTacToeClientState {
  const factory TicTacToeClientState({
    required ResponseWrapper<IMyWsConnectionHandler> connectResponse,
    required TicTacToeGameState? gameState,
    required EndGameDialogStatus endGameDialogStatus,
    required bool isQuittingGame,
  }) = _TicTacToeClientState;

  factory TicTacToeClientState.init(){
    return TicTacToeClientState(
      connectResponse: ResponseWrapper.loading(),
      gameState: null,
      endGameDialogStatus: EndGameDialogStatus.notShown,
      isQuittingGame: false,
    );
  }
}