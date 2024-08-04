import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/data/tic_tac_toe_ws_server_service.dart';

part 'room_master_tic_tac_toe_view_model.freezed.dart';

class RoomMasterTicTacToeViewModel extends Bloc<RoomMasterTicTacToeEvent, RoomMasterTicTacToeState> {
  final wsService = TicTacToeWsServerService();

  RoomMasterTicTacToeViewModel() : super(RoomMasterTicTacToeState(
    wsServerUrl: ResponseWrapper.loading(),
    hasConnection: false,
  )){
    on(_prepareWebSocketServer);
    on(_closeWsServer);
    on(_newConnection);
    on(_doneHandlingNewConnection);

    add(const RoomMasterTicTacToeEvent.prepareWebSocketServer());
  }


  @override
  Future<void> close() async {
    wsService.close();
    super.close();
  }

  void _prepareWebSocketServer(
    PrepareWebSocketServer event,
    Emitter<RoomMasterTicTacToeState> emit,
  ) async {
    emit(state.copyWith(wsServerUrl: ResponseWrapper.loading()));

    final prepareWsServerResult = await wsService.prepareWebSocketServer(
      onNewConnection: (){
        add(const RoomMasterTicTacToeEvent.newConnection());
      },
      onHandlingWsClientData: (data){
        if (data is String){

        } else {
          debugPrint('ws client data type : ${data.runtimeType}');
        }
      }
    );

    prepareWsServerResult.when(
      succeed: (wsServerUrl) => debugPrint('sukses membangun ws server : $wsServerUrl'),
      loading: () => throw Exception(''),
      error: (message) => debugPrint("gagal membangun ws server : ${message ?? "Unknown error"}"),
    );

    emit(state.copyWith(wsServerUrl: prepareWsServerResult));
  }

  void _closeWsServer(
    CloseWsServer event,
    Emitter<RoomMasterTicTacToeState> emit,
  ){
    wsService.close();
  }

  void _newConnection(
    NewConnection event,
    Emitter<RoomMasterTicTacToeState> emit,
  ){
    emit(state.copyWith(hasConnection: true));
  }

  void _doneHandlingNewConnection(
    DoneHandlingNewConnection event,
    Emitter<RoomMasterTicTacToeState> emit,
  ){
    emit(state.copyWith(hasConnection: false));
  }
}

@Freezed()
sealed class RoomMasterTicTacToeEvent with _$RoomMasterTicTacToeEvent {
  const factory RoomMasterTicTacToeEvent.prepareWebSocketServer() = PrepareWebSocketServer;
  const factory RoomMasterTicTacToeEvent.closeWsServer() = CloseWsServer;
  const factory RoomMasterTicTacToeEvent.newConnection() = NewConnection;
  const factory RoomMasterTicTacToeEvent.doneHandlingNewConnection() = DoneHandlingNewConnection;
}

@Freezed()
class RoomMasterTicTacToeState with _$RoomMasterTicTacToeState {
  const factory RoomMasterTicTacToeState({
    required ResponseWrapper<String> wsServerUrl,
    required bool hasConnection,
  }) = _RoomMasterTicTacToeState;
}