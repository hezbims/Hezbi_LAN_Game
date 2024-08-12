import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/common/presentation/component/loading_overlay.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/screen/component/quit_game_confirm_dialog.dart';

class TicTacToeScaffold extends StatelessWidget {
  final Widget body;
  final bool isQuittingGame;
  final void Function() onQuitGameConfirmed;
  
  const TicTacToeScaffold({
    required this.body,
    required this.isQuittingGame,
    required this.onQuitGameConfirmed,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop){
          if (didPop || isQuittingGame){
            return;
          }
          showDialog(
              context: context,
              builder: (context) => const QuitGameConfirmDialog()
          ).then((isQuitConfirmed){
            if (isQuitConfirmed == true){
              onQuitGameConfirmed();
            }
          });
        },
        child: LoadingOverlay(
          isLoading: isQuittingGame,
          child: Scaffold(
            body: body,
          ),
        ),
      )
    );
  }
}
