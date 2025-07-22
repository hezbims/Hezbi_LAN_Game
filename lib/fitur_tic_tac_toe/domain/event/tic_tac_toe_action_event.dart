
sealed class TicTacToeActionEvent {}

class PlayerJoinEvent extends TicTacToeActionEvent {
  final String joinPlayerId;
  final String joinPlayerName;

  PlayerJoinEvent({
    required String id,
    required String name,
  }) : joinPlayerId = id, joinPlayerName = name;
}