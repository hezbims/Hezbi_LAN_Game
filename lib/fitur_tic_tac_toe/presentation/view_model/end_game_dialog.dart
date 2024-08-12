import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';

class EndGameDialog extends StatelessWidget {
  final TicTacToeEndGameStatus _endGameStatus;
  final bool _isClient;
  const EndGameDialog({
    required TicTacToeEndGameStatus endGameStatus,
    required bool isClient,
    super.key
  }) : _isClient = isClient, _endGameStatus = endGameStatus;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close),
                ),
              ],
            ),

            _isCurrentPlayerWinning() ? 
              const Icon(Icons.mood, color: Colors.green, size: 64,) :
              const Icon(Icons.sentiment_dissatisfied, color: Colors.red, size: 64,),
            if (_endGameStatus == TicTacToeEndGameStatus.roomMasterNormalWin ||
                _endGameStatus == TicTacToeEndGameStatus.clientNormalWin)
              const Text(
              'Hore, kamu menang!',
              textAlign: TextAlign.center,
              )
            else
              const Text(
                'Kamu menang, lawanmu telah meninggalkan pertandingan!',
                textAlign: TextAlign.center,
              ),

            const SizedBox(height: 24,),
            
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: FilledButton(
                    onPressed: (){
                      Navigator.of(context).pop(true);
                    }, 
                    child: const Text('Kembali ke menu')
                  ),
                ),
              ],
            )
          ]
        ),
      ),
    );
  }
  
  bool _isCurrentPlayerWinning(){
    if (_isClient) {
      if (_endGameStatus == TicTacToeEndGameStatus.roomMasterQuitGame ||
          _endGameStatus == TicTacToeEndGameStatus.clientNormalWin) {
        return true;
      }
    }
    else {
      if (_endGameStatus == TicTacToeEndGameStatus.roomMasterNormalWin ||
          _endGameStatus == TicTacToeEndGameStatus.clientQuitGame){
        return true;
      }
    }
    return false;
  }
}
