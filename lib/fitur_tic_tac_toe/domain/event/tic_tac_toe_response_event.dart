
import '../value_object/tic_tac_toe_game_state_v2.dart';
import '../value_object/before_after_model.dart';

sealed class TicTacToeResponseEvent {}

// region Side effect event
sealed class TicTacToeSideEffectEvent extends TicTacToeResponseEvent {
  final BeforeAfterModel data;

  TicTacToeSideEffectEvent({
    required TicTacToeGameStateV2 before,
    required TicTacToeGameStateV2 after,
  }) : data = BeforeAfterModel(
      before: before,
      after: after);
}

class StartGameEvent extends TicTacToeSideEffectEvent {
  StartGameEvent({
    required super.before,
    required super.after,
  });
}
//endregion

// region No effect event
sealed class TicTacToeNoEffectEvent extends TicTacToeResponseEvent {}

class CantJoinGameAlreadyEndedEvent extends TicTacToeNoEffectEvent {
  final String playerId;
  CantJoinGameAlreadyEndedEvent({required this.playerId});
}

class CantJoinGameAlreadyPlayingEvent extends TicTacToeNoEffectEvent {
  final String playerId;
  CantJoinGameAlreadyPlayingEvent({required this.playerId});
}
// endregion