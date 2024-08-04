import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/screen/component/tic_tac_toe_board.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/view_model/room_master/room_master_tic_tac_toe_view_model.dart';

class TicTacToeGameplayRoomMaster extends StatelessWidget {
  final RoomMasterTicTacToeViewModel viewModel;
  const TicTacToeGameplayRoomMaster({
    required this.viewModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: viewModel,
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<RoomMasterTicTacToeViewModel, RoomMasterTicTacToeState>(
          builder: (context, state){
            return const Center(child: TicTacToeBoard());
          },
        ),
      ),
    );
  }
}
