import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/common/presentation/routes/my_routes.dart';
import 'package:hezbi_lan_game/fitur_main_menu/main_menu_screen.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/screen/tic_tac_toe_waiting_room_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        MyRoutes.ticTacToeWaitingRoom : (context) => const TicTacToeWaitingRoomScreen()
      },
      title: 'Hezbi Lan Game',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainMenuScreen(),
    );
  }
}