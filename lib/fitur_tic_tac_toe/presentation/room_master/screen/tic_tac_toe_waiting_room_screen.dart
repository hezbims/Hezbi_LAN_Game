import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/common/presentation/component/response_loader.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/room_master/view_model/room_master_tic_tac_toe_view_model.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TicTacToeWaitingRoomScreen extends StatefulWidget {
  const TicTacToeWaitingRoomScreen({super.key});

  @override
  State<TicTacToeWaitingRoomScreen> createState() => _TicTacToeWaitingRoomScreenState();
}

class _TicTacToeWaitingRoomScreenState extends State<TicTacToeWaitingRoomScreen> {
  late final viewModel = context.read<RoomMasterTicTacToeViewModel>();


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      viewModel.add(const RoomMasterTicTacToeEvent.prepareWebSocketServer());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<RoomMasterTicTacToeViewModel, RoomMasterTicTacToeState>(
          listener: (context, state){
            if (state.mustBackToPreviousScreen){
              viewModel.add(const RoomMasterTicTacToeEvent
                .doneBackToPreviousScreen());
              Navigator.of(context).pop();
            }
          },
          builder: (context, state){
            return Center(
              child: ResponseLoader(
                  response: state.wsServerPreparationResponse,
                  completeBuilder: (context, url){
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Scan Untuk Join',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 12,),

                        QrImageView(
                          data: url,
                          size: 200,
                        ),
                      ],
                    );
                  },
                  loadingBuilder: (context){
                    return const Text('Menyiapkan server...');
                  },
                  onRefresh: (){
                    viewModel.add(const RoomMasterTicTacToeEvent
                        .prepareWebSocketServer());
                  }
              ),
            );
          }
      ),
    );
  }
}
