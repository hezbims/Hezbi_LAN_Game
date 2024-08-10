import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/data/tic_tac_toe_ws_server_service.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/i_my_ws_connection_handler.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';

part 'room_master_tic_tac_toe_view_model.freezed.dart';

class RoomMasterTicTacToeViewModel extends Bloc<RoomMasterTicTacToeEvent, RoomMasterTicTacToeState> {
  final wsService = TicTacToeWsServerService();
  IMyWsConnectionHandler? _wsClientHandler;

  RoomMasterTicTacToeViewModel() : super(RoomMasterTicTacToeState.init()){
    on(_prepareWebSocketServer);
    on(_closeWsServer);
    on(_newConnection);
    on(_doneHandlingNewConnection);
    on(_doneHandlingPopAfterClosingWsServer);
  }


  void _prepareWebSocketServer(
    PrepareWebSocketServer event,
    Emitter<RoomMasterTicTacToeState> emit,
  ) async {
    emit(state.copyWith(wsServerPreparationResponse: ResponseWrapper.loading()));

    final prepareWsServerResult = await wsService.prepareWebSocketServer(
      onClientConnected: (newWsClientHandler){
        if (_wsClientHandler != null){
          newWsClientHandler.closeConnectionToClient(null);
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
  ){
    wsService.close();
    _wsClientHandler?.dispose();
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
    emit(state.copyWith(
      doneClosingWsServer: false,
      hasConnection: false,
    ));
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

  void _handleDataFromClient(dynamic data){
    if (data is! String){
      debugPrint('ws client data type : ${data.runtimeType}');
      return;
    }
  }

  void _handleErrorFromClient(Object error){

  }
}

@Freezed()
sealed class RoomMasterTicTacToeEvent with _$RoomMasterTicTacToeEvent {
  const factory RoomMasterTicTacToeEvent.prepareWebSocketServer() = PrepareWebSocketServer;
  const factory RoomMasterTicTacToeEvent.closeWsServer() = CloseWsServer;
  const factory RoomMasterTicTacToeEvent.newConnection() = NewConnection;
  const factory RoomMasterTicTacToeEvent.doneHandlingNewConnection() = DoneHandlingNewConnection;
  const factory RoomMasterTicTacToeEvent.doneHandlingPopAfterClosingWsServer() = DoneHandlingPopAfterClosingWsServer;
}

@Freezed()
class RoomMasterTicTacToeState with _$RoomMasterTicTacToeState {
  const factory RoomMasterTicTacToeState({
    required ResponseWrapper<WsServerUrl>? wsServerPreparationResponse,
    required bool hasConnection,
    required TicTacToeGameState gameState,
    required bool doneClosingWsServer,
  }) = _RoomMasterTicTacToeState;

  static RoomMasterTicTacToeState init(){
    return RoomMasterTicTacToeState(
      wsServerPreparationResponse: null,
      hasConnection: false,
      gameState: TicTacToeGameState.init(),
      doneClosingWsServer: false,
    );
  }
}

typedef WsServerUrl = String;