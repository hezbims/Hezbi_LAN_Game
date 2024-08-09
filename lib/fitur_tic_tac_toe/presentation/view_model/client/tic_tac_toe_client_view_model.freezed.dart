// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tic_tac_toe_client_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicTacToeClientEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectToServer,
    required TResult Function(int row, int col) clickTile,
    required TResult Function(TicTacToeGameState gameState) newGameState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectToServer,
    TResult? Function(int row, int col)? clickTile,
    TResult? Function(TicTacToeGameState gameState)? newGameState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectToServer,
    TResult Function(int row, int col)? clickTile,
    TResult Function(TicTacToeGameState gameState)? newGameState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectToServer value) connectToServer,
    required TResult Function(ClickTile value) clickTile,
    required TResult Function(NewGameState value) newGameState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectToServer value)? connectToServer,
    TResult? Function(ClickTile value)? clickTile,
    TResult? Function(NewGameState value)? newGameState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectToServer value)? connectToServer,
    TResult Function(ClickTile value)? clickTile,
    TResult Function(NewGameState value)? newGameState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicTacToeClientEventCopyWith<$Res> {
  factory $TicTacToeClientEventCopyWith(TicTacToeClientEvent value,
          $Res Function(TicTacToeClientEvent) then) =
      _$TicTacToeClientEventCopyWithImpl<$Res, TicTacToeClientEvent>;
}

/// @nodoc
class _$TicTacToeClientEventCopyWithImpl<$Res,
        $Val extends TicTacToeClientEvent>
    implements $TicTacToeClientEventCopyWith<$Res> {
  _$TicTacToeClientEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConnectToServerImplCopyWith<$Res> {
  factory _$$ConnectToServerImplCopyWith(_$ConnectToServerImpl value,
          $Res Function(_$ConnectToServerImpl) then) =
      __$$ConnectToServerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectToServerImplCopyWithImpl<$Res>
    extends _$TicTacToeClientEventCopyWithImpl<$Res, _$ConnectToServerImpl>
    implements _$$ConnectToServerImplCopyWith<$Res> {
  __$$ConnectToServerImplCopyWithImpl(
      _$ConnectToServerImpl _value, $Res Function(_$ConnectToServerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectToServerImpl implements ConnectToServer {
  const _$ConnectToServerImpl();

  @override
  String toString() {
    return 'TicTacToeClientEvent.connectToServer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectToServerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectToServer,
    required TResult Function(int row, int col) clickTile,
    required TResult Function(TicTacToeGameState gameState) newGameState,
  }) {
    return connectToServer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectToServer,
    TResult? Function(int row, int col)? clickTile,
    TResult? Function(TicTacToeGameState gameState)? newGameState,
  }) {
    return connectToServer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectToServer,
    TResult Function(int row, int col)? clickTile,
    TResult Function(TicTacToeGameState gameState)? newGameState,
    required TResult orElse(),
  }) {
    if (connectToServer != null) {
      return connectToServer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectToServer value) connectToServer,
    required TResult Function(ClickTile value) clickTile,
    required TResult Function(NewGameState value) newGameState,
  }) {
    return connectToServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectToServer value)? connectToServer,
    TResult? Function(ClickTile value)? clickTile,
    TResult? Function(NewGameState value)? newGameState,
  }) {
    return connectToServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectToServer value)? connectToServer,
    TResult Function(ClickTile value)? clickTile,
    TResult Function(NewGameState value)? newGameState,
    required TResult orElse(),
  }) {
    if (connectToServer != null) {
      return connectToServer(this);
    }
    return orElse();
  }
}

abstract class ConnectToServer implements TicTacToeClientEvent {
  const factory ConnectToServer() = _$ConnectToServerImpl;
}

/// @nodoc
abstract class _$$ClickTileImplCopyWith<$Res> {
  factory _$$ClickTileImplCopyWith(
          _$ClickTileImpl value, $Res Function(_$ClickTileImpl) then) =
      __$$ClickTileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int row, int col});
}

/// @nodoc
class __$$ClickTileImplCopyWithImpl<$Res>
    extends _$TicTacToeClientEventCopyWithImpl<$Res, _$ClickTileImpl>
    implements _$$ClickTileImplCopyWith<$Res> {
  __$$ClickTileImplCopyWithImpl(
      _$ClickTileImpl _value, $Res Function(_$ClickTileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = null,
    Object? col = null,
  }) {
    return _then(_$ClickTileImpl(
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      col: null == col
          ? _value.col
          : col // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ClickTileImpl implements ClickTile {
  const _$ClickTileImpl({required this.row, required this.col});

  @override
  final int row;
  @override
  final int col;

  @override
  String toString() {
    return 'TicTacToeClientEvent.clickTile(row: $row, col: $col)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickTileImpl &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.col, col) || other.col == col));
  }

  @override
  int get hashCode => Object.hash(runtimeType, row, col);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClickTileImplCopyWith<_$ClickTileImpl> get copyWith =>
      __$$ClickTileImplCopyWithImpl<_$ClickTileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectToServer,
    required TResult Function(int row, int col) clickTile,
    required TResult Function(TicTacToeGameState gameState) newGameState,
  }) {
    return clickTile(row, col);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectToServer,
    TResult? Function(int row, int col)? clickTile,
    TResult? Function(TicTacToeGameState gameState)? newGameState,
  }) {
    return clickTile?.call(row, col);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectToServer,
    TResult Function(int row, int col)? clickTile,
    TResult Function(TicTacToeGameState gameState)? newGameState,
    required TResult orElse(),
  }) {
    if (clickTile != null) {
      return clickTile(row, col);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectToServer value) connectToServer,
    required TResult Function(ClickTile value) clickTile,
    required TResult Function(NewGameState value) newGameState,
  }) {
    return clickTile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectToServer value)? connectToServer,
    TResult? Function(ClickTile value)? clickTile,
    TResult? Function(NewGameState value)? newGameState,
  }) {
    return clickTile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectToServer value)? connectToServer,
    TResult Function(ClickTile value)? clickTile,
    TResult Function(NewGameState value)? newGameState,
    required TResult orElse(),
  }) {
    if (clickTile != null) {
      return clickTile(this);
    }
    return orElse();
  }
}

abstract class ClickTile implements TicTacToeClientEvent {
  const factory ClickTile({required final int row, required final int col}) =
      _$ClickTileImpl;

  int get row;
  int get col;
  @JsonKey(ignore: true)
  _$$ClickTileImplCopyWith<_$ClickTileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewGameStateImplCopyWith<$Res> {
  factory _$$NewGameStateImplCopyWith(
          _$NewGameStateImpl value, $Res Function(_$NewGameStateImpl) then) =
      __$$NewGameStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TicTacToeGameState gameState});

  $TicTacToeGameStateCopyWith<$Res> get gameState;
}

/// @nodoc
class __$$NewGameStateImplCopyWithImpl<$Res>
    extends _$TicTacToeClientEventCopyWithImpl<$Res, _$NewGameStateImpl>
    implements _$$NewGameStateImplCopyWith<$Res> {
  __$$NewGameStateImplCopyWithImpl(
      _$NewGameStateImpl _value, $Res Function(_$NewGameStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameState = null,
  }) {
    return _then(_$NewGameStateImpl(
      null == gameState
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as TicTacToeGameState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TicTacToeGameStateCopyWith<$Res> get gameState {
    return $TicTacToeGameStateCopyWith<$Res>(_value.gameState, (value) {
      return _then(_value.copyWith(gameState: value));
    });
  }
}

/// @nodoc

class _$NewGameStateImpl implements NewGameState {
  const _$NewGameStateImpl(this.gameState);

  @override
  final TicTacToeGameState gameState;

  @override
  String toString() {
    return 'TicTacToeClientEvent.newGameState(gameState: $gameState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewGameStateImpl &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewGameStateImplCopyWith<_$NewGameStateImpl> get copyWith =>
      __$$NewGameStateImplCopyWithImpl<_$NewGameStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectToServer,
    required TResult Function(int row, int col) clickTile,
    required TResult Function(TicTacToeGameState gameState) newGameState,
  }) {
    return newGameState(gameState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectToServer,
    TResult? Function(int row, int col)? clickTile,
    TResult? Function(TicTacToeGameState gameState)? newGameState,
  }) {
    return newGameState?.call(gameState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectToServer,
    TResult Function(int row, int col)? clickTile,
    TResult Function(TicTacToeGameState gameState)? newGameState,
    required TResult orElse(),
  }) {
    if (newGameState != null) {
      return newGameState(gameState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectToServer value) connectToServer,
    required TResult Function(ClickTile value) clickTile,
    required TResult Function(NewGameState value) newGameState,
  }) {
    return newGameState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectToServer value)? connectToServer,
    TResult? Function(ClickTile value)? clickTile,
    TResult? Function(NewGameState value)? newGameState,
  }) {
    return newGameState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectToServer value)? connectToServer,
    TResult Function(ClickTile value)? clickTile,
    TResult Function(NewGameState value)? newGameState,
    required TResult orElse(),
  }) {
    if (newGameState != null) {
      return newGameState(this);
    }
    return orElse();
  }
}

abstract class NewGameState implements TicTacToeClientEvent {
  const factory NewGameState(final TicTacToeGameState gameState) =
      _$NewGameStateImpl;

  TicTacToeGameState get gameState;
  @JsonKey(ignore: true)
  _$$NewGameStateImplCopyWith<_$NewGameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicTacToeClientState {
  ResponseWrapper<dynamic> get connectResponse =>
      throw _privateConstructorUsedError;
  TicTacToeGameState? get gameState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicTacToeClientStateCopyWith<TicTacToeClientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicTacToeClientStateCopyWith<$Res> {
  factory $TicTacToeClientStateCopyWith(TicTacToeClientState value,
          $Res Function(TicTacToeClientState) then) =
      _$TicTacToeClientStateCopyWithImpl<$Res, TicTacToeClientState>;
  @useResult
  $Res call(
      {ResponseWrapper<dynamic> connectResponse,
      TicTacToeGameState? gameState});

  $ResponseWrapperCopyWith<dynamic, $Res> get connectResponse;
  $TicTacToeGameStateCopyWith<$Res>? get gameState;
}

/// @nodoc
class _$TicTacToeClientStateCopyWithImpl<$Res,
        $Val extends TicTacToeClientState>
    implements $TicTacToeClientStateCopyWith<$Res> {
  _$TicTacToeClientStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectResponse = null,
    Object? gameState = freezed,
  }) {
    return _then(_value.copyWith(
      connectResponse: null == connectResponse
          ? _value.connectResponse
          : connectResponse // ignore: cast_nullable_to_non_nullable
              as ResponseWrapper<dynamic>,
      gameState: freezed == gameState
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as TicTacToeGameState?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseWrapperCopyWith<dynamic, $Res> get connectResponse {
    return $ResponseWrapperCopyWith<dynamic, $Res>(_value.connectResponse,
        (value) {
      return _then(_value.copyWith(connectResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TicTacToeGameStateCopyWith<$Res>? get gameState {
    if (_value.gameState == null) {
      return null;
    }

    return $TicTacToeGameStateCopyWith<$Res>(_value.gameState!, (value) {
      return _then(_value.copyWith(gameState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicTacToeClientStateImplCopyWith<$Res>
    implements $TicTacToeClientStateCopyWith<$Res> {
  factory _$$TicTacToeClientStateImplCopyWith(_$TicTacToeClientStateImpl value,
          $Res Function(_$TicTacToeClientStateImpl) then) =
      __$$TicTacToeClientStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseWrapper<dynamic> connectResponse,
      TicTacToeGameState? gameState});

  @override
  $ResponseWrapperCopyWith<dynamic, $Res> get connectResponse;
  @override
  $TicTacToeGameStateCopyWith<$Res>? get gameState;
}

/// @nodoc
class __$$TicTacToeClientStateImplCopyWithImpl<$Res>
    extends _$TicTacToeClientStateCopyWithImpl<$Res, _$TicTacToeClientStateImpl>
    implements _$$TicTacToeClientStateImplCopyWith<$Res> {
  __$$TicTacToeClientStateImplCopyWithImpl(_$TicTacToeClientStateImpl _value,
      $Res Function(_$TicTacToeClientStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectResponse = null,
    Object? gameState = freezed,
  }) {
    return _then(_$TicTacToeClientStateImpl(
      connectResponse: null == connectResponse
          ? _value.connectResponse
          : connectResponse // ignore: cast_nullable_to_non_nullable
              as ResponseWrapper<dynamic>,
      gameState: freezed == gameState
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as TicTacToeGameState?,
    ));
  }
}

/// @nodoc

class _$TicTacToeClientStateImpl implements _TicTacToeClientState {
  const _$TicTacToeClientStateImpl(
      {required this.connectResponse, required this.gameState});

  @override
  final ResponseWrapper<dynamic> connectResponse;
  @override
  final TicTacToeGameState? gameState;

  @override
  String toString() {
    return 'TicTacToeClientState(connectResponse: $connectResponse, gameState: $gameState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicTacToeClientStateImpl &&
            (identical(other.connectResponse, connectResponse) ||
                other.connectResponse == connectResponse) &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectResponse, gameState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicTacToeClientStateImplCopyWith<_$TicTacToeClientStateImpl>
      get copyWith =>
          __$$TicTacToeClientStateImplCopyWithImpl<_$TicTacToeClientStateImpl>(
              this, _$identity);
}

abstract class _TicTacToeClientState implements TicTacToeClientState {
  const factory _TicTacToeClientState(
          {required final ResponseWrapper<dynamic> connectResponse,
          required final TicTacToeGameState? gameState}) =
      _$TicTacToeClientStateImpl;

  @override
  ResponseWrapper<dynamic> get connectResponse;
  @override
  TicTacToeGameState? get gameState;
  @override
  @JsonKey(ignore: true)
  _$$TicTacToeClientStateImplCopyWith<_$TicTacToeClientStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
