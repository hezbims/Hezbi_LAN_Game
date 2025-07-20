// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tic_tac_toe_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicTacToeGameState {
  List<Coordinate> get circleCoordinates;
  List<Coordinate> get crossCoordinates;
  bool get isRoomMasterTurn;
  TicTacToeEndGameStatus? get endGameStatus;

  /// Create a copy of TicTacToeGameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TicTacToeGameStateCopyWith<TicTacToeGameState> get copyWith =>
      _$TicTacToeGameStateCopyWithImpl<TicTacToeGameState>(
          this as TicTacToeGameState, _$identity);

  /// Serializes this TicTacToeGameState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TicTacToeGameState &&
            const DeepCollectionEquality()
                .equals(other.circleCoordinates, circleCoordinates) &&
            const DeepCollectionEquality()
                .equals(other.crossCoordinates, crossCoordinates) &&
            (identical(other.isRoomMasterTurn, isRoomMasterTurn) ||
                other.isRoomMasterTurn == isRoomMasterTurn) &&
            (identical(other.endGameStatus, endGameStatus) ||
                other.endGameStatus == endGameStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(circleCoordinates),
      const DeepCollectionEquality().hash(crossCoordinates),
      isRoomMasterTurn,
      endGameStatus);

  @override
  String toString() {
    return 'TicTacToeGameState(circleCoordinates: $circleCoordinates, crossCoordinates: $crossCoordinates, isRoomMasterTurn: $isRoomMasterTurn, endGameStatus: $endGameStatus)';
  }
}

/// @nodoc
abstract mixin class $TicTacToeGameStateCopyWith<$Res> {
  factory $TicTacToeGameStateCopyWith(
          TicTacToeGameState value, $Res Function(TicTacToeGameState) _then) =
      _$TicTacToeGameStateCopyWithImpl;
  @useResult
  $Res call(
      {List<Coordinate> circleCoordinates,
      List<Coordinate> crossCoordinates,
      bool isRoomMasterTurn,
      TicTacToeEndGameStatus? endGameStatus});
}

/// @nodoc
class _$TicTacToeGameStateCopyWithImpl<$Res>
    implements $TicTacToeGameStateCopyWith<$Res> {
  _$TicTacToeGameStateCopyWithImpl(this._self, this._then);

  final TicTacToeGameState _self;
  final $Res Function(TicTacToeGameState) _then;

  /// Create a copy of TicTacToeGameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? circleCoordinates = null,
    Object? crossCoordinates = null,
    Object? isRoomMasterTurn = null,
    Object? endGameStatus = freezed,
  }) {
    return _then(_self.copyWith(
      circleCoordinates: null == circleCoordinates
          ? _self.circleCoordinates
          : circleCoordinates // ignore: cast_nullable_to_non_nullable
              as List<Coordinate>,
      crossCoordinates: null == crossCoordinates
          ? _self.crossCoordinates
          : crossCoordinates // ignore: cast_nullable_to_non_nullable
              as List<Coordinate>,
      isRoomMasterTurn: null == isRoomMasterTurn
          ? _self.isRoomMasterTurn
          : isRoomMasterTurn // ignore: cast_nullable_to_non_nullable
              as bool,
      endGameStatus: freezed == endGameStatus
          ? _self.endGameStatus
          : endGameStatus // ignore: cast_nullable_to_non_nullable
              as TicTacToeEndGameStatus?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TicTacToeGameState].
extension TicTacToeGameStatePatterns on TicTacToeGameState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TicTacToeGameState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TicTacToeGameState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TicTacToeGameState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TicTacToeGameState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TicTacToeGameState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TicTacToeGameState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            List<Coordinate> circleCoordinates,
            List<Coordinate> crossCoordinates,
            bool isRoomMasterTurn,
            TicTacToeEndGameStatus? endGameStatus)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TicTacToeGameState() when $default != null:
        return $default(_that.circleCoordinates, _that.crossCoordinates,
            _that.isRoomMasterTurn, _that.endGameStatus);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            List<Coordinate> circleCoordinates,
            List<Coordinate> crossCoordinates,
            bool isRoomMasterTurn,
            TicTacToeEndGameStatus? endGameStatus)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TicTacToeGameState():
        return $default(_that.circleCoordinates, _that.crossCoordinates,
            _that.isRoomMasterTurn, _that.endGameStatus);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            List<Coordinate> circleCoordinates,
            List<Coordinate> crossCoordinates,
            bool isRoomMasterTurn,
            TicTacToeEndGameStatus? endGameStatus)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TicTacToeGameState() when $default != null:
        return $default(_that.circleCoordinates, _that.crossCoordinates,
            _that.isRoomMasterTurn, _that.endGameStatus);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _TicTacToeGameState implements TicTacToeGameState {
  const _TicTacToeGameState(
      {required final List<Coordinate> circleCoordinates,
      required final List<Coordinate> crossCoordinates,
      required this.isRoomMasterTurn,
      required this.endGameStatus})
      : _circleCoordinates = circleCoordinates,
        _crossCoordinates = crossCoordinates;
  factory _TicTacToeGameState.fromJson(Map<String, dynamic> json) =>
      _$TicTacToeGameStateFromJson(json);

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

  /// Create a copy of TicTacToeGameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TicTacToeGameStateCopyWith<_TicTacToeGameState> get copyWith =>
      __$TicTacToeGameStateCopyWithImpl<_TicTacToeGameState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TicTacToeGameStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TicTacToeGameState &&
            const DeepCollectionEquality()
                .equals(other._circleCoordinates, _circleCoordinates) &&
            const DeepCollectionEquality()
                .equals(other._crossCoordinates, _crossCoordinates) &&
            (identical(other.isRoomMasterTurn, isRoomMasterTurn) ||
                other.isRoomMasterTurn == isRoomMasterTurn) &&
            (identical(other.endGameStatus, endGameStatus) ||
                other.endGameStatus == endGameStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_circleCoordinates),
      const DeepCollectionEquality().hash(_crossCoordinates),
      isRoomMasterTurn,
      endGameStatus);

  @override
  String toString() {
    return 'TicTacToeGameState(circleCoordinates: $circleCoordinates, crossCoordinates: $crossCoordinates, isRoomMasterTurn: $isRoomMasterTurn, endGameStatus: $endGameStatus)';
  }
}

/// @nodoc
abstract mixin class _$TicTacToeGameStateCopyWith<$Res>
    implements $TicTacToeGameStateCopyWith<$Res> {
  factory _$TicTacToeGameStateCopyWith(
          _TicTacToeGameState value, $Res Function(_TicTacToeGameState) _then) =
      __$TicTacToeGameStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Coordinate> circleCoordinates,
      List<Coordinate> crossCoordinates,
      bool isRoomMasterTurn,
      TicTacToeEndGameStatus? endGameStatus});
}

/// @nodoc
class __$TicTacToeGameStateCopyWithImpl<$Res>
    implements _$TicTacToeGameStateCopyWith<$Res> {
  __$TicTacToeGameStateCopyWithImpl(this._self, this._then);

  final _TicTacToeGameState _self;
  final $Res Function(_TicTacToeGameState) _then;

  /// Create a copy of TicTacToeGameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? circleCoordinates = null,
    Object? crossCoordinates = null,
    Object? isRoomMasterTurn = null,
    Object? endGameStatus = freezed,
  }) {
    return _then(_TicTacToeGameState(
      circleCoordinates: null == circleCoordinates
          ? _self._circleCoordinates
          : circleCoordinates // ignore: cast_nullable_to_non_nullable
              as List<Coordinate>,
      crossCoordinates: null == crossCoordinates
          ? _self._crossCoordinates
          : crossCoordinates // ignore: cast_nullable_to_non_nullable
              as List<Coordinate>,
      isRoomMasterTurn: null == isRoomMasterTurn
          ? _self.isRoomMasterTurn
          : isRoomMasterTurn // ignore: cast_nullable_to_non_nullable
              as bool,
      endGameStatus: freezed == endGameStatus
          ? _self.endGameStatus
          : endGameStatus // ignore: cast_nullable_to_non_nullable
              as TicTacToeEndGameStatus?,
    ));
  }
}

// dart format on
