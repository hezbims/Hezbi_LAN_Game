// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tic_tac_toe_game_state_v2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicTacToeGameStateV2 {
  GameStatus get gameStatus;
  List<List<CellMark?>> get cells;
  String get roomMasterId;
  List<Player> get players;
  String? get currentPlayerIdTurn;

  /// Create a copy of TicTacToeGameStateV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TicTacToeGameStateV2CopyWith<TicTacToeGameStateV2> get copyWith =>
      _$TicTacToeGameStateV2CopyWithImpl<TicTacToeGameStateV2>(
          this as TicTacToeGameStateV2, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TicTacToeGameStateV2 &&
            (identical(other.gameStatus, gameStatus) ||
                other.gameStatus == gameStatus) &&
            const DeepCollectionEquality().equals(other.cells, cells) &&
            (identical(other.roomMasterId, roomMasterId) ||
                other.roomMasterId == roomMasterId) &&
            const DeepCollectionEquality().equals(other.players, players) &&
            (identical(other.currentPlayerIdTurn, currentPlayerIdTurn) ||
                other.currentPlayerIdTurn == currentPlayerIdTurn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      gameStatus,
      const DeepCollectionEquality().hash(cells),
      roomMasterId,
      const DeepCollectionEquality().hash(players),
      currentPlayerIdTurn);

  @override
  String toString() {
    return 'TicTacToeGameStateV2(gameStatus: $gameStatus, cells: $cells, roomMasterId: $roomMasterId, players: $players, currentPlayerIdTurn: $currentPlayerIdTurn)';
  }
}

/// @nodoc
abstract mixin class $TicTacToeGameStateV2CopyWith<$Res> {
  factory $TicTacToeGameStateV2CopyWith(TicTacToeGameStateV2 value,
          $Res Function(TicTacToeGameStateV2) _then) =
      _$TicTacToeGameStateV2CopyWithImpl;
  @useResult
  $Res call(
      {GameStatus gameStatus,
      List<List<CellMark?>> cells,
      String roomMasterId,
      List<Player> players,
      String? currentPlayerIdTurn});
}

/// @nodoc
class _$TicTacToeGameStateV2CopyWithImpl<$Res>
    implements $TicTacToeGameStateV2CopyWith<$Res> {
  _$TicTacToeGameStateV2CopyWithImpl(this._self, this._then);

  final TicTacToeGameStateV2 _self;
  final $Res Function(TicTacToeGameStateV2) _then;

  /// Create a copy of TicTacToeGameStateV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameStatus = null,
    Object? cells = null,
    Object? roomMasterId = null,
    Object? players = null,
    Object? currentPlayerIdTurn = freezed,
  }) {
    return _then(TicTacToeGameStateV2._privateConstructor(
      gameStatus: null == gameStatus
          ? _self.gameStatus
          : gameStatus // ignore: cast_nullable_to_non_nullable
              as GameStatus,
      cells: null == cells
          ? _self.cells
          : cells // ignore: cast_nullable_to_non_nullable
              as List<List<CellMark?>>,
      roomMasterId: null == roomMasterId
          ? _self.roomMasterId
          : roomMasterId // ignore: cast_nullable_to_non_nullable
              as String,
      players: null == players
          ? _self.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      currentPlayerIdTurn: freezed == currentPlayerIdTurn
          ? _self.currentPlayerIdTurn
          : currentPlayerIdTurn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
