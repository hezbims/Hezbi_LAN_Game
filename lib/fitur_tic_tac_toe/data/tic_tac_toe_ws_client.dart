import 'dart:core';

import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class TicTacToeWsClient {
  WebSocketChannel? _wsChannel;

  Future<ResponseWrapper<dynamic>> connectWsServer({
    required String address,
    required void Function(dynamic data) handleDataFromServer,
  }) async {
    try {
      _wsChannel = WebSocketChannel.connect(
        Uri.parse('ws://$address'),
      );
      _wsChannel?.stream.listen(handleDataFromServer);
      await _wsChannel?.ready;
      return ResponseWrapper.succeed(null);
    }  catch (e) {
      return ResponseWrapper.error(message:  'Gagal terhubung ke room master');
    }
  }

  void dispose(){
    _wsChannel?.sink.close();
  }
}