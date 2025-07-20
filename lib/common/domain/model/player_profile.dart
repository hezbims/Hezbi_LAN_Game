import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_profile.freezed.dart';
part 'player_profile.g.dart';

@freezed
abstract class PlayerProfile with _$PlayerProfile {
  const factory PlayerProfile({
    required String name
  }) = _PlayerPofile;

  factory PlayerProfile.fromJson(Map<String, dynamic> json) => _$PlayerProfileFromJson(json);
}