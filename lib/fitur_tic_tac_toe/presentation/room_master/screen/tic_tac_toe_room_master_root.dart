import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/room_master/screen/tic_tac_toe_gameplay_room_master.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/room_master/screen/tic_tac_toe_waiting_room_screen.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/room_master/view_model/room_master_tic_tac_toe_view_model.dart';

class TicTacToeRoomMasterRoot extends StatelessWidget {
  const TicTacToeRoomMasterRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RoomMasterTicTacToeViewModel(),
      child: BlocSelector<RoomMasterTicTacToeViewModel, RoomMasterTicTacToeState, bool>(
        selector: (state) => state.hasConnection,
        builder: (context, hasConnection){
          if (hasConnection){
            return const TicTacToeGameplayRoomMaster();
          } else {
            return const TicTacToeWaitingRoomScreen();
          }
        }
      ),
    );
  }
}
