import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/data/tic_tac_toe_ws_server_service.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/view_model/room_master/room_master_tic_tac_toe_event.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/view_model/room_master/room_master_tic_tac_toe_state.dart';

class RoomMasterTicTacToeViewModel extends Bloc<RoomMasterTicTacToeEvent, RoomMasterTicTacToeState> {
  final wsService = TicTacToeWsServerService();

  RoomMasterTicTacToeViewModel() : super(RoomMasterTicTacToeState(
    wsServerUrl: ResponseWrapper.loading()
  )){
    on(_prepareWebSocketServer);
    on(_closeWsServer);

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
}