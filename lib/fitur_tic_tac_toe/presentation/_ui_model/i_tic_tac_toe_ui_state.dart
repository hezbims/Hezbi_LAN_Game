import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';

abstract class ITicTacToeUiState {
  TicTacToeGameState getGameState();
}