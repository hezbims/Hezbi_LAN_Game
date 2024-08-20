import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hezbi_lan_game/common/presentation/routes/my_routes.dart';

class ChooseGameScreen extends StatelessWidget {
  const ChooseGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pilih Permainan'),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FilledButton(
              onPressed: (){
                Navigator.of(context).pushReplacementNamed(
                  MyRoutes.ticTacToeRoomMasterScreen
                );
              },
              style: FilledButton.styleFrom(
                minimumSize: _buttonMinSize,
                padding: _buttonPadding,
              ),
              child: const Text('Infinite Tic-Tac-Toe'),
            ),

            const SizedBox(height: 4,),

            FilledButton(
              onPressed: (){
                Fluttertoast.showToast(msg: 'UNO akan segera hadir...');
              },
              style: FilledButton.styleFrom(
                minimumSize: _buttonMinSize,
                padding: _buttonPadding,
              ),
              child: const Text('UNO'),
            ),
          ],
        ),
      ),
    );
  }

  static const _buttonPadding = EdgeInsets.symmetric(vertical: 12);
  static const _buttonMinSize  = Size(175, 0);
}
