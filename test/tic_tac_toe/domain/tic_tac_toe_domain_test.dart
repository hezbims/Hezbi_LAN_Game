import 'package:flutter_test/flutter_test.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/model/tic_tac_toe_cell_state.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/player_status.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/tic_tac_toe_game_state_v2.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/event/tic_tac_toe_action_event.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/event/tic_tac_toe_response_event.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/game_status.dart';

void main() {
  test('''When room master initialized the room, 
  the initial game state should be correct''',
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

  // test('When second player join the game, it should immediately start the game', () {
  //   final secondPlayerId = "234"
  //   final StartGameEvent event = waitingGameState
  //       .handle(new PlayerJoinEvent(id: secondPlayerId));
  //
  //   expect(event.data.before.gameStatus , GameStatus.Waiting);
  //   expect(event.data.after.gameStatus, GameStatus.Playing);
  // });
  //

  test("""When third player try to join the game, 
  they will receive notification that they can't join""",
  (){
    const thirdPlayerId = "192.168.45.1";
    const thirdPlayerName = "player3";

    TicTacToeGameStateV2 playingGameState = TicTacToeGameStateV2
      .gamePlayingOnlyForTesting();
    final CantJoinGameAlreadyPlayingEvent event = playingGameState
        .handle(PlayerJoinEvent(id: thirdPlayerId, name: thirdPlayerName)) as CantJoinGameAlreadyPlayingEvent;

    expect(event.playerId, thirdPlayerId);
  });

  test("""When player try to join the game, 
  but game already ended, 
  they will receive notification that game already ended""",
  (){
    const playerId = "192.168.23.9";
    const playerName = "player3";

    final TicTacToeGameStateV2 endedGameState = TicTacToeGameStateV2
        .gameEndedOnlyForTesting();

    final CantJoinGameAlreadyEndedEvent event = endedGameState.handle(
        PlayerJoinEvent(id: playerId, name: playerName)) as CantJoinGameAlreadyEndedEvent;

    expect(event.playerId, playerId);
  });
}