import 'dart:async';

import 'package:bonsoir/bonsoir.dart';
import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/common/data/constant/my_constants.dart';
import 'package:hezbi_lan_game/common/domain/model/my_service_attribute.dart';
import 'package:hezbi_lan_game/common/domain/model/response_wrapper.dart';

class GameDiscoveryService {

  BonsoirDiscovery? _discovery;
  StreamSubscription<BonsoirDiscoveryEvent>? _eventSubscription;

  Future<ResponseWrapper<Object?>> start({
    required void Function(MyServiceAttribute) onServiceFound,
    required void Function(MyServiceAttribute) onServiceLost,
  }) async {
    _discovery = BonsoirDiscovery(type: MyConstants.serviceDiscoveryType);
    await _discovery!.ready;

    _eventSubscription = _discovery!.eventStream!.listen((event) { // `eventStream` is not null as the discovery instance is "ready" !
      final service = event.service;
      if (service == null){
        return;
      }

      if (event.type == BonsoirDiscoveryEventType.discoveryServiceFound) {
        event.service!.resolve(_discovery!.serviceResolver);
      } else if (event.type == BonsoirDiscoveryEventType.discoveryServiceResolved){
        onServiceFound(MyServiceAttribute.fromJson(service.attributes));
      }  else if (event.type == BonsoirDiscoveryEventType.discoveryServiceLost) {
        onServiceLost(MyServiceAttribute.fromJson(service.attributes));
      }
    });
    await _discovery!.start();

    return ResponseWrapper.succeed(null);
  }

  Future<void> stop() async {
    await _discovery?.stop();
    _eventSubscription?.cancel();
  }
}