import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/data/tic_tac_toe_ws_client.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_game_state.dart';

part 'tic_tac_toe_client_view_model.freezed.dart';

class TicTacToeClientViewModel extends Bloc<TicTacToeClientEvent, TicTacToeClientState> {
  final _wsClient = TicTacToeWsClient();
  final String _serverAddress;
  
  TicTacToeClientViewModel({required String serverAddress}) :
    _serverAddress = serverAddress,
    super(TicTacToeClientState.init()){
    on(_connectToServer);
    on(_newGameState);

    add(const TicTacToeClientEvent.connectToServer());
  }

  void _connectToServer(
    ConnectToServer event,
    Emitter<TicTacToeClientState> emit,
  ) async {
    emit(state.copyWith(connectResponse: ResponseWrapper.loading()));
    final nextResponse = await _wsClient.connectWsServer(
      address: _serverAddress,
      handleDataFromServer: (dataFromServer){
        if (dataFromServer is String){
          final Map<String, dynamic> serverDataJson = jsonDecode(dataFromServer);
          add(NewGameState(
            TicTacToeGameState.fromJson(serverDataJson)
          ));
        }
      }
    );
    emit(state.copyWith(connectResponse: nextResponse));
  }

  void _newGameState(
    NewGameState event,
    Emitter<TicTacToeClientState> emit,
  ){
    emit(state.copyWith(gameState: event.gameState));
  }

  @override
  Future<void> close() async {
    _wsClient.dispose();
    super.close();
  }
}

@Freezed()
sealed class TicTacToeClientEvent with _$TicTacToeClientEvent {
  const factory TicTacToeClientEvent.connectToServer() = ConnectToServer;
  const factory TicTacToeClientEvent.clickTile({required int row, required int col}) = ClickTile;
  const factory TicTacToeClientEvent.newGameState(TicTacToeGameState gameState) = NewGameState;
}

@Freezed()
class TicTacToeClientState with _$TicTacToeClientState {
  const factory TicTacToeClientState({
    required ResponseWrapper<dynamic> connectResponse,
    required TicTacToeGameState? gameState,
  }) = _TicTacToeClientState;

  factory TicTacToeClientState.init(){
    return TicTacToeClientState(
      connectResponse: ResponseWrapper.loading(),
      gameState: null,
    );
  }
}