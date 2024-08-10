import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/common/domain/my_games.dart';
import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/ws_close_code.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

typedef IpAddress = String;

class TicTacToeWsServerService {
  HttpServer? _wsServer;
  StreamSubscription<String>? _dataToClientStreamSubscription;

  Future<ResponseWrapper<IpAddress>> prepareWebSocketServer({
    required StreamController<String> dataStreamControllerToClient,
    required void Function(StreamSink<String> toClientSink) onNewConnection,
    required void Function(dynamic) onHandlingWsClientData,
  }) async {
    try {
      final handler = webSocketHandler((WebSocketChannel websocket) {
        _dataToClientStreamSubscription = dataStreamControllerToClient.stream.listen(
          (data) => websocket.sink.add(data)
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
    _wsServer?.close(force: true);
  }

  Future<String> _getIpAddress() async =>
      (await NetworkInfo().getWifiIP())!;
}