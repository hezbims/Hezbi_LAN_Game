import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/common/presentation/component/response_loader.dart';
import 'package:hezbi_lan_game/common/presentation/routes/my_routes.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/presentation/view_model/room_master/room_master_tic_tac_toe_view_model.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TicTacToeWaitingRoomScreenInner extends StatefulWidget {
  const TicTacToeWaitingRoomScreenInner({super.key});

  @override
  State<TicTacToeWaitingRoomScreenInner> createState() => _TicTacToeWaitingRoomScreenInnerState();
}

class _TicTacToeWaitingRoomScreenInnerState extends State<TicTacToeWaitingRoomScreenInner> {
  late final viewModel = context.read<RoomMasterTicTacToeViewModel>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RoomMasterTicTacToeViewModel, RoomMasterTicTacToeState>(
      listener: (context, state){
        if (state.hasConnection){
          viewModel.add(const RoomMasterTicTacToeEvent.doneHandlingNewConnection());
          Navigator.of(context).pushNamed(
            MyRoutes.ticTacToeRoomMasterGameplay,
            arguments: viewModel,
          );
        }
      },
      builder: (context, state){
        return Center(
          child: ResponseLoader(
            response: state.wsServerUrl, 
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
              viewModel.add(const RoomMasterTicTacToeEvent.prepareWebSocketServer());
            }
          ),
        );
      }
    );
  }
}
