import 'package:hezbi_lan_game/common/domain/model/response_wrapper.dart';
import 'package:hezbi_lan_game/common/domain/service/i_game_service_broadcaster.dart';
import 'package:hezbi_lan_game/common/domain/service/i_game_ws_server_service.dart';
import 'package:hezbi_lan_game/common/domain/service/i_my_ws_connection_handler.dart';

class PrepareGameServerUseCase {
  final IGameServiceBroadcaster serviceBroadcaster;
  final IGameWsServerService wsServerService;
  PrepareGameServerUseCase({
    required this.wsServerService,
    required this.serviceBroadcaster
  });

  Future<ResponseWrapper<String>> call({
    required String roomName,
    required void Function(IMyWsConnectionHandler) onClientConnected
  }) async {
    final wsServerPreparationResponse = await wsServerService
        .prepareWebSocketServer(onClientConnected: onClientConnected);
    final serviceBroadcastPreparationResponse = await serviceBroadcaster
        .registerService(roomName: roomName);

    if (serviceBroadcastPreparationResponse is Error || wsServerPreparationResponse is Error){
      await serviceBroadcaster.unregisterService();
      await wsServerService.close();
      return ResponseWrapper.error();
    }
    return wsServerPreparationResponse;
  }
}