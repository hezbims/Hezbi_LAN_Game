import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/common/presentation/routes/my_routes.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FilledButton(
          onPressed: (){
            Navigator.of(context).pushNamed(MyRoutes.ticTacToeWaitingRoom);
          },
          child: const Text('MAIN!')
        ),
      ),
    );
  }
}