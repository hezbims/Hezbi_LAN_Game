import 'package:bonsoir/bonsoir.dart';
import 'package:hezbi_lan_game/common/data/constant/my_constants.dart';
import 'package:hezbi_lan_game/common/domain/service/i_game_service_broadcaster.dart';
import 'package:hezbi_lan_game/common/domain/model/response_wrapper.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_service_attribute.dart';
import 'package:uuid/v1.dart';

class TicTacToeServiceBroadcaster implements IGameServiceBroadcaster {

  BonsoirBroadcast? _broadcast;
  final _roomId = const UuidV1().generate();

  @override
  Future<ResponseWrapper<dynamic>> registerService({
    required String roomName,
    required int currentPlayerCount,
    required String roomAddress,
  }) async {
    try {
      final serviceAttribute = TicTacToeServiceAttribute(
        roomName: roomName,
        currentPlayer: currentPlayerCount,
        roomId: _roomId,
        address: roomAddress,
      );

      final service = BonsoirService.ignoreNorms(
        name: _roomId,
        type: MyConstants.serviceDiscoveryType,
        port: 11111,
        attributes:  serviceAttribute.toJson(),
      );

      _broadcast = BonsoirBroadcast(service: service);
      await _broadcast?.ready;
      await _broadcast?.start();

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