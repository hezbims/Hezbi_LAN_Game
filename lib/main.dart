import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/common/presentation/routes/my_routes.dart';
import 'package:hezbi_lan_game/fitur_join_permainan/presentation/join_permainan_screen.dart';
import 'package:hezbi_lan_game/fitur_join_permainan/presentation/qr_scanner/scan_qr_screen.dart';
import 'package:hezbi_lan_game/fitur_main_menu/main_menu_screen.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/client/screen/tic_tac_toe_gameplay_client_screen.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/room_master/screen/tic_tac_toe_room_master_root.dart';

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
        MyRoutes.joinPermainan: (context) => const JoinPermainanScreen(),
        MyRoutes.scanQr: (context) => const ScanQrScreen(),
        MyRoutes.ticTacToeClientGameplay: (context) =>
          TicTacToeGameplayClientScreen(
            serverAddress: ModalRoute.of(context)!.settings.arguments as String,
          ),
        MyRoutes.ticTacToeRoomMasterScreen: (context) => const TicTacToeRoomMasterRoot(),
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