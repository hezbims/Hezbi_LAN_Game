import 'dart:async';

import 'package:hezbi_lan_game/common/domain/service/i_my_ws_connection_handler.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class MyWsClientHandler implements IMyWsConnectionHandler {
  final WebSocketChannel _wsChannel;
  StreamSubscription<dynamic>? _streamSubscription;
  MyWsClientHandler({
    required WebSocketChannel wsChannel
  }) : _wsChannel = wsChannel;

  @override
  void addOnClientDataListener({
    required void Function(dynamic data) onData, 
    required void Function(Object error) onError,
    required void Function(int? closeCode, String? closeReason) onDone,
  }) {
    _streamSubscription = _wsChannel.stream.listen(
      onData,
      onError: onError,
      onDone: (){
        onDone(_wsChannel.closeCode, _wsChannel.closeReason);
      }
    );
  }

  @override
  Future<void> closeConnection(int? closeCode) async {
    await _wsChannel.sink.close(closeCode);
  }

  @override
  void sendData(String data) {
    _wsChannel.sink.add(data);
  }

  @override
  Future<void> dispose() async {
    await _wsChannel.sink.close();
    _streamSubscription?.cancel();
    _streamSubscription = null;
  }
}