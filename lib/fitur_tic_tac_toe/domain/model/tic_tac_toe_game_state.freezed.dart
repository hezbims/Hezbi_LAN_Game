// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tic_tac_toe_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TicTacToeGameState _$TicTacToeGameStateFromJson(Map<String, dynamic> json) {
  return _TicTacToeGameState.fromJson(json);
}

/// @nodoc
mixin _$TicTacToeGameState {
  List<Coordinate> get circleCoordinates => throw _privateConstructorUsedError;
  List<Coordinate> get crossCoordinates => throw _privateConstructorUsedError;
  bool get isRoomMasterTurn => throw _privateConstructorUsedError;
  TicTacToeEndGameStatus? get endGameStatus =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicTacToeGameStateCopyWith<TicTacToeGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicTacToeGameStateCopyWith<$Res> {
  factory $TicTacToeGameStateCopyWith(
          TicTacToeGameState value, $Res Function(TicTacToeGameState) then) =
      _$TicTacToeGameStateCopyWithImpl<$Res, TicTacToeGameState>;
  @useResult
  $Res call(
      {List<Coordinate> circleCoordinates,
      List<Coordinate> crossCoordinates,
      bool isRoomMasterTurn,
      TicTacToeEndGameStatus? endGameStatus});
}

/// @nodoc
class _$TicTacToeGameStateCopyWithImpl<$Res, $Val extends TicTacToeGameState>
    implements $TicTacToeGameStateCopyWith<$Res> {
  _$TicTacToeGameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? circleCoordinates = null,
    Object? crossCoordinates = null,
    Object? isRoomMasterTurn = null,
    Object? endGameStatus = freezed,
  }) {
    return _then(_value.copyWith(
      circleCoordinates: null == circleCoordinates
          ? _value.circleCoordinates
          : circleCoordinates // ignore: cast_nullable_to_non_nullable
              as List<Coordinate>,
      crossCoordinates: null == crossCoordinates
          ? _value.crossCoordinates
          : crossCoordinates // ignore: cast_nullable_to_non_nullable
              as List<Coordinate>,
      isRoomMasterTurn: null == isRoomMasterTurn
          ? _value.isRoomMasterTurn
          : isRoomMasterTurn // ignore: cast_nullable_to_non_nullable
              as bool,
      endGameStatus: freezed == endGameStatus
          ? _value.endGameStatus
          : endGameStatus // ignore: cast_nullable_to_non_nullable
              as TicTacToeEndGameStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicTacToeGameStateImplCopyWith<$Res>
    implements $TicTacToeGameStateCopyWith<$Res> {
  factory _$$TicTacToeGameStateImplCopyWith(_$TicTacToeGameStateImpl value,
          $Res Function(_$TicTacToeGameStateImpl) then) =
      __$$TicTacToeGameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Coordinate> circleCoordinates,
      List<Coordinate> crossCoordinates,
      bool isRoomMasterTurn,
      TicTacToeEndGameStatus? endGameStatus});
}

/// @nodoc
class __$$TicTacToeGameStateImplCopyWithImpl<$Res>
    extends _$TicTacToeGameStateCopyWithImpl<$Res, _$TicTacToeGameStateImpl>
    implements _$$TicTacToeGameStateImplCopyWith<$Res> {
  __$$TicTacToeGameStateImplCopyWithImpl(_$TicTacToeGameStateImpl _value,
      $Res Function(_$TicTacToeGameStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? circleCoordinates = null,
    Object? crossCoordinates = null,
    Object? isRoomMasterTurn = null,
    Object? endGameStatus = freezed,
  }) {
    return _then(_$TicTacToeGameStateImpl(
      circleCoordinates: null == circleCoordinates
          ? _value._circleCoordinates
          : circleCoordinates // ignore: cast_nullable_to_non_nullable
              as List<Coordinate>,
      crossCoordinates: null == crossCoordinates
          ? _value._crossCoordinates
          : crossCoordinates // ignore: cast_nullable_to_non_nullable
              as List<Coordinate>,
      isRoomMasterTurn: null == isRoomMasterTurn
          ? _value.isRoomMasterTurn
          : isRoomMasterTurn // ignore: cast_nullable_to_non_nullable
              as bool,
      endGameStatus: freezed == endGameStatus
          ? _value.endGameStatus
          : endGameStatus // ignore: cast_nullable_to_non_nullable
              as TicTacToeEndGameStatus?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TicTacToeGameStateImpl implements _TicTacToeGameState {
  const _$TicTacToeGameStateImpl(
      {required final List<Coordinate> circleCoordinates,
      required final List<Coordinate> crossCoordinates,
      required this.isRoomMasterTurn,
      required this.endGameStatus})
      : _circleCoordinates = circleCoordinates,
        _crossCoordinates = crossCoordinates;

  factory _$TicTacToeGameStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicTacToeGameStateImplFromJson(json);

  final List<Coordinate> _circleCoordinates;
  @override
  List<Coordinate> get circleCoordinates {
    if (_circleCoordinates is EqualUnmodifiableListView)
      return _circleCoordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_circleCoordinates);
  }

  final List<Coordinate> _crossCoordinates;
  @override
  List<Coordinate> get crossCoordinates {
    if (_crossCoordinates is EqualUnmodifiableListView)
      return _crossCoordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crossCoordinates);
  }

  @override
  final bool isRoomMasterTurn;
  @override
  final TicTacToeEndGameStatus? endGameStatus;

  @override
  String toString() {
    return 'TicTacToeGameState(circleCoordinates: $circleCoordinates, crossCoordinates: $crossCoordinates, isRoomMasterTurn: $isRoomMasterTurn, endGameStatus: $endGameStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicTacToeGameStateImpl &&
            const DeepCollectionEquality()
                .equals(other._circleCoordinates, _circleCoordinates) &&
            const DeepCollectionEquality()
                .equals(other._crossCoordinates, _crossCoordinates) &&
            (identical(other.isRoomMasterTurn, isRoomMasterTurn) ||
                other.isRoomMasterTurn == isRoomMasterTurn) &&
            (identical(other.endGameStatus, endGameStatus) ||
                other.endGameStatus == endGameStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_circleCoordinates),
      const DeepCollectionEquality().hash(_crossCoordinates),
      isRoomMasterTurn,
      endGameStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicTacToeGameStateImplCopyWith<_$TicTacToeGameStateImpl> get copyWith =>
      __$$TicTacToeGameStateImplCopyWithImpl<_$TicTacToeGameStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicTacToeGameStateImplToJson(
      this,
    );
  }
}

abstract class _TicTacToeGameState implements TicTacToeGameState {
  const factory _TicTacToeGameState(
          {required final List<Coordinate> circleCoordinates,
          required final List<Coordinate> crossCoordinates,
          required final bool isRoomMasterTurn,
          required final TicTacToeEndGameStatus? endGameStatus}) =
      _$TicTacToeGameStateImpl;

  factory _TicTacToeGameState.fromJson(Map<String, dynamic> json) =
      _$TicTacToeGameStateImpl.fromJson;

  @override
  List<Coordinate> get circleCoordinates;
  @override
  List<Coordinate> get crossCoordinates;
  @override
  bool get isRoomMasterTurn;
  @override
  TicTacToeEndGameStatus? get endGameStatus;
  @override
  @JsonKey(ignore: true)
  _$$TicTacToeGameStateImplCopyWith<_$TicTacToeGameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
