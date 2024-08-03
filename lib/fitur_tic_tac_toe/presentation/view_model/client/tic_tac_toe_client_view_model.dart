import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/data/tic_tac_toe_ws_client.dart';

part 'tic_tac_toe_client_view_model.freezed.dart';

class TicTacToeClientViewModel extends Bloc<TicTacToeClientEvent, TicTacToeClientState> {
  final _wsClient = TicTacToeWsClient();
  final String _serverAddress;
  
  TicTacToeClientViewModel({required String serverAddress}) :
    _serverAddress = serverAddress,
    super(TicTacToeClientState(connectResponse: ResponseWrapper.loading())){
    on(_connectToServer);

    add(const TicTacToeClientEvent.connectToServer());
  }

  void _connectToServer(
    ConnectToServer event,
    Emitter<TicTacToeClientState> emit,
  ) async {
    emit(state.copyWith(connectResponse: ResponseWrapper.loading()));
    final nextResponse = await _wsClient.connectWsServer(
      address: _serverAddress,
      handleDataFromServer: (data){

      }
    );
    emit(state.copyWith(connectResponse: nextResponse));
  }
}

@Freezed()
sealed class TicTacToeClientEvent with _$TicTacToeClientEvent {
  const factory TicTacToeClientEvent.connectToServer() = ConnectToServer;
  const factory TicTacToeClientEvent.clickTile({required int row, required int col}) = ClickTile;
}

@Freezed()
class TicTacToeClientState with _$TicTacToeClientState {
  const factory TicTacToeClientState({required ResponseWrapper<dynamic> connectResponse}) = _TicTacToeClientState;
}