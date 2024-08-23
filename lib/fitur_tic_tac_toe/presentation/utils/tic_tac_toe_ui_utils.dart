import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_cell_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_common_component/tic_tac_toe_icons.dart';

abstract class TicTacToeUiUtils {
  static IconData? findIconBasedOnCellState(TicTacToeCellState curCellState){
    return switch (curCellState){
      TicTacToeCellState.hasCross =>
        TicTacToeIcons.roomMasterMark,
      TicTacToeCellState.hasCircle =>
        TicTacToeIcons.clientMark,
      TicTacToeCellState.hasNothing =>
        null,
    };
  }

  static Color? findColorBasedOnCellState({
    required TicTacToeCellState curCellState,
    required bool isCellWillBeMovedInNextTurn,
  }){
    switch (curCellState){
      case TicTacToeCellState.hasCross:
        return isCellWillBeMovedInNextTurn ? Colors.red[300] : Colors.red[800];
      case TicTacToeCellState.hasCircle:
        return isCellWillBeMovedInNextTurn ? Colors.blue[300] : Colors.blue[800];
      case TicTacToeCellState.hasNothing:
        return null;
    }
  }
}