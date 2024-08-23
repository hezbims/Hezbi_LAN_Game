import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_cell_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_common_component/tic_tac_toe_icons.dart';

abstract class TicTacToeUiUtils {
  static IconData findIconBasedOnCellState({
    required TicTacToeCellState curCellState,
    required TicTacToeCellState prevCellState,
  }){
    return switch (curCellState){
      TicTacToeCellState.hasCross =>
        TicTacToeIcons.roomMasterMark,
      TicTacToeCellState.hasCircle =>
        TicTacToeIcons.clientMark,
      TicTacToeCellState.hasNothing =>
        prevCellState == TicTacToeCellState.hasCircle ?
          TicTacToeIcons.clientMark :
          TicTacToeIcons.roomMasterMark,
    };
  }

  static Color findColorBasedOnCellState({
    required TicTacToeCellState curCellState,
    required TicTacToeCellState prevCellState,
  }){
    switch (curCellState){
      case TicTacToeCellState.hasCross:
        return Colors.red;
      case TicTacToeCellState.hasCircle:
        return Colors.blue;
      case TicTacToeCellState.hasNothing:
        return prevCellState == TicTacToeCellState.hasCircle ?
          Colors.blue : Colors.red;
    }
  }
}