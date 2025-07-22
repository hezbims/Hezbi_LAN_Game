import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/tic_tac_toe_game_state_v2.dart';

class BeforeAfterModel {
  final TicTacToeGameStateV2 before;
  final TicTacToeGameStateV2 after;

  BeforeAfterModel({
    required this.before,
    required this.after,
  });
}