enum MyGames {
  ticTacToe(
    gamePort: 11111,
    serviceBroadcastPort: 21111,
    serviceName: '_tic-tac-toe-service._tcp',
  );

  final int gamePort, serviceBroadcastPort;
  final String serviceName;
  const MyGames({
    required this.gamePort,
    required this.serviceBroadcastPort,
    required this.serviceName,
  });
}