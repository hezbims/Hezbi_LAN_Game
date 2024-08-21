import 'package:hezbi_lan_game/common/domain/model/response_wrapper.dart';

abstract class IGameServiceBroadcaster {
  Future<ResponseWrapper<dynamic>> registerService({
    required String roomName,
    required String roomId,
    required int currentPlayerCount,
  });
  Future<void> unregisterService();
}