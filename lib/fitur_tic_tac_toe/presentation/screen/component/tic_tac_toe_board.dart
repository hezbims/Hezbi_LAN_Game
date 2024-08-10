import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/screen/component/quit_game_confirm_dialog.dart';

class TicTacToeBoard extends StatelessWidget {
  final void Function({required int row, required int col}) onClickCell;
  final void Function() onQuitConfirmed;
  final TicTacToeGameState gameState;

  const TicTacToeBoard({
    required this.onClickCell,
    required this.onQuitConfirmed,
    required this.gameState,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final tableSize = min(screenSize.width, screenSize.height) - 48;
    final cellSize = tableSize / 3;
    final cellsState = _buildCellsState(
      circleCoordinates: gameState.circleCoordinates,
      crossCoordinates: gameState.crossCoordinates,
    );

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop){
        if (didPop){
          return;
        }
        showDialog(
          context: context, 
          builder: (context) => const QuitGameConfirmDialog()
        ).then((isQuitConfirmed){
          if (isQuitConfirmed == true){
            onQuitConfirmed();
          }
        });
      },
      child: Table(
        border: TableBorder.all(
          width: 2
        ),
        defaultColumnWidth: FixedColumnWidth(cellSize),
        children: [
          for (int row = 0 ; row < 3 ; row++)
            TableRow(
              children: [
                for (int col = 0 ; col < 3 ; col++)
                  TableCell(
                    child: GestureDetector(
                      onTap: (){
                        onClickCell(row: row, col: col);
                      },
                      child: SizedBox(
                        height: cellSize,
                        child: Icon(
                          _findIconBasedOnCellState(cellsState[row][col]),
                          color: _findColorBasedOnCellState(cellsState[row][col]),
                          size: 72,
                        ),
                      ),
                    )
                  )
              ]
            )
        ],
      ),
    );
  }

  List<List<_CellState>> _buildCellsState({
    required List<Coordinate> circleCoordinates,
    required List<Coordinate> crossCoordinates,
  }){
    List<List<_CellState>> cellsState = [
      for (var row = 0 ; row < 3 ; row++)
        [
          for (var col = 0 ; col < 3 ; col++)
            _CellState.none
        ]
    ];

    for (final circle in circleCoordinates){
      cellsState[circle.row][circle.col] = _CellState.circle;
    }
    for (final cross in crossCoordinates){
      cellsState[cross.row][cross.col] = _CellState.cross;
    }

    return cellsState;
  }

  IconData? _findIconBasedOnCellState(_CellState cellState){
    switch (cellState){
      case _CellState.cross:
        return Icons.close;
      case _CellState.circle:
        return Icons.circle_outlined;
      case _CellState.none:
        return null;
    }
  }

  Color? _findColorBasedOnCellState(_CellState cellState){
    switch (cellState){
      case _CellState.cross:
        return Colors.red;
      case _CellState.circle:
        return Colors.blue;
      case _CellState.none:
        return null;
    }
  }
}

enum _CellState {
  circle, cross, none
}
