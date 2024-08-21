import 'package:bonsoir/bonsoir.dart';
import 'package:hezbi_lan_game/common/data/constant/my_constants.dart';
import 'package:hezbi_lan_game/common/domain/model/my_service_attribute.dart';
import 'package:hezbi_lan_game/common/domain/model/response_wrapper.dart';

class GameDiscoveryService {

  BonsoirDiscovery? _discovery;

  Future<ResponseWrapper<Object?>> start({
    required void Function(MyServiceAttribute) onServiceFound,
    required void Function(MyServiceAttribute) onServiceLost,
  }) async {
    _discovery = BonsoirDiscovery(type: MyConstants.serviceDiscoveryType);
    await _discovery!.ready;

    _discovery!.eventStream!.listen((event) { // `eventStream` is not null as the discovery instance is "ready" !
      final service = event.service;
      if (service == null){
        return;
      }

      if (event.type == BonsoirDiscoveryEventType.discoveryServiceFound) {
        onServiceFound(MyServiceAttribute.fromJson(service.attributes));
      }  else if (event.type == BonsoirDiscoveryEventType.discoveryServiceLost) {
        onServiceLost(MyServiceAttribute.fromJson(service.attributes));
      }
    });

    return ResponseWrapper.succeed(null);
  }

  Future<void> stop() async {
    await _discovery?.stop();
  }
}