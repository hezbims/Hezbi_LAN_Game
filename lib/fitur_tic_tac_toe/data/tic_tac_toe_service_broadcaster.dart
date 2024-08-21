import 'package:bonsoir/bonsoir.dart';
import 'package:hezbi_lan_game/common/data/constant/my_constants.dart';
import 'package:hezbi_lan_game/common/domain/service/i_game_service_broadcaster.dart';
import 'package:hezbi_lan_game/common/domain/model/response_wrapper.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_service_attribute.dart';

class TicTacToeServiceBroadcaster implements IGameServiceBroadcaster {

  BonsoirBroadcast? _broadcast;

  @override
  Future<ResponseWrapper<dynamic>> registerService({
    required String roomName,
    required String roomId,
    required int currentPlayerCount,
  }) async {
    try {
      final serviceAttribute = TicTacToeServiceAttribute(
        roomName: roomName,
        currentPlayer: currentPlayerCount,
        roomId: roomId,
      );

      final service = BonsoirService.ignoreNorms(
        name: roomId,
        type: MyConstants.serviceDiscoveryType,
        port: 0,
        attributes:  serviceAttribute.toJson(),
      );

      _broadcast = BonsoirBroadcast(service: service);
      await _broadcast?.ready;

      return ResponseWrapper.succeed(null);
    } catch (e) {
      return ResponseWrapper.error();
    }
  }

  @override
  Future<void> unregisterService() async {
    await _broadcast?.stop();
  }
}