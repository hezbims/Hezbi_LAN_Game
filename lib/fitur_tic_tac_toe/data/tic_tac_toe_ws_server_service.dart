import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hezbi_lan_game/common/data/constant/my_constants.dart';
import 'package:hezbi_lan_game/common/domain/model/response_wrapper.dart';
import 'package:hezbi_lan_game/common/domain/service/i_game_ws_server_service.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/data/my_ws_connection_handler.dart';
import 'package:hezbi_lan_game/common/domain/service/i_my_ws_connection_handler.dart';
import 'package:shelf/shelf.dart';
// ignore: depend_on_referenced_packages
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

typedef IpAddress = String;

class TicTacToeWsServerService implements IGameWsServerService {
  HttpServer? _wsServer;

  @override
  Future<ResponseWrapper<IpAddress>> prepareWebSocketServer({
    required void Function(IMyWsConnectionHandler) onClientConnected,
  }) async {
    try {

      final wsHandler = webSocketHandler((WebSocketChannel websocket) {
        onClientConnected(MyWsClientHandler(wsChannel: websocket));
      }, pingInterval: const Duration(milliseconds: 2500));
      final handler = const Pipeline().addMiddleware(logRequests()).addHandler((request){
        if (request.url.path == MyConstants.discoveryUrlPath){
          return Response(HttpStatus.ok);
        } else if (request.url.path == MyConstants.websocketUrlPath){
          return wsHandler(request);
        } else {
          throw Exception();
        }
      });

      final String? ipAddress = await _getHotspotOrWifiIpv4Address();
      if (ipAddress == null){
        return ResponseWrapper.error();
      }

      _wsServer = await shelf_io.serve(
          handler,
          ipAddress,
          0,
      );

      return ResponseWrapper.succeed(
        "${_wsServer?.address.host}:${_wsServer?.port}"
      );
    } catch(e) {
      debugPrint("qqq exception : $e");
      return ResponseWrapper.error();
    }
  }

  @override
  Future<void> close() async {
    await _wsServer?.close(force: true);
  }

  static const _networkPlatformChannel = MethodChannel("networking");
  Future<String?> _getHotspotOrWifiIpv4Address() =>
    _networkPlatformChannel.invokeMethod("get-lan-ipv4-address");
}