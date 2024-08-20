
import 'package:hezbi_lan_game/common/domain/model/response_wrapper.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/data/tic_tac_toe_ws_server_service.dart';
import 'package:hezbi_lan_game/common/domain/service/i_my_ws_connection_handler.dart';

abstract class IGameWsServerService {
  Future<ResponseWrapper<IpAddress>> prepareWebSocketServer({
    required void Function(IMyWsConnectionHandler) onClientConnected,
  });

  Future<void> close();
}