import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/player_status.dart';

part "player.freezed.dart";

@Freezed()
class Player with _$Player {
  final String id;
  final String name;
  final PlayerStatus status;

  Player({
    required this.id,
    required this.name,
    required this.status,
  });
}