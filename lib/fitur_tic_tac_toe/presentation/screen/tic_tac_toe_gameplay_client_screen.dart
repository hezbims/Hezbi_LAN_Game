import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/common/presentation/component/response_loader.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/screen/component/tic_tac_toe_board.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/view_model/client/tic_tac_toe_client_view_model.dart';

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
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<TicTacToeClientViewModel, TicTacToeClientState>(
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
                    onClickCell: ({required int col, required int row}) {

                    },
                    gameState: gameState,
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
    );
  }
}
