// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tic_tac_toe_game_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coordinate _$CoordinateFromJson(Map<String, dynamic> json) => Coordinate(
      row: (json['row'] as num).toInt(),
      col: (json['col'] as num).toInt(),
    );

Map<String, dynamic> _$CoordinateToJson(Coordinate instance) =>
    <String, dynamic>{
      'row': instance.row,
      'col': instance.col,
    };

_$TicTacToeGameStateImpl _$$TicTacToeGameStateImplFromJson(
        Map<String, dynamic> json) =>
    _$TicTacToeGameStateImpl(
      circleCoordinates: (json['circleCoordinates'] as List<dynamic>)
          .map((e) => Coordinate.fromJson(e as Map<String, dynamic>))
          .toList(),
      crossCoordinates: (json['crossCoordinates'] as List<dynamic>)
          .map((e) => Coordinate.fromJson(e as Map<String, dynamic>))
          .toList(),
      isRoomMasterTurn: json['isRoomMasterTurn'] as bool,
      winner: $enumDecodeNullable(_$TicTacToeWinnerEnumMap, json['winner']),
    );

Map<String, dynamic> _$$TicTacToeGameStateImplToJson(
        _$TicTacToeGameStateImpl instance) =>
    <String, dynamic>{
      'circleCoordinates':
          instance.circleCoordinates.map((e) => e.toJson()).toList(),
      'crossCoordinates':
          instance.crossCoordinates.map((e) => e.toJson()).toList(),
      'isRoomMasterTurn': instance.isRoomMasterTurn,
      'winner': _$TicTacToeWinnerEnumMap[instance.winner],
    };

const _$TicTacToeWinnerEnumMap = {
  TicTacToeWinner.client: 'client',
  TicTacToeWinner.roomMaster: 'roomMaster',
};
