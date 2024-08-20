import 'package:freezed_annotation/freezed_annotation.dart';

enum MyGameType {
  @JsonValue(0)
  ticTacToe(
    serviceName: '_tic-tac-toe-service._tcp',
  );

  final String serviceName;
  const MyGameType({
    required this.serviceName,
  });
}