// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tic_tac_toe_client_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicTacToeClientEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TicTacToeClientEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TicTacToeClientEvent()';
  }
}

/// @nodoc
class $TicTacToeClientEventCopyWith<$Res> {
  $TicTacToeClientEventCopyWith(
      TicTacToeClientEvent _, $Res Function(TicTacToeClientEvent) __);
}

/// Adds pattern-matching-related methods to [TicTacToeClientEvent].
extension TicTacToeClientEventPatterns on TicTacToeClientEvent {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectToServer value)? connectToServer,
    TResult Function(ClickTile value)? clickTile,
    TResult Function(HandleDataFromServer value)? handleDataFromServer,
    TResult Function(HandleErrorFromServer value)? handleErrorFromServer,
    TResult Function(DoneShowEndGameDialog value)? doneShowEndGameDialog,
    TResult Function(QuitGame value)? quitGame,
    TResult Function(_MarkBoard value)? markBoard,
    TResult Function(_ForceQuit value)? forceQuit,
    TResult Function(_DisconnectedFromServer value)? disconnectedFromServer,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ConnectToServer() when connectToServer != null:
        return connectToServer(_that);
      case ClickTile() when clickTile != null:
        return clickTile(_that);
      case HandleDataFromServer() when handleDataFromServer != null:
        return handleDataFromServer(_that);
      case HandleErrorFromServer() when handleErrorFromServer != null:
        return handleErrorFromServer(_that);
      case DoneShowEndGameDialog() when doneShowEndGameDialog != null:
        return doneShowEndGameDialog(_that);
      case QuitGame() when quitGame != null:
        return quitGame(_that);
      case _MarkBoard() when markBoard != null:
        return markBoard(_that);
      case _ForceQuit() when forceQuit != null:
        return forceQuit(_that);
      case _DisconnectedFromServer() when disconnectedFromServer != null:
        return disconnectedFromServer(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectToServer value) connectToServer,
    required TResult Function(ClickTile value) clickTile,
    required TResult Function(HandleDataFromServer value) handleDataFromServer,
    required TResult Function(HandleErrorFromServer value)
        handleErrorFromServer,
    required TResult Function(DoneShowEndGameDialog value)
        doneShowEndGameDialog,
    required TResult Function(QuitGame value) quitGame,
    required TResult Function(_MarkBoard value) markBoard,
    required TResult Function(_ForceQuit value) forceQuit,
    required TResult Function(_DisconnectedFromServer value)
        disconnectedFromServer,
  }) {
    final _that = this;
    switch (_that) {
      case ConnectToServer():
        return connectToServer(_that);
      case ClickTile():
        return clickTile(_that);
      case HandleDataFromServer():
        return handleDataFromServer(_that);
      case HandleErrorFromServer():
        return handleErrorFromServer(_that);
      case DoneShowEndGameDialog():
        return doneShowEndGameDialog(_that);
      case QuitGame():
        return quitGame(_that);
      case _MarkBoard():
        return markBoard(_that);
      case _ForceQuit():
        return forceQuit(_that);
      case _DisconnectedFromServer():
        return disconnectedFromServer(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectToServer value)? connectToServer,
    TResult? Function(ClickTile value)? clickTile,
    TResult? Function(HandleDataFromServer value)? handleDataFromServer,
    TResult? Function(HandleErrorFromServer value)? handleErrorFromServer,
    TResult? Function(DoneShowEndGameDialog value)? doneShowEndGameDialog,
    TResult? Function(QuitGame value)? quitGame,
    TResult? Function(_MarkBoard value)? markBoard,
    TResult? Function(_ForceQuit value)? forceQuit,
    TResult? Function(_DisconnectedFromServer value)? disconnectedFromServer,
  }) {
    final _that = this;
    switch (_that) {
      case ConnectToServer() when connectToServer != null:
        return connectToServer(_that);
      case ClickTile() when clickTile != null:
        return clickTile(_that);
      case HandleDataFromServer() when handleDataFromServer != null:
        return handleDataFromServer(_that);
      case HandleErrorFromServer() when handleErrorFromServer != null:
        return handleErrorFromServer(_that);
      case DoneShowEndGameDialog() when doneShowEndGameDialog != null:
        return doneShowEndGameDialog(_that);
      case QuitGame() when quitGame != null:
        return quitGame(_that);
      case _MarkBoard() when markBoard != null:
        return markBoard(_that);
      case _ForceQuit() when forceQuit != null:
        return forceQuit(_that);
      case _DisconnectedFromServer() when disconnectedFromServer != null:
        return disconnectedFromServer(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectToServer,
    TResult Function(int row, int col)? clickTile,
    TResult Function(dynamic data)? handleDataFromServer,
    TResult Function(Object error)? handleErrorFromServer,
    TResult Function()? doneShowEndGameDialog,
    TResult Function()? quitGame,
    TResult Function(int row, int col)? markBoard,
    TResult Function()? forceQuit,
    TResult Function(int? closeCode, String? closeReason)?
        disconnectedFromServer,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ConnectToServer() when connectToServer != null:
        return connectToServer();
      case ClickTile() when clickTile != null:
        return clickTile(_that.row, _that.col);
      case HandleDataFromServer() when handleDataFromServer != null:
        return handleDataFromServer(_that.data);
      case HandleErrorFromServer() when handleErrorFromServer != null:
        return handleErrorFromServer(_that.error);
      case DoneShowEndGameDialog() when doneShowEndGameDialog != null:
        return doneShowEndGameDialog();
      case QuitGame() when quitGame != null:
        return quitGame();
      case _MarkBoard() when markBoard != null:
        return markBoard(_that.row, _that.col);
      case _ForceQuit() when forceQuit != null:
        return forceQuit();
      case _DisconnectedFromServer() when disconnectedFromServer != null:
        return disconnectedFromServer(_that.closeCode, _that.closeReason);
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
  TResult when<TResult extends Object?>({
    required TResult Function() connectToServer,
    required TResult Function(int row, int col) clickTile,
    required TResult Function(dynamic data) handleDataFromServer,
    required TResult Function(Object error) handleErrorFromServer,
    required TResult Function() doneShowEndGameDialog,
    required TResult Function() quitGame,
    required TResult Function(int row, int col) markBoard,
    required TResult Function() forceQuit,
    required TResult Function(int? closeCode, String? closeReason)
        disconnectedFromServer,
  }) {
    final _that = this;
    switch (_that) {
      case ConnectToServer():
        return connectToServer();
      case ClickTile():
        return clickTile(_that.row, _that.col);
      case HandleDataFromServer():
        return handleDataFromServer(_that.data);
      case HandleErrorFromServer():
        return handleErrorFromServer(_that.error);
      case DoneShowEndGameDialog():
        return doneShowEndGameDialog();
      case QuitGame():
        return quitGame();
      case _MarkBoard():
        return markBoard(_that.row, _that.col);
      case _ForceQuit():
        return forceQuit();
      case _DisconnectedFromServer():
        return disconnectedFromServer(_that.closeCode, _that.closeReason);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectToServer,
    TResult? Function(int row, int col)? clickTile,
    TResult? Function(dynamic data)? handleDataFromServer,
    TResult? Function(Object error)? handleErrorFromServer,
    TResult? Function()? doneShowEndGameDialog,
    TResult? Function()? quitGame,
    TResult? Function(int row, int col)? markBoard,
    TResult? Function()? forceQuit,
    TResult? Function(int? closeCode, String? closeReason)?
        disconnectedFromServer,
  }) {
    final _that = this;
    switch (_that) {
      case ConnectToServer() when connectToServer != null:
        return connectToServer();
      case ClickTile() when clickTile != null:
        return clickTile(_that.row, _that.col);
      case HandleDataFromServer() when handleDataFromServer != null:
        return handleDataFromServer(_that.data);
      case HandleErrorFromServer() when handleErrorFromServer != null:
        return handleErrorFromServer(_that.error);
      case DoneShowEndGameDialog() when doneShowEndGameDialog != null:
        return doneShowEndGameDialog();
      case QuitGame() when quitGame != null:
        return quitGame();
      case _MarkBoard() when markBoard != null:
        return markBoard(_that.row, _that.col);
      case _ForceQuit() when forceQuit != null:
        return forceQuit();
      case _DisconnectedFromServer() when disconnectedFromServer != null:
        return disconnectedFromServer(_that.closeCode, _that.closeReason);
      case _:
        return null;
    }
  }
}

/// @nodoc

class ConnectToServer implements TicTacToeClientEvent {
  const ConnectToServer();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ConnectToServer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TicTacToeClientEvent.connectToServer()';
  }
}

/// @nodoc

class ClickTile implements TicTacToeClientEvent {
  const ClickTile({required this.row, required this.col});

  final int row;
  final int col;

  /// Create a copy of TicTacToeClientEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClickTileCopyWith<ClickTile> get copyWith =>
      _$ClickTileCopyWithImpl<ClickTile>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClickTile &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.col, col) || other.col == col));
  }

  @override
  int get hashCode => Object.hash(runtimeType, row, col);

  @override
  String toString() {
    return 'TicTacToeClientEvent.clickTile(row: $row, col: $col)';
  }
}

/// @nodoc
abstract mixin class $ClickTileCopyWith<$Res>
    implements $TicTacToeClientEventCopyWith<$Res> {
  factory $ClickTileCopyWith(ClickTile value, $Res Function(ClickTile) _then) =
      _$ClickTileCopyWithImpl;
  @useResult
  $Res call({int row, int col});
}

/// @nodoc
class _$ClickTileCopyWithImpl<$Res> implements $ClickTileCopyWith<$Res> {
  _$ClickTileCopyWithImpl(this._self, this._then);

  final ClickTile _self;
  final $Res Function(ClickTile) _then;

  /// Create a copy of TicTacToeClientEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? row = null,
    Object? col = null,
  }) {
    return _then(ClickTile(
      row: null == row
          ? _self.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      col: null == col
          ? _self.col
          : col // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class HandleDataFromServer implements TicTacToeClientEvent {
  const HandleDataFromServer(this.data);

  final dynamic data;

  /// Create a copy of TicTacToeClientEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HandleDataFromServerCopyWith<HandleDataFromServer> get copyWith =>
      _$HandleDataFromServerCopyWithImpl<HandleDataFromServer>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HandleDataFromServer &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'TicTacToeClientEvent.handleDataFromServer(data: $data)';
  }
}

/// @nodoc
abstract mixin class $HandleDataFromServerCopyWith<$Res>
    implements $TicTacToeClientEventCopyWith<$Res> {
  factory $HandleDataFromServerCopyWith(HandleDataFromServer value,
          $Res Function(HandleDataFromServer) _then) =
      _$HandleDataFromServerCopyWithImpl;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class _$HandleDataFromServerCopyWithImpl<$Res>
    implements $HandleDataFromServerCopyWith<$Res> {
  _$HandleDataFromServerCopyWithImpl(this._self, this._then);

  final HandleDataFromServer _self;
  final $Res Function(HandleDataFromServer) _then;

  /// Create a copy of TicTacToeClientEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(HandleDataFromServer(
      freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class HandleErrorFromServer implements TicTacToeClientEvent {
  const HandleErrorFromServer(this.error);

  final Object error;

  /// Create a copy of TicTacToeClientEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HandleErrorFromServerCopyWith<HandleErrorFromServer> get copyWith =>
      _$HandleErrorFromServerCopyWithImpl<HandleErrorFromServer>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HandleErrorFromServer &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'TicTacToeClientEvent.handleErrorFromServer(error: $error)';
  }
}

/// @nodoc
abstract mixin class $HandleErrorFromServerCopyWith<$Res>
    implements $TicTacToeClientEventCopyWith<$Res> {
  factory $HandleErrorFromServerCopyWith(HandleErrorFromServer value,
          $Res Function(HandleErrorFromServer) _then) =
      _$HandleErrorFromServerCopyWithImpl;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class _$HandleErrorFromServerCopyWithImpl<$Res>
    implements $HandleErrorFromServerCopyWith<$Res> {
  _$HandleErrorFromServerCopyWithImpl(this._self, this._then);

  final HandleErrorFromServer _self;
  final $Res Function(HandleErrorFromServer) _then;

  /// Create a copy of TicTacToeClientEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(HandleErrorFromServer(
      null == error ? _self.error : error,
    ));
  }
}

/// @nodoc

class DoneShowEndGameDialog implements TicTacToeClientEvent {
  const DoneShowEndGameDialog();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DoneShowEndGameDialog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TicTacToeClientEvent.doneShowEndGameDialog()';
  }
}

/// @nodoc

class QuitGame implements TicTacToeClientEvent {
  const QuitGame();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is QuitGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TicTacToeClientEvent.quitGame()';
  }
}

/// @nodoc

class _MarkBoard implements TicTacToeClientEvent {
  const _MarkBoard({required this.row, required this.col});

  final int row;
  final int col;

  /// Create a copy of TicTacToeClientEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MarkBoardCopyWith<_MarkBoard> get copyWith =>
      __$MarkBoardCopyWithImpl<_MarkBoard>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MarkBoard &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.col, col) || other.col == col));
  }

  @override
  int get hashCode => Object.hash(runtimeType, row, col);

  @override
  String toString() {
    return 'TicTacToeClientEvent.markBoard(row: $row, col: $col)';
  }
}

/// @nodoc
abstract mixin class _$MarkBoardCopyWith<$Res>
    implements $TicTacToeClientEventCopyWith<$Res> {
  factory _$MarkBoardCopyWith(
          _MarkBoard value, $Res Function(_MarkBoard) _then) =
      __$MarkBoardCopyWithImpl;
  @useResult
  $Res call({int row, int col});
}

/// @nodoc
class __$MarkBoardCopyWithImpl<$Res> implements _$MarkBoardCopyWith<$Res> {
  __$MarkBoardCopyWithImpl(this._self, this._then);

  final _MarkBoard _self;
  final $Res Function(_MarkBoard) _then;

  /// Create a copy of TicTacToeClientEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? row = null,
    Object? col = null,
  }) {
    return _then(_MarkBoard(
      row: null == row
          ? _self.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      col: null == col
          ? _self.col
          : col // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _ForceQuit implements TicTacToeClientEvent {
  const _ForceQuit();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ForceQuit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TicTacToeClientEvent.forceQuit()';
  }
}

/// @nodoc

class _DisconnectedFromServer implements TicTacToeClientEvent {
  const _DisconnectedFromServer([this.closeCode, this.closeReason]);

  final int? closeCode;
  final String? closeReason;

  /// Create a copy of TicTacToeClientEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DisconnectedFromServerCopyWith<_DisconnectedFromServer> get copyWith =>
      __$DisconnectedFromServerCopyWithImpl<_DisconnectedFromServer>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DisconnectedFromServer &&
            (identical(other.closeCode, closeCode) ||
                other.closeCode == closeCode) &&
            (identical(other.closeReason, closeReason) ||
                other.closeReason == closeReason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, closeCode, closeReason);

  @override
  String toString() {
    return 'TicTacToeClientEvent.disconnectedFromServer(closeCode: $closeCode, closeReason: $closeReason)';
  }
}

/// @nodoc
abstract mixin class _$DisconnectedFromServerCopyWith<$Res>
    implements $TicTacToeClientEventCopyWith<$Res> {
  factory _$DisconnectedFromServerCopyWith(_DisconnectedFromServer value,
          $Res Function(_DisconnectedFromServer) _then) =
      __$DisconnectedFromServerCopyWithImpl;
  @useResult
  $Res call({int? closeCode, String? closeReason});
}

/// @nodoc
class __$DisconnectedFromServerCopyWithImpl<$Res>
    implements _$DisconnectedFromServerCopyWith<$Res> {
  __$DisconnectedFromServerCopyWithImpl(this._self, this._then);

  final _DisconnectedFromServer _self;
  final $Res Function(_DisconnectedFromServer) _then;

  /// Create a copy of TicTacToeClientEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? closeCode = freezed,
    Object? closeReason = freezed,
  }) {
    return _then(_DisconnectedFromServer(
      freezed == closeCode
          ? _self.closeCode
          : closeCode // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == closeReason
          ? _self.closeReason
          : closeReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$TicTacToeClientState {
  ResponseWrapper<IMyWsConnectionHandler> get connectResponse;
  TicTacToeGameState? get gameState;
  EndGameDialogStatus get endGameDialogStatus;
  bool get isQuittingGame;

  /// Create a copy of TicTacToeClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TicTacToeClientStateCopyWith<TicTacToeClientState> get copyWith =>
      _$TicTacToeClientStateCopyWithImpl<TicTacToeClientState>(
          this as TicTacToeClientState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TicTacToeClientState &&
            (identical(other.connectResponse, connectResponse) ||
                other.connectResponse == connectResponse) &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState) &&
            (identical(other.endGameDialogStatus, endGameDialogStatus) ||
                other.endGameDialogStatus == endGameDialogStatus) &&
            (identical(other.isQuittingGame, isQuittingGame) ||
                other.isQuittingGame == isQuittingGame));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectResponse, gameState,
      endGameDialogStatus, isQuittingGame);

  @override
  String toString() {
    return 'TicTacToeClientState(connectResponse: $connectResponse, gameState: $gameState, endGameDialogStatus: $endGameDialogStatus, isQuittingGame: $isQuittingGame)';
  }
}

/// @nodoc
abstract mixin class $TicTacToeClientStateCopyWith<$Res> {
  factory $TicTacToeClientStateCopyWith(TicTacToeClientState value,
          $Res Function(TicTacToeClientState) _then) =
      _$TicTacToeClientStateCopyWithImpl;
  @useResult
  $Res call(
      {ResponseWrapper<IMyWsConnectionHandler> connectResponse,
      TicTacToeGameState? gameState,
      EndGameDialogStatus endGameDialogStatus,
      bool isQuittingGame});

  $ResponseWrapperCopyWith<IMyWsConnectionHandler, $Res> get connectResponse;
  $TicTacToeGameStateCopyWith<$Res>? get gameState;
}

/// @nodoc
class _$TicTacToeClientStateCopyWithImpl<$Res>
    implements $TicTacToeClientStateCopyWith<$Res> {
  _$TicTacToeClientStateCopyWithImpl(this._self, this._then);

  final TicTacToeClientState _self;
  final $Res Function(TicTacToeClientState) _then;

  /// Create a copy of TicTacToeClientState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectResponse = null,
    Object? gameState = freezed,
    Object? endGameDialogStatus = null,
    Object? isQuittingGame = null,
  }) {
    return _then(_self.copyWith(
      connectResponse: null == connectResponse
          ? _self.connectResponse
          : connectResponse // ignore: cast_nullable_to_non_nullable
              as ResponseWrapper<IMyWsConnectionHandler>,
      gameState: freezed == gameState
          ? _self.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as TicTacToeGameState?,
      endGameDialogStatus: null == endGameDialogStatus
          ? _self.endGameDialogStatus
          : endGameDialogStatus // ignore: cast_nullable_to_non_nullable
              as EndGameDialogStatus,
      isQuittingGame: null == isQuittingGame
          ? _self.isQuittingGame
          : isQuittingGame // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of TicTacToeClientState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseWrapperCopyWith<IMyWsConnectionHandler, $Res> get connectResponse {
    return $ResponseWrapperCopyWith<IMyWsConnectionHandler, $Res>(
        _self.connectResponse, (value) {
      return _then(_self.copyWith(connectResponse: value));
    });
  }

  /// Create a copy of TicTacToeClientState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicTacToeGameStateCopyWith<$Res>? get gameState {
    if (_self.gameState == null) {
      return null;
    }

    return $TicTacToeGameStateCopyWith<$Res>(_self.gameState!, (value) {
      return _then(_self.copyWith(gameState: value));
    });
  }
}

/// Adds pattern-matching-related methods to [TicTacToeClientState].
extension TicTacToeClientStatePatterns on TicTacToeClientState {
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
    TResult Function(_TicTacToeClientState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TicTacToeClientState() when $default != null:
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
    TResult Function(_TicTacToeClientState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TicTacToeClientState():
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
    TResult? Function(_TicTacToeClientState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TicTacToeClientState() when $default != null:
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
            ResponseWrapper<IMyWsConnectionHandler> connectResponse,
            TicTacToeGameState? gameState,
            EndGameDialogStatus endGameDialogStatus,
            bool isQuittingGame)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TicTacToeClientState() when $default != null:
        return $default(_that.connectResponse, _that.gameState,
            _that.endGameDialogStatus, _that.isQuittingGame);
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
            ResponseWrapper<IMyWsConnectionHandler> connectResponse,
            TicTacToeGameState? gameState,
            EndGameDialogStatus endGameDialogStatus,
            bool isQuittingGame)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TicTacToeClientState():
        return $default(_that.connectResponse, _that.gameState,
            _that.endGameDialogStatus, _that.isQuittingGame);
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
            ResponseWrapper<IMyWsConnectionHandler> connectResponse,
            TicTacToeGameState? gameState,
            EndGameDialogStatus endGameDialogStatus,
            bool isQuittingGame)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TicTacToeClientState() when $default != null:
        return $default(_that.connectResponse, _that.gameState,
            _that.endGameDialogStatus, _that.isQuittingGame);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TicTacToeClientState extends TicTacToeClientState {
  const _TicTacToeClientState(
      {required this.connectResponse,
      required this.gameState,
      required this.endGameDialogStatus,
      required this.isQuittingGame})
      : super._();

  @override
  final ResponseWrapper<IMyWsConnectionHandler> connectResponse;
  @override
  final TicTacToeGameState? gameState;
  @override
  final EndGameDialogStatus endGameDialogStatus;
  @override
  final bool isQuittingGame;

  /// Create a copy of TicTacToeClientState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TicTacToeClientStateCopyWith<_TicTacToeClientState> get copyWith =>
      __$TicTacToeClientStateCopyWithImpl<_TicTacToeClientState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TicTacToeClientState &&
            (identical(other.connectResponse, connectResponse) ||
                other.connectResponse == connectResponse) &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState) &&
            (identical(other.endGameDialogStatus, endGameDialogStatus) ||
                other.endGameDialogStatus == endGameDialogStatus) &&
            (identical(other.isQuittingGame, isQuittingGame) ||
                other.isQuittingGame == isQuittingGame));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectResponse, gameState,
      endGameDialogStatus, isQuittingGame);

  @override
  String toString() {
    return 'TicTacToeClientState(connectResponse: $connectResponse, gameState: $gameState, endGameDialogStatus: $endGameDialogStatus, isQuittingGame: $isQuittingGame)';
  }
}

/// @nodoc
abstract mixin class _$TicTacToeClientStateCopyWith<$Res>
    implements $TicTacToeClientStateCopyWith<$Res> {
  factory _$TicTacToeClientStateCopyWith(_TicTacToeClientState value,
          $Res Function(_TicTacToeClientState) _then) =
      __$TicTacToeClientStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ResponseWrapper<IMyWsConnectionHandler> connectResponse,
      TicTacToeGameState? gameState,
      EndGameDialogStatus endGameDialogStatus,
      bool isQuittingGame});

  @override
  $ResponseWrapperCopyWith<IMyWsConnectionHandler, $Res> get connectResponse;
  @override
  $TicTacToeGameStateCopyWith<$Res>? get gameState;
}

/// @nodoc
class __$TicTacToeClientStateCopyWithImpl<$Res>
    implements _$TicTacToeClientStateCopyWith<$Res> {
  __$TicTacToeClientStateCopyWithImpl(this._self, this._then);

  final _TicTacToeClientState _self;
  final $Res Function(_TicTacToeClientState) _then;

  /// Create a copy of TicTacToeClientState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? connectResponse = null,
    Object? gameState = freezed,
    Object? endGameDialogStatus = null,
    Object? isQuittingGame = null,
  }) {
    return _then(_TicTacToeClientState(
      connectResponse: null == connectResponse
          ? _self.connectResponse
          : connectResponse // ignore: cast_nullable_to_non_nullable
              as ResponseWrapper<IMyWsConnectionHandler>,
      gameState: freezed == gameState
          ? _self.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as TicTacToeGameState?,
      endGameDialogStatus: null == endGameDialogStatus
          ? _self.endGameDialogStatus
          : endGameDialogStatus // ignore: cast_nullable_to_non_nullable
              as EndGameDialogStatus,
      isQuittingGame: null == isQuittingGame
          ? _self.isQuittingGame
          : isQuittingGame // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of TicTacToeClientState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseWrapperCopyWith<IMyWsConnectionHandler, $Res> get connectResponse {
    return $ResponseWrapperCopyWith<IMyWsConnectionHandler, $Res>(
        _self.connectResponse, (value) {
      return _then(_self.copyWith(connectResponse: value));
    });
  }

  /// Create a copy of TicTacToeClientState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicTacToeGameStateCopyWith<$Res>? get gameState {
    if (_self.gameState == null) {
      return null;
    }

    return $TicTacToeGameStateCopyWith<$Res>(_self.gameState!, (value) {
      return _then(_self.copyWith(gameState: value));
    });
  }
}

// dart format on
