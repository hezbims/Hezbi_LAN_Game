import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

typedef IpAddress = String;

class TicTacToeWebSocketService {
  HttpServer? server;
  Future<ResponseWrapper<IpAddress>> prepareWebSocketServer({
    required void Function(dynamic) onHandlingWsClientData,
  }) async {
    try {
      final handler = webSocketHandler((WebSocketChannel websocket) {
        websocket.stream.listen(onHandlingWsClientData);
      });

      final String ipAddress = await _getIpAddress();
      const ticTacToeServerPort = 11111;

      server = await shelf_io.serve(handler, ipAddress, ticTacToeServerPort);
      return ResponseWrapper.succeed(
        "ws://${server?.address.host}:${server?.port}"
      );
    } catch(e) {
      debugPrint("qqq exception : $e");
      return ResponseWrapper.error();
    }
  }

  void close(){
    server?.close(force: true);
  }

  Future<String> _getIpAddress() async =>
      (await NetworkInfo().getWifiIP())!;
}