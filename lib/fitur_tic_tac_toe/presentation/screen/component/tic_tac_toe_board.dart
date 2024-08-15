import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_cell_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/use_case/get_tic_tac_toe_grid_state_use_case.dart';

class TicTacToeBoard extends StatelessWidget {
  final void Function({required int row, required int col}) onClickCell;
  final TicTacToeGameState _gameState;
  final bool _isMyTurn;

  final _getTicToeGridState = const GetTicTacToeGridStateUseCase();

  TicTacToeBoard({
    required bool isClientBoard,
    required this.onClickCell,
    required TicTacToeGameState gameState,
    super.key,
  }) : _gameState = gameState,
        _isMyTurn = (isClientBoard != gameState.isRoomMasterTurn);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final tableSize = min(screenSize.width, screenSize.height) - 48;
    final cellSize = tableSize / 3;
    final ticTacToeGridState = _getTicToeGridState(gameState: _gameState);

    return Stack(
      alignment: Alignment.center,
      children: [
        Table(
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
                      child: InkWell(
                        onTap: (){
                          onClickCell(row: row, col: col);
                        },
                        child: SizedBox(
                          height: cellSize,
                          child: Icon(
                            _findIconBasedOnCellState(ticTacToeGridState[row][col]),
                            color: _findColorBasedOnCellState(ticTacToeGridState[row][col]),
                            size: cellSize - 36,
                          ),
                        ),
                      )
                    )
                ]
              )
          ],
        ),

        Padding(
          padding: EdgeInsets.only(top: tableSize + 72),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Sekarang ${_isMyTurn ? 'giliranmu' : 'giliran lawan'} : ',
                style: const TextStyle(fontSize: 20),
              ),

              Icon(
                _gameState.isRoomMasterTurn ? _roomMasterIcon : _clientIcon,
                color: _gameState.isRoomMasterTurn ? Colors.red : Colors.blue,
              )
            ],
          ),
        )
      ],
    );
  }

  static const _roomMasterIcon = Icons.close;
  static const _clientIcon = Icons.circle_outlined;

  IconData? _findIconBasedOnCellState(TicTacToeCellState cellState){
    switch (cellState){
      case TicTacToeCellState.hasCross:
        return _roomMasterIcon;
      case TicTacToeCellState.hasCircle:
        return _clientIcon;
      case TicTacToeCellState.hasNothing:
        return null;
    }
  }

  Color? _findColorBasedOnCellState(TicTacToeCellState cellState){
    switch (cellState){
      case TicTacToeCellState.hasCross:
        return Colors.red;
      case TicTacToeCellState.hasCircle:
        return Colors.blue;
      case TicTacToeCellState.hasNothing:
        return null;
    }
  }
}