import 'package:hezbi_lan_game/common/domain/model/response_wrapper.dart';
import 'package:hezbi_lan_game/common/domain/service/i_game_service_broadcaster.dart';
import 'package:hezbi_lan_game/common/domain/service/i_game_ws_server_service.dart';
import 'package:hezbi_lan_game/common/domain/service/i_my_ws_connection_handler.dart';
import 'package:uuid/v1.dart';

class PrepareGameServerUseCase {
  final IGameServiceBroadcaster serviceBroadcaster;
  final IGameWsServerService wsServerService;
  final String roomId = const UuidV1().generate();
  PrepareGameServerUseCase({
    required this.wsServerService,
    required this.serviceBroadcaster
  });

  Future<ResponseWrapper<String>> call({
    required String roomName,
    required int currentPlayerCount,
    required void Function(IMyWsConnectionHandler) onClientConnected
  }) async {
    final wsServerPreparationResponse = await wsServerService
        .prepareWebSocketServer(onClientConnected: onClientConnected);
    ResponseWrapper<dynamic> serviceBroadcastPreparationResponse = ResponseWrapper.error();
    if (wsServerPreparationResponse is Succeed<String>) {
      serviceBroadcastPreparationResponse = await serviceBroadcaster
          .registerService(
          roomId: roomId,
          roomName: roomName,
          currentPlayerCount: currentPlayerCount,
          roomAddress: (wsServerPreparationResponse as Succeed).data
      );
    }

    if (serviceBroadcastPreparationResponse is Error){
      await serviceBroadcaster.unregisterService();
      await wsServerService.close();
      return ResponseWrapper.error();
    }
    return wsServerPreparationResponse;
  }
}