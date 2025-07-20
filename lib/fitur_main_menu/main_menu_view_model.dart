import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/common/data/service/player_profile_service.dart';
import 'package:hezbi_lan_game/common/domain/model/player_profile.dart';

part 'main_menu_view_model.freezed.dart';

class MainMenuViewModel extends Bloc<MainMenuEvent, MainMenuState> {
  final _playerProfileService = PlayerProfileService();

  MainMenuViewModel() : super(MainMenuState.init()){
    on(_loadProfile);
    on(_setNewProfileName);
    on(_checkIfPlayerHasProfileName);
    on(_doneShowInitialProfileNameInputDialog);

    add(const MainMenuEvent.checkPlayerHasProfileName());
  }

  Future<void> _loadProfile(
    _LoadProfile event,
    Emitter<MainMenuState> emit,
  ) async {
    final playerProfile = await _playerProfileService.getPlayerProfile();
    emit(state.copyWith(playerProfile: playerProfile));
  }

  void _setNewProfileName(
    _SetNewProfileName event,
    Emitter<MainMenuState> emit,
  ){
    _playerProfileService.setPlayerProfileName(event.name);
    add(const MainMenuEvent.loadProfile());
  }

  void _checkIfPlayerHasProfileName(
    _CheckPlayerHasProfileName event,
    Emitter<MainMenuState> emit,
  ) async {
    final playerProfile = await _playerProfileService.getPlayerProfile();
    bool mustShowDialogProfileNameInput = false;
    if (playerProfile == null){
      mustShowDialogProfileNameInput = true;
    }
    emit(state.copyWith(
      playerProfile: playerProfile,
      mustShowInitialDialogProfileNameInput: mustShowDialogProfileNameInput
    ));
  }

  void _doneShowInitialProfileNameInputDialog(
    _DoneShowInitialProfileNameInputDialog event,
    Emitter<MainMenuState> emit,
  ){
    emit(state.copyWith(mustShowInitialDialogProfileNameInput: false));
  }
}

@freezed
sealed class MainMenuEvent with _$MainMenuEvent {
  const factory MainMenuEvent.loadProfile() = _LoadProfile;
  factory MainMenuEvent.setNewProfileName(String name) = _SetNewProfileName;
  const factory MainMenuEvent.checkPlayerHasProfileName() = _CheckPlayerHasProfileName;
  const factory MainMenuEvent.doneShowInitialProfileNameInputDialog() = _DoneShowInitialProfileNameInputDialog;
}

@freezed
abstract class MainMenuState with _$MainMenuState {
  const factory MainMenuState({
    required PlayerProfile? playerProfile,
    required bool mustShowInitialDialogProfileNameInput,
  }) = _MainMenuState;

  static MainMenuState init() => const MainMenuState(
    playerProfile: null,
    mustShowInitialDialogProfileNameInput: false,
  );
}