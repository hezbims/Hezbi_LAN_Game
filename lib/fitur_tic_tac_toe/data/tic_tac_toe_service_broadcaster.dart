import 'package:bonsoir/bonsoir.dart';
import 'package:hezbi_lan_game/common/domain/service/i_game_service_broadcaster.dart';
import 'package:hezbi_lan_game/common/domain/model/my_game_type.dart';
import 'package:hezbi_lan_game/common/domain/model/response_wrapper.dart';

class TicTacToeServiceBroadcaster implements IGameServiceBroadcaster {

  BonsoirBroadcast? _broadcast;

  @override
  Future<ResponseWrapper<dynamic>> registerService({
    required String roomName
  }) async {
    try {
      BonsoirService service = BonsoirService(
        name: 'Tic Tac Toe',
        type: MyGameType.ticTacToe.serviceName,
        port: 0,
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