import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/common/domain/my_games.dart';
import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

typedef IpAddress = String;

class TicTacToeWsServerService {
  HttpServer? _wsServer;
  StreamSubscription<String>? _dataToClientStreamSubscription;
  StreamSubscription<int?>? _closeCodeStreamSubscription;

  Future<ResponseWrapper<IpAddress>> prepareWebSocketServer({
    required StreamController<String> dataStreamControllerToClient,
    required StreamController<int?> closeCodeStreamController,
    required void Function(StreamSink<String> toClientSink) onNewConnection,
    required void Function(dynamic) onHandlingWsClientData,
  }) async {
    try {
      final handler = webSocketHandler((WebSocketChannel websocket) {
        _dataToClientStreamSubscription = dataStreamControllerToClient.stream.listen(
          (data) => websocket.sink.add(data)
        );
        _closeCodeStreamSubscription = closeCodeStreamController.stream.listen(
          (data) => websocket.sink.close(data),
        );
        onNewConnection(dataStreamControllerToClient.sink);
        websocket.stream.listen(onHandlingWsClientData);
      });

      final String ipAddress = await _getIpAddress();

      _wsServer = await shelf_io.serve(
          handler,
          ipAddress,
          MyGames.ticTacToe.port
      );
      return ResponseWrapper.succeed(
        "${_wsServer?.address.host}:${_wsServer?.port}"
      );
    } catch(e) {
      debugPrint("qqq exception : $e");
      return ResponseWrapper.error();
    }
  }

  void close(){
    _dataToClientStreamSubscription?.cancel();
    _dataToClientStreamSubscription = null;
    _closeCodeStreamSubscription?.cancel();
    _closeCodeStreamSubscription = null;
    _wsServer?.close(force: true);
  }

  Future<String> _getIpAddress() async =>
      (await NetworkInfo().getWifiIP())!;
}