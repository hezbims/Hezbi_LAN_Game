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
  HttpServer? server;
  Future<ResponseWrapper<IpAddress>> prepareWebSocketServer({
    required void Function() onNewConnection,
    required void Function(dynamic) onHandlingWsClientData,
  }) async {
    try {
      final handler = webSocketHandler((WebSocketChannel websocket) {
        onNewConnection();
        websocket.stream.listen(onHandlingWsClientData);
      });

      final String ipAddress = await _getIpAddress();

      server = await shelf_io.serve(
          handler,
          ipAddress,
          MyGames.ticTacToe.port
      );
      return ResponseWrapper.succeed(
        "${server?.address.host}:${server?.port}"
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