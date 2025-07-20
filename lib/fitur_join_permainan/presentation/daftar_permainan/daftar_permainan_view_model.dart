import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/common/domain/model/my_service_attribute.dart';
import 'package:hezbi_lan_game/common/domain/model/response_wrapper.dart';
import 'package:hezbi_lan_game/common/domain/utils/list_extension.dart';
import 'package:hezbi_lan_game/fitur_join_permainan/data/service/game_discovery_service.dart';

part 'daftar_permainan_view_model.freezed.dart';

class DaftarPermainanViewModel extends Bloc<DaftarPermainanEvent, DaftarPermainanState> {
  final _gameDiscoveryService = GameDiscoveryService();

  DaftarPermainanViewModel() : super(
    DaftarPermainanState.init(),
  ){
    on(_discoverGame);
    on(_addGameService);
    on(_removeGameService);

    add(const DaftarPermainanEvent.discoverGame());
  }

  void _discoverGame(
    _DiscoverGame event,
    Emitter<DaftarPermainanState> emit,
  ) async {
    emit(state.copyWith(serviceDiscoveryStartupStatus: ResponseWrapper.loading()));

    final startupStatus = await _gameDiscoveryService.start(
      onServiceFound: (service) =>
        add(DaftarPermainanEvent.addGame(service)),
      onServiceLost: (service) =>
        add(DaftarPermainanEvent.removeGame(service)),
    );

    emit(state.copyWith(serviceDiscoveryStartupStatus: startupStatus));
  }

  void _addGameService(
    _AddGame event,
    Emitter<DaftarPermainanState> emit,
  ){
    final newDiscoveredGames = state.discoveredGames.newListWithInsertOrReplace(
      newData: event.gameAttribute,
      equalCondition: (oldData) => oldData.roomId == event.gameAttribute.roomId,
    );
    emit(state.copyWith(discoveredGames: newDiscoveredGames));
  }

  void _removeGameService(
    _RemoveGame event,
    Emitter<DaftarPermainanState> emit,
  ){
    final newDiscoveredGames = state.discoveredGames.where((game) =>
      game.roomId != event.gameAttribute.roomId
    ).toList();
    emit(state.copyWith(discoveredGames: newDiscoveredGames));
  }

  @override
  Future<void> close() async {
    await _gameDiscoveryService.stop();
    super.close();
  }
}

@freezed
abstract class DaftarPermainanState with _$DaftarPermainanState {
  const factory DaftarPermainanState({
    required List<MyServiceAttribute> discoveredGames,
    required ResponseWrapper<Object?> serviceDiscoveryStartupStatus,
  }) = _DaftarPermainanState;

  static DaftarPermainanState init() =>
    DaftarPermainanState(
      discoveredGames : const [],
      serviceDiscoveryStartupStatus: ResponseWrapper.loading(),
    );
}

@freezed
sealed class DaftarPermainanEvent with _$DaftarPermainanEvent {
  const factory DaftarPermainanEvent.discoverGame() = _DiscoverGame;
  const factory DaftarPermainanEvent.addGame(MyServiceAttribute gameAttribute) = _AddGame;
  const factory DaftarPermainanEvent.removeGame(MyServiceAttribute gameAttribute) = _RemoveGame;
}