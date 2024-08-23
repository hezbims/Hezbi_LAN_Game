import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_cell_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/utils/tic_tac_toe_ui_utils.dart';

class TicTacToeCell extends StatelessWidget {
  final double cellSize;
  final TicTacToeCellState curCellState;
  final void Function() onClickCell;
  final bool isMovedCell;

  const TicTacToeCell({super.key,
    required this.cellSize,
    required this.onClickCell,
    required this.curCellState,
    required this.isMovedCell,
  });

  @override
  Widget build(BuildContext context) {
    return TableCell(
        child: InkWell(
          onTap: onClickCell,
          child: SizedBox(
            height: cellSize,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 750),
              switchInCurve: Curves.bounceOut,
              switchOutCurve: Curves.easeInCubic,
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: Icon(
                TicTacToeUiUtils.findIconBasedOnCellState(curCellState,),
                color: TicTacToeUiUtils.findColorBasedOnCellState(
                  curCellState: curCellState,
                  isCellWillBeMovedInNextTurn: isMovedCell,
                ),
                size: cellSize - 48,
                key: ValueKey(curCellState),
              ),
            ),
          ),
        )
    );
  }
}