import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/screen/tic_tac_toe_waiting_room_screen_inner.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/view_model/room_master_tic_tac_toe_view_model.dart';

class TicTacToeWaitingRoomScreen extends StatelessWidget {
  const TicTacToeWaitingRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RoomMasterTicTacToeViewModel(),
      child: Scaffold(
        appBar: AppBar(),
        body: const TicTacToeWaitingRoomScreenInner(),
      ),
    );
  }
}
