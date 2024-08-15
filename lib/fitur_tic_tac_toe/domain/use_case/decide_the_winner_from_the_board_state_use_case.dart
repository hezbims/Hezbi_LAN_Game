import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_cell_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/use_case/get_tic_tac_toe_grid_state_use_case.dart';

class DecideTheWinnerFromTheBoardStateUseCase {
  final _getTicTacToeGridState = const GetTicTacToeGridStateUseCase();
  final _validationDirections = _Direction
      .getAllTicTacToeValidationDirections();
  
  TicTacToeEndGameStatus? call({required TicTacToeGameState gameState}){
    final gridState = _getTicTacToeGridState(gameState: gameState);

    for (int row = 0 ; row < 3 ; row++){
      for (int col = 0 ; col < 3 ; col++){
        if (_isCellHasAWinnerForAnyDirections(
            row: row,
            col: col,
            gridState: gridState,
        )){
          return switch(gridState[row][col]){
            TicTacToeCellState.hasCross =>
              TicTacToeEndGameStatus.roomMasterNormalWin,
            TicTacToeCellState.hasCircle =>
              TicTacToeEndGameStatus.clientNormalWin,
            TicTacToeCellState.hasNothing =>
              throw Exception('Kesalahan program')
          };
        }
      }
    }
    return null;
  }
  
  bool _isCellHasAWinnerForAnyDirections({
    required int row,
    required int col,
    required _GridState gridState,
  }){
    for (final validationDirection in _validationDirections){
      if (_isCurrentCellHasAWinner(
          row: row,
          col: col,
          direction: validationDirection,
          gridState: gridState)
      ){
        return true;
      }
    }
    return false;
  }
  
  bool _isCurrentCellHasAWinner({
    required int row,
    required int col,
    required _Direction direction,
    required _GridState gridState,
  }){
    final lastRow = row - 2 * direction.up;
    final lastCol = col + 2 * direction.right;
    if (lastCol.isOutOfBound() || lastRow.isOutOfBound()){
      return false;
    }
    
    if ([
      gridState[row][col],
      gridState[row - direction.up][col + direction.right],
      gridState[row - 2 * direction.up][col + 2 * direction.right],
    ].allContentsIsMarkedSame()){
      return true;
    }
    return false;
  }
  
  
}

class _Direction {
  final int up;
  final int right;
  const _Direction({required this.up, required this.right});
  
  static List<_Direction> getAllTicTacToeValidationDirections(){
    return const [
      _Direction(up: 1, right: 0),  // ⬆️
      _Direction(up: 1, right: 1),  // ↗️
      _Direction(up: 0, right: 1),  // ➡️
      _Direction(up: -1, right: 1), // ↘️
    ];
  }
}

extension _B on List<TicTacToeCellState> {
  bool allContentsIsMarkedSame(){
    return every((content) => content == first) &&
      (first == TicTacToeCellState.hasCircle ||
      first == TicTacToeCellState.hasCross);
  }
}

extension _C on int {
  bool isOutOfBound([int ticTacToeBoardSize = 2]){
    return this < 0 || this > ticTacToeBoardSize;
  }
}

typedef _GridState = List<List<TicTacToeCellState>>;