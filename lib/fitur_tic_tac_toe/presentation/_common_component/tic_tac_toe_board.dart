import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/use_case/get_tic_tac_toe_grid_state_use_case.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_common_component/tic_tac_toe_cell.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_common_component/tic_tac_toe_icons.dart';

class TicTacToeBoard extends StatefulWidget {
  final void Function({required int row, required int col}) onClickCell;
  final TicTacToeGameState gameState;
  final bool isMyTurn;
  final bool isClientBoard;
  final Size screenSize;

  TicTacToeBoard({
    required this.isClientBoard,
    required this.onClickCell,
    required this.gameState,
    required this.screenSize,
    super.key,
  }) : isMyTurn = (isClientBoard != gameState.isRoomMasterTurn);

  @override
  State<TicTacToeBoard> createState() => _TicTacToeBoardState();
}

class _TicTacToeBoardState extends State<TicTacToeBoard> {
  final _getTicToeGridState = const GetTicTacToeGridStateUseCase();
  late final double tableSize;
  late final double cellSize;


  @override
  void initState() {
    super.initState();

    tableSize = min(widget.screenSize.width, widget.screenSize.height) - 48;
    cellSize = tableSize / 3;
  }


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final curGridState = _getTicToeGridState(gameState: widget.gameState);

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
                    TicTacToeCell(
                      cellSize: cellSize,
                      onClickCell: (){
                        if (widget.isMyTurn) {
                          widget.onClickCell(row: row, col: col);
                        }
                      },
                      curCellState: curGridState[row][col],
                      isMovedCell: _isCurrentCellMarkWillBeMovedInNextTurn(row: row, col: col),
                    ),
                ]
              )
          ],
        ),

        if (widget.gameState.endGameStatus != TicTacToeEndGameStatus.disconnected)
          Padding(
            padding: EdgeInsets.only(top: tableSize + 72),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              switchInCurve: Curves.easeInQuint,
              switchOutCurve: Curves.easeOutQuint,
              transitionBuilder: (Widget child, Animation<double> animation){
                final isOut = child.key != ValueKey(widget.isMyTurn);
                if (isOut){
                  return FadeTransition(
                    opacity: animation, // tidak usah buat tween baru, karena animation rangenya udah 0-1
                    child: child,
                  );
                } else {
                  return ScaleTransition(
                    scale: animation,
                    child: child,
                  );
                }
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                key: ValueKey(widget.isMyTurn),
                children: [
                  Text(
                    'Sekarang ${widget.isMyTurn ? 'giliranmu' : 'giliran lawan'} : ',
                    style: const TextStyle(fontSize: 20),
                  ),

                  Icon(
                    widget.gameState.isRoomMasterTurn ?
                      TicTacToeIcons.roomMasterMark :
                      TicTacToeIcons.clientMark,
                    color: widget.gameState.isRoomMasterTurn ?
                      Colors.red : Colors.blue,
                  )
                ],
              ),
            ),
          )
      ],
    );
  }

  bool _isCurrentCellMarkWillBeMovedInNextTurn({required int row, required int col}){
    final cell = Coordinate(row: row, col: col);
    final isRoomMasterTurn = widget.gameState.isRoomMasterTurn;
    final circleCoordinates = widget.gameState.circleCoordinates;
    final crossCoordinates = widget.gameState.crossCoordinates;

    if (circleCoordinates.length < 3 || crossCoordinates.length < 3){
      return false;
    }

    if (cell == circleCoordinates.firstOrNull && !isRoomMasterTurn ||
        cell == crossCoordinates.firstOrNull && isRoomMasterTurn
    ){
      return true;
    }
    return false;
  }
}