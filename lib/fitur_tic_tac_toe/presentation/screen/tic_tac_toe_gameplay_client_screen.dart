import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/common/presentation/component/response_loader.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/screen/component/tic_tac_toe_board.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/view_model/client/tic_tac_toe_client_view_model.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/view_model/end_game_dialog.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/view_model/end_game_dialog_status.dart';

class TicTacToeGameplayClientScreen extends StatelessWidget {
  final String serverAddress;
  const TicTacToeGameplayClientScreen({
    required this.serverAddress,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TicTacToeClientViewModel(
        serverAddress: serverAddress,
      ),
      child: SafeArea(
        child: Scaffold(
          body: BlocConsumer<TicTacToeClientViewModel, TicTacToeClientState>(
            listener: (context, state){
              final endGameDialogstatus = state.endGameDialogStatus;
              if (endGameDialogstatus != EndGameDialogStatus.notShown){
                if (endGameDialogstatus == EndGameDialogStatus.mustShow){
                  context.read<TicTacToeClientViewModel>().add(
                    const TicTacToeClientEvent.doneShowEndGameDialog()
                  );
                  showDialog(
                    context: context,
                    builder: (context) =>
                      EndGameDialog(
                        endGameStatus: state.gameState?.endGameStatus ?? TicTacToeEndGameStatus.roomMasterQuitGame,
                        isClient: true,
                      ),
                  ).then((isQuitConfirmed){
                    if (isQuitConfirmed == true){
                      Navigator.of(context).pop();
                    }
                  });
                }
                return;
              }
            },
            builder: (context, state){
              final viewModel = context.read<TicTacToeClientViewModel>();

              return Center(
                child: ResponseLoader(
                  response: state.connectResponse,
                  completeBuilder: (context, data){
                    final gameState = state.gameState;
                    if (gameState == null){
                      return const Text('Loading...');
                    }
                    return TicTacToeBoard(
                      gameState: gameState,
                      onClickCell: ({required int col, required int row}) {
                        if (gameState.endGameStatus != null){
                          return;
                        }
                      },
                      onQuitConfirmed: (){
                        if (state.gameState?.endGameStatus != null){
                          Navigator.of(context).pop();
                          return;
                        }

                      },
                    );
                  },
                  loadingBuilder: (context){
                    return const Text(
                      'Menyambungkan ke server...',
                      textAlign: TextAlign.center,
                    );
                  },
                  onRefresh: (){
                    viewModel.add(const TicTacToeClientEvent.connectToServer());
                  },
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
