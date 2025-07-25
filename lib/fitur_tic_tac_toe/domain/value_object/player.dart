import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/player_status.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/mark_type.dart';

part "player.freezed.dart";

@Freezed()
class Player with _$Player {
  @override
  final String id;
  @override
  final String name;
  @override
  final PlayerStatus status;
  @override
  final MarkType markType;

  Player({
    required this.id,
    required this.name,
    required this.status,
    required this.markType,
  });
}