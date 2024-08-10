import 'dart:core';

import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/data/my_ws_connection_handler.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/i_my_ws_connection_handler.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class TicTacToeWsClient {
  Future<ResponseWrapper<IMyWsConnectionHandler>> connectWsServer({
    required String address,
  }) async {
    try {
      final wsChannel = WebSocketChannel.connect(
        Uri.parse('ws://$address'),
      );
      await wsChannel.ready;
      return ResponseWrapper.succeed(MyWsClientHandler(wsChannel: wsChannel));
    }  catch (e) {
      return ResponseWrapper.error(message:  'Gagal terhubung ke room master');
    }
  }
}