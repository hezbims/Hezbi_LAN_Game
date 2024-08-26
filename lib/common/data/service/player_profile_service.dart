import 'dart:convert';

import 'package:hezbi_lan_game/common/domain/model/player_profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlayerProfileService {
  static const _playerProfileKey = 'player-profile';
  SharedPreferences? _sharedPreferences;

  Future<bool> setPlayerProfileName(String newPlayerName) async {
    try {
      final prevPlayerProfile = await getPlayerProfile();
      late PlayerProfile nextPlayerProfile;
      if (prevPlayerProfile == null){
        nextPlayerProfile = PlayerProfile(name: newPlayerName);
      } else {
        nextPlayerProfile = prevPlayerProfile.copyWith(name: newPlayerName);
      }

      final result = await _sharedPreferences!.setString(
        _playerProfileKey,
        jsonEncode(nextPlayerProfile.toJson()),
      );

      return result;
    } catch (e) {
      return false;
    }
  }

  Future<PlayerProfile?> getPlayerProfile() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    final jsonString = _sharedPreferences!.getString(_playerProfileKey);
    if (jsonString == null){
      return null;
    }
    return PlayerProfile.fromJson(jsonDecode(jsonString));
  }
}