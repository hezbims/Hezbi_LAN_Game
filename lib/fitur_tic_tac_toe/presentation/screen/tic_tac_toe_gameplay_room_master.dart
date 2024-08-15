import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/screen/component/tic_tac_toe_board.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/screen/component/tic_tac_toe_scaffold.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/view_model/end_game_dialog.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/view_model/end_game_dialog_status.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/view_model/room_master/room_master_tic_tac_toe_view_model.dart';

class TicTacToeGameplayRoomMaster extends StatelessWidget {
  final RoomMasterTicTacToeViewModel viewModel;
  const TicTacToeGameplayRoomMaster({
    required this.viewModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RoomMasterTicTacToeViewModel, RoomMasterTicTacToeState>(
      listener: (context, state){
        if (state.doneClosingWsServer){
          final viewModel = context.read<RoomMasterTicTacToeViewModel>();
          viewModel.add(const RoomMasterTicTacToeEvent.doneHandlingPopAfterClosingWsServer());
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
                viewModel.add(const RoomMasterTicTacToeEvent.closeWsServer());
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
              viewModel.add(const RoomMasterTicTacToeEvent.closeWsServer());
              return;
            }
            viewModel.add(const RoomMasterTicTacToeEvent.quitGame());
          },
          body: Center(child: TicTacToeBoard(
            isClientBoard: false,
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
