import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_cell_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/utils/tic_tac_toe_ui_utils.dart';

class TicTacToeCell extends AnimatedWidget {
  final double cellSize;
  final TicTacToeCellState curCellState;
  final TicTacToeCellState prevCellState;
  final void Function() onClickCell;

  const TicTacToeCell({super.key,
    required this.cellSize,
    required this.onClickCell,
    required this.curCellState,
    required this.prevCellState,
    required Animation<double> animation,
  }) : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;

    return TableCell(
        child: InkWell(
          onTap: onClickCell,
          child: SizedBox(
            height: cellSize,
            child: Icon(
              TicTacToeUiUtils.findIconBasedOnCellState(
                curCellState: curCellState,
                prevCellState: prevCellState,
              ),
              color: TicTacToeUiUtils.findColorBasedOnCellState(
                curCellState: curCellState,
                prevCellState: prevCellState,
              ),
              size: animation.value,
            ),
          ),
        )
    );
  }
}