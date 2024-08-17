import 'dart:core';

import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/data/my_ws_connection_handler.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/i_my_ws_connection_handler.dart';
import 'package:web_socket_channel/io.dart';

class TicTacToeWsClient {
  Future<ResponseWrapper<IMyWsConnectionHandler>> connectWsServer({
    required String address,
  }) async {
    try {
      final wsChannel = IOWebSocketChannel.connect(
        Uri.parse('ws://$address'),
        pingInterval: const Duration(seconds: 4),
        connectTimeout: const Duration(seconds: 4),
      );
      await wsChannel.ready;
      return ResponseWrapper.succeed(MyWsClientHandler(wsChannel: wsChannel));
    }  catch (e) {
      // TODO : tambahkan error type
      return ResponseWrapper.error();
    }
  }
}