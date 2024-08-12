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

            _getEmojiBasedOnEndGameStatus(),

            _getTextDescriptionBasedOnEndGameStatus(),
            
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

  Icon _getEmojiBasedOnEndGameStatus(){
    const happyEmoji = Icon(Icons.mood, color: Colors.green, size: 64,);
    const sadEmoji = Icon(Icons.sentiment_dissatisfied, color: Colors.red, size: 64,);
    const neutralEmoji = Icon(Icons.sentiment_neutral_outlined, color: Colors.grey, size: 64,);

    return switch (_endGameStatus){
      TicTacToeEndGameStatus.clientNormalWin || TicTacToeEndGameStatus.roomMasterQuitGame =>
        _isClient ? happyEmoji : sadEmoji,
      TicTacToeEndGameStatus.roomMasterNormalWin || TicTacToeEndGameStatus.clientQuitGame =>
        _isClient ? sadEmoji : happyEmoji,
      TicTacToeEndGameStatus.disconnected => neutralEmoji,
    };
  }

  Text _getTextDescriptionBasedOnEndGameStatus(){
    const winNormal = 'Hore, kamu menang!';
    const loseNormal = 'Yah, kamu kalah...';
    const opponentQuit = 'Kamu menang, lawanmu telah meninggalkan pertandingan!';
    const disconnected = 'Ups, Koneksi antara kamu dan lawan terputus!';

    final String desc = switch (_endGameStatus){
      TicTacToeEndGameStatus.clientNormalWin =>
         _isClient ?  loseNormal : winNormal,
      TicTacToeEndGameStatus.roomMasterNormalWin =>
         _isClient ? winNormal : loseNormal,
      TicTacToeEndGameStatus.clientQuitGame || TicTacToeEndGameStatus.roomMasterQuitGame =>
        opponentQuit,
      TicTacToeEndGameStatus.disconnected =>
        disconnected,
    };

    return Text(desc, textAlign: TextAlign.center,);
  }
}
