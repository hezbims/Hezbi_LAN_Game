import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';

class PlayerMarkTheBoardUseCase {
  // Room master adalah cross dan client adalah circle
  ResponseWrapper<TicTacToeGameState> call({
    required int rowMarked,
    required int colMarked,
    required bool isClientAction,
    required TicTacToeGameState curGameState,
  }){
    if (
      isClientAction == curGameState.isRoomMasterTurn ||
      _isCellOccupied(
        row: rowMarked,
        col: colMarked,
        curGameState: curGameState
      )
    ){
      return ResponseWrapper.error();
    }

    var currentPlayerMarks = isClientAction ?
      curGameState.circleCoordinates : curGameState.crossCoordinates;

    currentPlayerMarks = [...currentPlayerMarks, Coordinate(row: rowMarked, col: colMarked)];
    if (currentPlayerMarks.length > 3){
      currentPlayerMarks = currentPlayerMarks.sublist(1);
    }

    var nextState = isClientAction ?
      curGameState.copyWith(circleCoordinates: currentPlayerMarks) :
      curGameState.copyWith(crossCoordinates: currentPlayerMarks);
    nextState = nextState.copyWith(isRoomMasterTurn: isClientAction);

    return ResponseWrapper.succeed(nextState);
  }

  bool _isCellOccupied({
    required int row,
    required int col,
    required TicTacToeGameState curGameState,
  }){
    final ticTacToeGrid = [
      for (int row = 1 ; row <= 3 ; row++) [
        for (int col = 1 ; col <= 3 ; col++)
          _TicTacToeCellState.nothing,
      ]
    ];

    // mark all cross cell
    for (final crossCoordinate in curGameState.crossCoordinates){
      ticTacToeGrid[crossCoordinate.row][crossCoordinate.col] = _TicTacToeCellState.hasCross;
    }

    // mark all cricle cell
    for (final circleCoordinate in curGameState.circleCoordinates){
      ticTacToeGrid[circleCoordinate.row][circleCoordinate.col] = _TicTacToeCellState.hasCircle;
    }

    if (ticTacToeGrid[row][col] != _TicTacToeCellState.nothing){
      return true;
    }
    return false;
  }
}

enum _TicTacToeCellState {
  hasCross, hasCircle, nothing
}