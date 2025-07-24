import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/event/tic_tac_toe_action_event.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/event/tic_tac_toe_response_event.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_cell_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/game_status.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/player.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/player_status.dart';

part 'tic_tac_toe_game_state_v2.freezed.dart';

@Freezed()
class TicTacToeGameStateV2 with _$TicTacToeGameStateV2{
  @override
  final GameStatus gameStatus;
  @override
  final List<List<TicTacToeCellState>> cells;
  @override
  final String roomMasterId;
  @override
  final List<Player> players;
  @override
  final String? currentPlayerIdTurn;

  TicTacToeGameStateV2._privateConstructor({
    required this.gameStatus,
    required this.cells,
    required this.roomMasterId,
    required this.players,
    required this.currentPlayerIdTurn,
  });

  //region testing only
  /// Mensimulasikan state game ketika permainan berlangsung
  @visibleForTesting
  static TicTacToeGameStateV2 gamePlayingOnlyForTesting(){
    final roomMaster = Player(
      id: "192.168.44.1",
      name: "room-master",
      status: PlayerStatus.playing,
    );
    final otherPlayer = Player(
      id: "192.168.44.2",
      name: "other-player",
      status: PlayerStatus.playing,
    );

    return TicTacToeGameStateV2._privateConstructor(
      gameStatus: GameStatus.playing,
      cells: [
        [TicTacToeCellState.hasNothing, TicTacToeCellState.hasCircle, TicTacToeCellState.hasCircle],
        [TicTacToeCellState.hasNothing, TicTacToeCellState.hasCross, TicTacToeCellState.hasNothing],
        [TicTacToeCellState.hasNothing, TicTacToeCellState.hasNothing, TicTacToeCellState.hasCross],
      ],
      roomMasterId: roomMaster.id,
      players: [roomMaster, otherPlayer],
      currentPlayerIdTurn: roomMaster.id,
    );
  }

  /// Mensimulasikan state game ketika permainan selesai
  @visibleForTesting
  static TicTacToeGameStateV2 gameEndedOnlyForTesting() {
    final roomMaster = Player(
      id: "192.168.44.1",
      name: "room-master",
      status: PlayerStatus.winning,
    );
    final otherPlayer = Player(
      id: "192.168.44.2",
      name: "other-player",
      status: PlayerStatus.losing,
    );

    return TicTacToeGameStateV2._privateConstructor(
      gameStatus: GameStatus.ended,
      cells: [
        [TicTacToeCellState.hasCross, TicTacToeCellState.hasCircle, TicTacToeCellState.hasCircle],
        [TicTacToeCellState.hasNothing, TicTacToeCellState.hasCross, TicTacToeCellState.hasNothing],
        [TicTacToeCellState.hasNothing, TicTacToeCellState.hasNothing, TicTacToeCellState.hasCross],
      ],
      roomMasterId: roomMaster.id,
      players: [roomMaster, otherPlayer],
      currentPlayerIdTurn: otherPlayer.id,
    );
  }
  //endregion

  static TicTacToeGameStateV2 init({
    required final String roomMasterId,
    required final String roomMasterName,
  }){
    List<List<TicTacToeCellState>> cells = [
      for (int row = 1 ; row <= 3 ; row++)
        [for (int col = 0 ; col < 3 ; col++) TicTacToeCellState.hasNothing]
    ];

    return TicTacToeGameStateV2._privateConstructor(
      gameStatus: GameStatus.waiting,
      cells: cells,
      players: [Player(
        id: roomMasterId,
        name: roomMasterName,
        status: PlayerStatus.playing,
      )],
      roomMasterId: roomMasterId,
      currentPlayerIdTurn: null,
    );
  }

  TicTacToeResponseEvent? handle(TicTacToeActionEvent event){
    return switch (event) {
      PlayerJoinEvent() =>
        _handlePlayerJoin(event),
      PlayerLeaveEvent() =>
        _handlePlayerLeave(event),
    };
  }

  TicTacToeResponseEvent _handlePlayerJoin(PlayerJoinEvent event){
    return switch(gameStatus){
      GameStatus.waiting =>
        StartGameEvent(
          before: this,
          after: copyWith(
            gameStatus: GameStatus.playing,
            players: [
              ...players,
              Player(
                id: event.joinPlayerId,
                name: event.joinPlayerName,
                status: PlayerStatus.playing,
              )
            ],
            currentPlayerIdTurn: Random().nextBool() ?
              roomMasterId : event.joinPlayerId,
          ),
        ),
      GameStatus.playing =>
          CantJoinGameAlreadyPlayingEvent(playerId: event.joinPlayerId),
      GameStatus.ended =>
        CantJoinGameAlreadyEndedEvent(playerId: event.joinPlayerId),
    };
  }

  TicTacToeResponseEvent? _handlePlayerLeave(PlayerLeaveEvent event){
    if (!players.any((player) => player.id == event.playerId))
      return null;
    return switch (gameStatus){
      GameStatus.waiting =>
        throw UnimplementedError(),
      GameStatus.playing =>
        throw UnimplementedError(),
      GameStatus.ended => null,
    };
  }
}