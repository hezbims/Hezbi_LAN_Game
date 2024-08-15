import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_cell_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';

class GetTicTacToeGridStateUseCase {
  const GetTicTacToeGridStateUseCase();

  List<List<TicTacToeCellState>> call({
    required TicTacToeGameState gameState
  }){
    final ticTacToeGrid = [
      for (int row = 1 ; row <= 3 ; row++) [
        for (int col = 1 ; col <= 3 ; col++)
          TicTacToeCellState.hasNothing,
      ]
    ];

    // mark all cross cell
    for (final crossCoordinate in gameState.crossCoordinates){
      ticTacToeGrid[crossCoordinate.row][crossCoordinate.col] = TicTacToeCellState.hasCross;
    }

    // mark all cricle cell
    for (final circleCoordinate in gameState.circleCoordinates){
      ticTacToeGrid[circleCoordinate.row][circleCoordinate.col] = TicTacToeCellState.hasCircle;
    }

    return ticTacToeGrid;
  }
}