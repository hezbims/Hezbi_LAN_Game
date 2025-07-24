import 'package:flutter_test/flutter_test.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_cell_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/player.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/player_status.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/tic_tac_toe_game_state_v2.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/event/tic_tac_toe_action_event.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/event/tic_tac_toe_response_event.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/game_status.dart';

void main() {
  test("When room master initialized the room, "
      "the initial game state should be correct",
  (){
    const roomMasterIp = "192.168.43.1:9832";
    const roomMasterName = "jj";

    final gameState = TicTacToeGameStateV2.init(
        roomMasterId: roomMasterIp, roomMasterName: roomMasterName);

    expect(gameState.players, hasLength(1));
    expect(gameState.players.first.id, "192.168.43.1:9832");
    expect(gameState.players.first.name, "jj");
    expect(gameState.players.first.status, PlayerStatus.playing);
    expect(gameState.roomMasterId, "192.168.43.1:9832");
    expect(gameState.currentPlayerIdTurn, null);
    for (int i = 0 ; i < 3 ; i++){
      expect(gameState.cells[i], hasLength(3));
      for (int j = 0 ; j < 3 ; j++) {
        expect(gameState.cells[i][j], TicTacToeCellState.hasNothing);
      }
    }
    expect(gameState.gameStatus, GameStatus.waiting);

  });

  group("Scenario : New Player Join",
  (){
    test("When second player join the game, "
        "it should immediately start the game",
            () {
          const secondPlayerId = "192.168.45.43:8001";
          const secondPlayerName = "lj2";
          const roomMasterId = "192.168.45.44:8001";
          const roomMasterName = "room-master";

          final waitingGameState = TicTacToeGameStateV2.init(
            roomMasterId: roomMasterId,
            roomMasterName: roomMasterName,);

          final StartGameEvent event = waitingGameState.handle(PlayerJoinEvent(
              id: secondPlayerId, name: secondPlayerName)) as StartGameEvent;

          final newGameState = event.data.after;

          expect(newGameState.gameStatus, GameStatus.playing);
          expect(newGameState.players, hasLength(2));
          expect(newGameState.players.last, Player(
              id: secondPlayerId,
              name: secondPlayerName,
              status: PlayerStatus.playing));
          expect(newGameState.currentPlayerIdTurn, anyOf(secondPlayerId, roomMasterId));

          // make sure statennya cuma berubah seperlunya
          expect(waitingGameState, newGameState.copyWith(
            gameStatus: GameStatus.waiting,
            players: newGameState.players.sublist(0, 1),
            currentPlayerIdTurn: null,
          ));
        });

    test("When third player try to join the game, "
        "they will receive notification that they can't join",
            (){
          const thirdPlayerId = "192.168.45.1";
          const thirdPlayerName = "player3";

          TicTacToeGameStateV2 playingGameState = TicTacToeGameStateV2
              .gamePlayingOnlyForTesting();
          final CantJoinGameAlreadyPlayingEvent event = playingGameState
              .handle(PlayerJoinEvent(id: thirdPlayerId, name: thirdPlayerName)) as CantJoinGameAlreadyPlayingEvent;

          expect(event.playerId, thirdPlayerId);
        });

    test("When player try to join the game, "
        "but game already ended, "
        "they will receive notification that game already ended",
            (){
          const playerId = "192.168.23.9";
          const playerName = "player3";

          final TicTacToeGameStateV2 endedGameState = TicTacToeGameStateV2
              .gameEndedOnlyForTesting();

          final CantJoinGameAlreadyEndedEvent event = endedGameState.handle(
              PlayerJoinEvent(id: playerId, name: playerName)) as CantJoinGameAlreadyEndedEvent;

          expect(event.playerId, playerId);
        });
  });

  group("Scenario : Player Leave",
  (){
    final gameStatusWithNoResponses = [GameStatus.waiting, GameStatus.ended];

    for (final gameStatus in gameStatusWithNoResponses) {
      test("When player leave, "
          "and the game status is ${gameStatus.name}, "
          "then there will be no response event",
          (){
        final TicTacToeGameStateV2 gameState = gameStatus == GameStatus.waiting ?
          TicTacToeGameStateV2.init(
            roomMasterId: TicTacToeGameStateV2.roomMasterIdForTesting,
            roomMasterName: TicTacToeGameStateV2.roomMasterNameForTesting) :
          TicTacToeGameStateV2
            .gameEndedOnlyForTesting();

        final event = gameState.handle(PlayerLeaveEvent(
            playerId: TicTacToeGameStateV2.roomMasterIdForTesting));

        expect(event, isNull);
          });
    }

    test("When player leave, "
        "and the given player id has no match in game state, "
        "then there will be no response event",
            (){
          final TicTacToeGameStateV2 endedGameState = TicTacToeGameStateV2
              .gamePlayingOnlyForTesting();

          final event = endedGameState.handle(PlayerLeaveEvent(
              playerId: "999.99.99.99"));

          expect(event, isNull);
        });

    test("When player leave, "
        "and the id has match and game status is playing, "
        "then the next game status will be ended, "
        "and the leaving player will be losing, "
        "and the other player will be winning",
            (){
          final TicTacToeGameStateV2 playingGameState = TicTacToeGameStateV2
              .gamePlayingOnlyForTesting();
          const leavingPlayerId = TicTacToeGameStateV2.clientIdForTesting;

          final event = playingGameState.handle(PlayerLeaveEvent(
              playerId: leavingPlayerId)) as GameEndedAfterPlayerLeaving;

          expect(event.leavingPlayerId, TicTacToeGameStateV2.clientIdForTesting);
          expect(event.data.after.gameStatus, GameStatus.ended);
          expect(event.data.after.players.singleWhere((player) =>
            player.id == leavingPlayerId).status, PlayerStatus.losing);
          expect(event.data.after.players.singleWhere((player) =>
            player.id != leavingPlayerId).status, PlayerStatus.winning);

          // make sure data hanya berubah seperlunya
          expect(
            playingGameState,
            event.data.after.copyWith(
              players: event.data.after.players.map((player) =>
                player.copyWith(status: PlayerStatus.playing)).toList(),
              gameStatus: GameStatus.playing,
            )
          );
        });
  });
}