import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/event/tic_tac_toe_action_event.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/event/tic_tac_toe_response_event.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/cell_mark.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/game_status.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/player.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/player_status.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/mark_type.dart';

part 'tic_tac_toe_game_state_v2.freezed.dart';

@Freezed()
class TicTacToeGameStateV2 with _$TicTacToeGameStateV2{
  @override
  final GameStatus gameStatus;
  @override
  final List<List<CellMark?>> cells;
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
  @visibleForTesting
  static const String roomMasterIdForTesting = "192.168.44.1";
  @visibleForTesting
  static const String roomMasterNameForTesting = "room-master";
  @visibleForTesting
  static const String clientIdForTesting = "192.168.44.2";
  @visibleForTesting
  static const String clientNameForTesting = "other-player";


  /// Mensimulasikan state game ketika permainan berlangsung
  @visibleForTesting
  static TicTacToeGameStateV2 gamePlayingOnlyForTesting(){
    final roomMaster = Player(
      id: roomMasterIdForTesting,
      name: roomMasterNameForTesting,
      status: PlayerStatus.playing,
      markType: MarkType.circle,
    );
    final otherPlayer = Player(
      id: clientIdForTesting,
      name: clientNameForTesting,
      status: PlayerStatus.playing,
      markType: MarkType.cross,
    );

    return TicTacToeGameStateV2._privateConstructor(
      gameStatus: GameStatus.playing,
      cells: [
        [null, CellMark(sequence: 3, markType: MarkType.circle), CellMark(sequence: 1, markType: MarkType.circle)],
        [null, CellMark(sequence: 4, markType: MarkType.cross), null],
        [null, null, CellMark(sequence: 2, markType: MarkType.cross)],
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
      id: roomMasterIdForTesting,
      name: roomMasterNameForTesting,
      status: PlayerStatus.winning,
      markType: MarkType.circle,
    );
    final otherPlayer = Player(
      id: clientIdForTesting,
      name: clientNameForTesting,
      status: PlayerStatus.losing,
      markType: MarkType.cross,
    );

    return TicTacToeGameStateV2._privateConstructor(
      gameStatus: GameStatus.ended,
      cells: [
        [CellMark(sequence: 5, markType: MarkType.cross), CellMark(sequence: 4, markType: MarkType.circle), CellMark(sequence: 2, markType: MarkType.circle)],
        [null, CellMark(sequence: 3, markType: MarkType.cross), null],
        [null, null, CellMark(sequence: 1, markType: MarkType.cross)],
      ],
      roomMasterId: roomMaster.id,
      players: [roomMaster, otherPlayer],
      currentPlayerIdTurn: roomMasterIdForTesting,
    );
  }
  //endregion

  static TicTacToeGameStateV2 init({
    required final String roomMasterId,
    required final String roomMasterName,
  }){
    return TicTacToeGameStateV2._privateConstructor(
      gameStatus: GameStatus.waiting,
      cells: [
        for (int row = 1 ; row <= 3 ; row++)
          [for (int col = 0 ; col < 3 ; col++) null ]
      ],
      players: [Player(
        id: roomMasterId,
        name: roomMasterName,
        status: PlayerStatus.playing,
        markType: MarkType.random(),
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
                markType: players.single.markType.getInverse(),
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
    if (!players.any((player) => player.id == event.playerId)) {
      return null;
    }

    return switch (gameStatus){
      GameStatus.waiting => null,
      GameStatus.ended => null,
      GameStatus.playing => GameEndedAfterPlayerLeaving(
        leavingPlayerId: event.playerId,
        before: this,
        after: copyWith(
          gameStatus: GameStatus.ended,
          players: players.map((player) =>
            player.id == event.playerId ?
              player.copyWith(status: PlayerStatus.losing) :
              player.copyWith(status: PlayerStatus.winning)
          ).toList(),
        )),
    };
  }
}