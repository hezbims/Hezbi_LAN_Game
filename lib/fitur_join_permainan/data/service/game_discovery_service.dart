import 'dart:async';
import 'dart:io';

import 'package:bonsoir/bonsoir.dart';
import 'package:hezbi_lan_game/common/data/constant/my_constants.dart';
import 'package:hezbi_lan_game/common/domain/model/my_service_attribute.dart';
import 'package:hezbi_lan_game/common/domain/model/response_wrapper.dart';
import 'package:http/http.dart';

class GameDiscoveryService {

  BonsoirDiscovery? _discovery;
  StreamSubscription<BonsoirDiscoveryEvent>? _eventSubscription;

  Future<ResponseWrapper<Object?>> start({
    required void Function(MyServiceAttribute) onServiceFound,
    required void Function(MyServiceAttribute) onServiceLost,
  }) async {
    _discovery = BonsoirDiscovery(type: MyConstants.serviceDiscoveryType);
    await _discovery!.ready;

    _eventSubscription = _discovery!.eventStream!.listen((event) async { // `eventStream` is not null as the discovery instance is "ready" !
      final service = event.service;
      if (service == null){
        return;
      }

      if (event.type == BonsoirDiscoveryEventType.discoveryServiceFound) {
        service.resolve(_discovery!.serviceResolver);
      } else if (event.type == BonsoirDiscoveryEventType.discoveryServiceResolved){
        final gameModel = MyServiceAttribute.fromJson(service.attributes);
        if (await _isServerAvailable(gameModel.address)){
          onServiceFound(gameModel);
        }
      }  else if (event.type == BonsoirDiscoveryEventType.discoveryServiceLost) {
        final gameModel = MyServiceAttribute.fromJson(service.attributes);
        if (await _isServerAvailable(gameModel.address) == false){
          onServiceLost(gameModel);
        }
      }
    });
    await _discovery!.start();

    return ResponseWrapper.succeed(null);
  }

  Future<bool> _isServerAvailable(String address) async {
    try {
      if ((await get(Uri.parse('http://$address/${MyConstants.discoveryUrlPath}'))).statusCode == HttpStatus.ok){
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<void> stop() async {
    await _discovery?.stop();
    _eventSubscription?.cancel();
  }
}