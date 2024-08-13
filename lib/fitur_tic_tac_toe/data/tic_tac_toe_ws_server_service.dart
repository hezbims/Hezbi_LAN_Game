import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/common/domain/my_games.dart';
import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/data/my_ws_connection_handler.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/i_my_ws_connection_handler.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

typedef IpAddress = String;

class TicTacToeWsServerService {
  HttpServer? _wsServer;

  Future<ResponseWrapper<IpAddress>> prepareWebSocketServer({
    required void Function(IMyWsConnectionHandler) onClientConnected,
  }) async {
    try {
      final handler = webSocketHandler((WebSocketChannel websocket) {
        onClientConnected(MyWsClientHandler(wsChannel: websocket));
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
    _wsServer?.close(force: true);
  }

  Future<String> _getIpAddress() async =>
      (await NetworkInfo().getWifiIP())!;
}