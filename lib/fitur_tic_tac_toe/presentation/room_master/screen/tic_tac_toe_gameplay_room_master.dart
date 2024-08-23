import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_common_component/tic_tac_toe_board.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_common_component/tic_tac_toe_scaffold.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_common_component/end_game_dialog.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_ui_model/end_game_dialog_status.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/room_master/view_model/room_master_tic_tac_toe_view_model.dart';

class TicTacToeGameplayRoomMaster extends StatelessWidget {
  const TicTacToeGameplayRoomMaster({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RoomMasterTicTacToeViewModel, RoomMasterTicTacToeState>(
      listener: (context, state){
        if (state.mustBackToPreviousScreen){
          final viewModel = context.read<RoomMasterTicTacToeViewModel>();
          viewModel.add(const RoomMasterTicTacToeEvent.doneBackToPreviousScreen());
          Navigator.of(context).pop();
          return;
        }
        if (state.endGameDialogStatus != EndGameDialogStatus.notShown){
          if (state.endGameDialogStatus == EndGameDialogStatus.mustShow){
            final viewModel = context.read<RoomMasterTicTacToeViewModel>();
            viewModel.add(const RoomMasterTicTacToeEvent.doneShowEndGameDialog());
            showDialog(
              context: context,
              builder: (context) =>
                  EndGameDialog(
                    endGameStatus: state.gameState.endGameStatus ??
                      TicTacToeEndGameStatus.disconnected,
                    isClient: false,
                  ),
            ).then((isQuitToMainMenuConfirmed){
              if (isQuitToMainMenuConfirmed == true){
                Navigator.of(context).pop();
              }
            });
          }
          return;
        }
      },
      builder: (context, state){
        final viewModel = context.read<RoomMasterTicTacToeViewModel>();

        return TicTacToeScaffold(
          isQuittingGame: state.isQuittingGame,
          onQuitGameConfirmed: (){
            if (state.gameState.endGameStatus != null){
              Navigator.of(context).pop();
              return;
            }
            viewModel.add(const RoomMasterTicTacToeEvent.quitGame());
          },
          body: Center(child: TicTacToeBoard(
            isClientBoard: false,
            screenSize: MediaQuery.of(context).size,
            gameState: state.gameState,
            onClickCell: ({required int row, required int col}){
              if (state.gameState.endGameStatus != null){
                return;
              }
              viewModel.add(RoomMasterTicTacToeEvent.markBoardSafely(
                  row: row, col: col, isUpdateFromClient: false
              ));
            },
          )),
        );
      },
    );
  }
}
