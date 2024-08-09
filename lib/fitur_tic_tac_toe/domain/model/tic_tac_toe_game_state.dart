import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tic_tac_toe_game_state.freezed.dart';
part 'tic_tac_toe_game_state.g.dart';

@Freezed()
class TicTacToeGameState with _$TicTacToeGameState {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory TicTacToeGameState({
    required List<Coordinate> circleCoordinates,
    required List<Coordinate> crossCoordinates,
    required bool isRoomMasterTurn,
    required TicTacToeWinner? winner,
  }) = _TicTacToeGameState;

  factory TicTacToeGameState.fromJson(Map<String, dynamic> json) =>
    _$TicTacToeGameStateFromJson(json);

  factory TicTacToeGameState.init(){
    return TicTacToeGameState(
      circleCoordinates: [],
      crossCoordinates: [],
      isRoomMasterTurn: Random().nextInt(2) % 2 == 0 ? true : false,
      winner: null,
    );
  }
}

enum TicTacToeWinner {
  client, roomMaster
}

@JsonSerializable()
class Coordinate {
  final int row, col;
  Coordinate({required this.row, required this.col});

  factory Coordinate.fromJson(Map<String, dynamic> json) =>
      _$CoordinateFromJson(json);
  Map<String, dynamic> toJson() => _$CoordinateToJson(this);
}