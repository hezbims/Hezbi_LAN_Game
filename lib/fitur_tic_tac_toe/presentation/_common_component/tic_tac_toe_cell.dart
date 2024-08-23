import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_cell_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/utils/tic_tac_toe_ui_utils.dart';

class TicTacToeCell extends StatelessWidget {
  final double cellSize;
  double get iconSize => cellSize - 48;
  final TicTacToeCellState curCellState;
  final void Function() onClickCell;
  final Animation<double>? iconAnimation;
  bool get isMovedCell => iconAnimation != null;

  const TicTacToeCell({super.key,
    required this.cellSize,
    required this.onClickCell,
    required this.curCellState,
    required this.iconAnimation,
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
              child: !isMovedCell ?
                getIcon(iconSize):
                AnimatedBuilder(
                    animation: iconAnimation!,
                    builder: (context, child){
                      return getIcon(iconSize);
                    }
                ),
            ),
          ),
        )
    );
  }

  Widget getIcon(double iconSize){
    return Icon(
      TicTacToeUiUtils.findIconBasedOnCellState(curCellState,),
      color: TicTacToeUiUtils.findColorBasedOnCellState(
        curCellState: curCellState,
        isCellWillBeMovedInNextTurn: isMovedCell,
      ),
      size: iconAnimation?.value ?? iconSize,
      key: ValueKey(curCellState),
    );
  }
}