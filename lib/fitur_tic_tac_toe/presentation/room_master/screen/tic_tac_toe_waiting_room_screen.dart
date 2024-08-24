import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/common/domain/model/my_game_type.dart';
import 'package:hezbi_lan_game/common/domain/model/qr_game_model.dart';
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
    return BlocConsumer<RoomMasterTicTacToeViewModel, RoomMasterTicTacToeState>(
        listener: (context, state) {
          if (state.mustBackToPreviousScreen) {
            viewModel.add(const RoomMasterTicTacToeEvent
                .doneBackToPreviousScreen());
            Navigator.of(context).pop();
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: state.wsServerPreparationResponse != null ?
              const Text('Menunggu Lawan...') : null,
            ),
            body: Center(
              child: ResponseLoader(
                  response: state.wsServerPreparationResponse,
                  completeBuilder: (context, url) {
                    final qrModel = QrGameModel(
                      gameType: MyGameType.ticTacToe,
                      gameAddress: url,
                    );

                    const qrSize = 200.0;

                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: qrSize + 72),
                          child: Text(
                            'Infinite Tic-Tac-Toe',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),

                        QrImageView(
                          data: qrModel.asJsonString(),
                          size: qrSize,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: qrSize + 72),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text('IP & Port :'),
                              Text(
                                url,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  loadingBuilder: (context) {
                    return const Text('Menyiapkan server...');
                  },
                  onRefresh: () {
                    viewModel.add(const RoomMasterTicTacToeEvent
                        .prepareWebSocketServer());
                  }
              ),
            ),
          );
        }
    );
  }
}
