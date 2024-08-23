import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_cell_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/use_case/get_tic_tac_toe_grid_state_use_case.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_common_component/tic_tac_toe_cell.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_common_component/tic_tac_toe_icons.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/client/view_model/tic_tac_toe_client_view_model.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/room_master/view_model/room_master_tic_tac_toe_view_model.dart';

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

class _TicTacToeBoardState extends State<TicTacToeBoard> with TickerProviderStateMixin {
  final _getTicToeGridState = const GetTicTacToeGridStateUseCase();
  late final double tableSize;
  late final double cellSize;
  late final double iconSize;
  late List<List<TicTacToeCellState>> prevGridState;
  StreamSubscription<TicTacToeGameState>? gameStateSubscription;

  @override
  void initState() {
    super.initState();

    tableSize = min(widget.screenSize.width, widget.screenSize.height) - 48;
    cellSize = tableSize / 3;
    iconSize = cellSize - 36;
    prevGridState = _getTicToeGridState(gameState: widget.gameState).toList();
    initAnimation();

    final Stream<TicTacToeGameState> gameStateStream = widget.isClientBoard ?
      context.read<TicTacToeClientViewModel>().stream.map((state) => state.gameState!) :
      context.read<RoomMasterTicTacToeViewModel>().stream.map((state) => state.gameState);
    gameStateSubscription = gameStateStream.listen((gameState){
      final curGridState = _getTicToeGridState(gameState: gameState);
      for (int row = 0 ; row < 3 ; row++){
        for (int col = 0 ; col < 3 ; col++){
          if (curGridState[row][col] == prevGridState[row][col]){
            continue;
          }
          if (curGridState[row][col] == TicTacToeCellState.hasNothing){
            animationControllers[row][col].reverse();
          } else {
            animationControllers[row][col].forward();
          }
        }
      }
      prevGridState = curGridState;
    });
  }


  @override
  void dispose() {
    gameStateSubscription?.cancel();
    disposeAnimation();
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
                      prevCellState: prevGridState[row][col],
                      animation: scaleAnimations[row][col],
                    ),
                ]
              )
          ],
        ),

        if (widget.gameState.endGameStatus != TicTacToeEndGameStatus.disconnected)
          Padding(
            padding: EdgeInsets.only(top: tableSize + 72),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Sekarang ${widget.isMyTurn ? 'giliranmu' : 'giliran lawan'} : ',
                  style: const TextStyle(fontSize: 20),
                ),

                Icon(
                  widget.gameState.isRoomMasterTurn ?
                    TicTacToeIcons.roomMasterMark :
                    TicTacToeIcons.clientMark,
                  color: widget.gameState.isRoomMasterTurn ? Colors.red : Colors.blue,
                )
              ],
            ),
          )
      ],
    );
  }
  
  late List<List<AnimationController>> animationControllers;
  late List<List<Animation<double>>> scaleAnimations;
  void initAnimation(){
    animationControllers = [
      for (int row = 0 ; row < 3 ; row++) [
        for (int col = 0 ; col < 3 ; col++)
          AnimationController(duration: const Duration(milliseconds: 750),vsync: this)
      ]
    ];
    scaleAnimations = [
      for (int row = 0 ; row < 3 ; row++) [
        for (int col = 0 ; col < 3 ; col++)
          Tween<double>(begin: 0, end: iconSize)
          .animate(
            CurvedAnimation(
              parent: animationControllers[row][col],
              curve: Curves.bounceOut
            )
          )
      ]
    ];
  }

  void disposeAnimation(){
    animationControllers.expand((e) => e).forEach((e) => e.dispose());
  }
}