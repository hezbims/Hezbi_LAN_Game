import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/common/presentation/routes/my_routes.dart';
import 'package:hezbi_lan_game/fitur_join_permainan/presentation/join_permainan_screen.dart';
import 'package:hezbi_lan_game/fitur_main_menu/main_menu_screen.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/screen/tic_tac_toe_gameplay_client_screen.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/screen/tic_tac_toe_gameplay_room_master.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/screen/tic_tac_toe_waiting_room_screen.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/view_model/room_master/room_master_tic_tac_toe_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RoomMasterTicTacToeViewModel(),
        ),
      ],
      child: MaterialApp(
        routes: {
          MyRoutes.ticTacToeWaitingRoom : (context) => const TicTacToeWaitingRoomScreen(),
          MyRoutes.joinPermainan: (context) => const JoinPermainanScreen(),
          MyRoutes.ticTacToeClientGameplay: (context) =>
            TicTacToeGameplayClientScreen(
              serverAddress: ModalRoute.of(context)!.settings.arguments as String,
            ),
          MyRoutes.ticTacToeRoomMasterGameplay: (context) =>
              TicTacToeGameplayRoomMaster(
                viewModel: ModalRoute.of(context)!.settings.arguments as RoomMasterTicTacToeViewModel
              ),
        },
        title: 'Hezbi Lan Game',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MainMenuScreen(),
      ),
    );
  }
}