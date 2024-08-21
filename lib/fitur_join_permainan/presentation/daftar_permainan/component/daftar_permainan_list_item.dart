import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/common/domain/model/my_game_type.dart';
import 'package:hezbi_lan_game/common/domain/model/my_service_attribute.dart';

class DaftarPermainanListItem extends StatelessWidget {
  final MyServiceAttribute game;
  const DaftarPermainanListItem({
    required this.game,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: switch(game.gameType){
                    MyGameType.ticTacToe => const Text(
                      'Tic-Tac-Toe',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  },
                ),

                const SizedBox(width: 4,),

                const Icon(Icons.person),

                Text('${game.currentPlayer}/${game.maxPlayer}'),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  game.roomName,
                ),

                OutlinedButton(
                  onPressed: (){

                  },
                  child: const Text('Masuk'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
