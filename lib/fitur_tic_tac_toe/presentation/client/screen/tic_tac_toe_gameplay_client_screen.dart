import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/common/presentation/component/response_loader.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_common_component/tic_tac_toe_board.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_common_component/tic_tac_toe_scaffold.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/client/view_model/tic_tac_toe_client_view_model.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_common_component/end_game_dialog.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/_ui_model/end_game_dialog_status.dart';

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
      child: BlocConsumer<TicTacToeClientViewModel, TicTacToeClientState>(
          listener: (context, state){
            final endGameDialogstatus = state.endGameDialogStatus;
            if (endGameDialogstatus != EndGameDialogStatus.notShown){
              if (endGameDialogstatus == EndGameDialogStatus.mustShow){
                // Kalau ternyata client telah mengonfirmasi keluar halaman,
                // langsung keluar saja tanpa perlu keluarin end game dialog
                if (state.gameState?.endGameStatus == TicTacToeEndGameStatus.clientQuitGame){
                  Navigator.of(context).pop();
                  return;
                }

                context.read<TicTacToeClientViewModel>().add(
                    const TicTacToeClientEvent.doneShowEndGameDialog()
                );
                showDialog(
                  context: context,
                  builder: (context) =>
                      EndGameDialog(
                        endGameStatus: state.gameState?.endGameStatus ??
                            TicTacToeEndGameStatus.disconnected,
                        isClient: true,
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
            final viewModel = context.read<TicTacToeClientViewModel>();

            return TicTacToeScaffold(
              isQuittingGame: state.isQuittingGame,
              onQuitGameConfirmed: (){
                if (state.gameState?.endGameStatus != null){
                  Navigator.of(context).pop();
                  return;
                }
                viewModel.add(const TicTacToeClientEvent.quitGame());
              },
              body: Center(
                child: ResponseLoader(
                  response: state.connectResponse,
                  completeBuilder: (context, data){
                    final gameState = state.gameState;
                    if (gameState == null){
                      return const Text('Loading...');
                    }
                    return TicTacToeBoard(
                      isClientBoard: true,
                      screenSize: MediaQuery.of(context).size,
                      gameState: gameState,
                      onClickCell: ({required int col, required int row}) {
                        if (gameState.endGameStatus != null){
                          return;
                        }
                        viewModel.add(TicTacToeClientEvent.markBoard(
                          row: row, col: col
                        ));
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
              ),
            );
          }
      ),
    );
  }
}
