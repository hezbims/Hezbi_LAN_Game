import 'package:hezbi_lan_game/common/domain/model/response_wrapper.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_cell_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/use_case/get_tic_tac_toe_grid_state_use_case.dart';

class PlayerMarkTheBoardUseCase {
  final getTicTacToeGridState = const GetTicTacToeGridStateUseCase();

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
    final ticTacToeGrid = getTicTacToeGridState(gameState: curGameState);

    if (ticTacToeGrid[row][col] != TicTacToeCellState.hasNothing){
      return true;
    }
    return false;
  }
}