// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_master_tic_tac_toe_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoomMasterTicTacToeEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RoomMasterTicTacToeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RoomMasterTicTacToeEvent()';
  }
}

/// @nodoc
class $RoomMasterTicTacToeEventCopyWith<$Res> {
  $RoomMasterTicTacToeEventCopyWith(
      RoomMasterTicTacToeEvent _, $Res Function(RoomMasterTicTacToeEvent) __);
}

/// Adds pattern-matching-related methods to [RoomMasterTicTacToeEvent].
extension RoomMasterTicTacToeEventPatterns on RoomMasterTicTacToeEvent {
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
    TResult Function(PrepareWebSocketServer value)? prepareWebSocketServer,
    TResult Function(_BackToPreviousScreen value)? backToPreviousScreen,
    TResult Function(_DoneBackToPreviousScreen value)? doneBackToPreviousScreen,
    TResult Function(QuitGame value)? quitGame,
    TResult Function(UpdateRoomMasterAndClientGameState value)?
        updateRoomMasterAndClientGameState,
    TResult Function(UpdateOnlyRoomMasterState value)?
        updateOnlyRoomMasterState,
    TResult Function(ShowEndGameDialog value)? showEndGameDialog,
    TResult Function(DoneShowEndGameDialog value)? doneShowEndGameDialog,
    TResult Function(MarkBoardSafely value)? markBoardSafely,
    TResult Function(_DisConnectedFromClient value)? disconnectedFromClient,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case PrepareWebSocketServer() when prepareWebSocketServer != null:
        return prepareWebSocketServer(_that);
      case _BackToPreviousScreen() when backToPreviousScreen != null:
        return backToPreviousScreen(_that);
      case _DoneBackToPreviousScreen() when doneBackToPreviousScreen != null:
        return doneBackToPreviousScreen(_that);
      case QuitGame() when quitGame != null:
        return quitGame(_that);
      case UpdateRoomMasterAndClientGameState()
          when updateRoomMasterAndClientGameState != null:
        return updateRoomMasterAndClientGameState(_that);
      case UpdateOnlyRoomMasterState() when updateOnlyRoomMasterState != null:
        return updateOnlyRoomMasterState(_that);
      case ShowEndGameDialog() when showEndGameDialog != null:
        return showEndGameDialog(_that);
      case DoneShowEndGameDialog() when doneShowEndGameDialog != null:
        return doneShowEndGameDialog(_that);
      case MarkBoardSafely() when markBoardSafely != null:
        return markBoardSafely(_that);
      case _DisConnectedFromClient() when disconnectedFromClient != null:
        return disconnectedFromClient(_that);
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
    required TResult Function(PrepareWebSocketServer value)
        prepareWebSocketServer,
    required TResult Function(_BackToPreviousScreen value) backToPreviousScreen,
    required TResult Function(_DoneBackToPreviousScreen value)
        doneBackToPreviousScreen,
    required TResult Function(QuitGame value) quitGame,
    required TResult Function(UpdateRoomMasterAndClientGameState value)
        updateRoomMasterAndClientGameState,
    required TResult Function(UpdateOnlyRoomMasterState value)
        updateOnlyRoomMasterState,
    required TResult Function(ShowEndGameDialog value) showEndGameDialog,
    required TResult Function(DoneShowEndGameDialog value)
        doneShowEndGameDialog,
    required TResult Function(MarkBoardSafely value) markBoardSafely,
    required TResult Function(_DisConnectedFromClient value)
        disconnectedFromClient,
  }) {
    final _that = this;
    switch (_that) {
      case PrepareWebSocketServer():
        return prepareWebSocketServer(_that);
      case _BackToPreviousScreen():
        return backToPreviousScreen(_that);
      case _DoneBackToPreviousScreen():
        return doneBackToPreviousScreen(_that);
      case QuitGame():
        return quitGame(_that);
      case UpdateRoomMasterAndClientGameState():
        return updateRoomMasterAndClientGameState(_that);
      case UpdateOnlyRoomMasterState():
        return updateOnlyRoomMasterState(_that);
      case ShowEndGameDialog():
        return showEndGameDialog(_that);
      case DoneShowEndGameDialog():
        return doneShowEndGameDialog(_that);
      case MarkBoardSafely():
        return markBoardSafely(_that);
      case _DisConnectedFromClient():
        return disconnectedFromClient(_that);
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
    TResult? Function(PrepareWebSocketServer value)? prepareWebSocketServer,
    TResult? Function(_BackToPreviousScreen value)? backToPreviousScreen,
    TResult? Function(_DoneBackToPreviousScreen value)?
        doneBackToPreviousScreen,
    TResult? Function(QuitGame value)? quitGame,
    TResult? Function(UpdateRoomMasterAndClientGameState value)?
        updateRoomMasterAndClientGameState,
    TResult? Function(UpdateOnlyRoomMasterState value)?
        updateOnlyRoomMasterState,
    TResult? Function(ShowEndGameDialog value)? showEndGameDialog,
    TResult? Function(DoneShowEndGameDialog value)? doneShowEndGameDialog,
    TResult? Function(MarkBoardSafely value)? markBoardSafely,
    TResult? Function(_DisConnectedFromClient value)? disconnectedFromClient,
  }) {
    final _that = this;
    switch (_that) {
      case PrepareWebSocketServer() when prepareWebSocketServer != null:
        return prepareWebSocketServer(_that);
      case _BackToPreviousScreen() when backToPreviousScreen != null:
        return backToPreviousScreen(_that);
      case _DoneBackToPreviousScreen() when doneBackToPreviousScreen != null:
        return doneBackToPreviousScreen(_that);
      case QuitGame() when quitGame != null:
        return quitGame(_that);
      case UpdateRoomMasterAndClientGameState()
          when updateRoomMasterAndClientGameState != null:
        return updateRoomMasterAndClientGameState(_that);
      case UpdateOnlyRoomMasterState() when updateOnlyRoomMasterState != null:
        return updateOnlyRoomMasterState(_that);
      case ShowEndGameDialog() when showEndGameDialog != null:
        return showEndGameDialog(_that);
      case DoneShowEndGameDialog() when doneShowEndGameDialog != null:
        return doneShowEndGameDialog(_that);
      case MarkBoardSafely() when markBoardSafely != null:
        return markBoardSafely(_that);
      case _DisConnectedFromClient() when disconnectedFromClient != null:
        return disconnectedFromClient(_that);
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
    TResult Function()? prepareWebSocketServer,
    TResult Function()? backToPreviousScreen,
    TResult Function()? doneBackToPreviousScreen,
    TResult Function()? quitGame,
    TResult Function(RoomMasterTicTacToeState newState)?
        updateRoomMasterAndClientGameState,
    TResult Function(RoomMasterTicTacToeState newState)?
        updateOnlyRoomMasterState,
    TResult Function()? showEndGameDialog,
    TResult Function()? doneShowEndGameDialog,
    TResult Function(int row, int col, bool isUpdateFromClient)?
        markBoardSafely,
    TResult Function(int? closeCode, String? closeReason)?
        disconnectedFromClient,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case PrepareWebSocketServer() when prepareWebSocketServer != null:
        return prepareWebSocketServer();
      case _BackToPreviousScreen() when backToPreviousScreen != null:
        return backToPreviousScreen();
      case _DoneBackToPreviousScreen() when doneBackToPreviousScreen != null:
        return doneBackToPreviousScreen();
      case QuitGame() when quitGame != null:
        return quitGame();
      case UpdateRoomMasterAndClientGameState()
          when updateRoomMasterAndClientGameState != null:
        return updateRoomMasterAndClientGameState(_that.newState);
      case UpdateOnlyRoomMasterState() when updateOnlyRoomMasterState != null:
        return updateOnlyRoomMasterState(_that.newState);
      case ShowEndGameDialog() when showEndGameDialog != null:
        return showEndGameDialog();
      case DoneShowEndGameDialog() when doneShowEndGameDialog != null:
        return doneShowEndGameDialog();
      case MarkBoardSafely() when markBoardSafely != null:
        return markBoardSafely(_that.row, _that.col, _that.isUpdateFromClient);
      case _DisConnectedFromClient() when disconnectedFromClient != null:
        return disconnectedFromClient(_that.closeCode, _that.closeReason);
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
    required TResult Function() prepareWebSocketServer,
    required TResult Function() backToPreviousScreen,
    required TResult Function() doneBackToPreviousScreen,
    required TResult Function() quitGame,
    required TResult Function(RoomMasterTicTacToeState newState)
        updateRoomMasterAndClientGameState,
    required TResult Function(RoomMasterTicTacToeState newState)
        updateOnlyRoomMasterState,
    required TResult Function() showEndGameDialog,
    required TResult Function() doneShowEndGameDialog,
    required TResult Function(int row, int col, bool isUpdateFromClient)
        markBoardSafely,
    required TResult Function(int? closeCode, String? closeReason)
        disconnectedFromClient,
  }) {
    final _that = this;
    switch (_that) {
      case PrepareWebSocketServer():
        return prepareWebSocketServer();
      case _BackToPreviousScreen():
        return backToPreviousScreen();
      case _DoneBackToPreviousScreen():
        return doneBackToPreviousScreen();
      case QuitGame():
        return quitGame();
      case UpdateRoomMasterAndClientGameState():
        return updateRoomMasterAndClientGameState(_that.newState);
      case UpdateOnlyRoomMasterState():
        return updateOnlyRoomMasterState(_that.newState);
      case ShowEndGameDialog():
        return showEndGameDialog();
      case DoneShowEndGameDialog():
        return doneShowEndGameDialog();
      case MarkBoardSafely():
        return markBoardSafely(_that.row, _that.col, _that.isUpdateFromClient);
      case _DisConnectedFromClient():
        return disconnectedFromClient(_that.closeCode, _that.closeReason);
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
    TResult? Function()? prepareWebSocketServer,
    TResult? Function()? backToPreviousScreen,
    TResult? Function()? doneBackToPreviousScreen,
    TResult? Function()? quitGame,
    TResult? Function(RoomMasterTicTacToeState newState)?
        updateRoomMasterAndClientGameState,
    TResult? Function(RoomMasterTicTacToeState newState)?
        updateOnlyRoomMasterState,
    TResult? Function()? showEndGameDialog,
    TResult? Function()? doneShowEndGameDialog,
    TResult? Function(int row, int col, bool isUpdateFromClient)?
        markBoardSafely,
    TResult? Function(int? closeCode, String? closeReason)?
        disconnectedFromClient,
  }) {
    final _that = this;
    switch (_that) {
      case PrepareWebSocketServer() when prepareWebSocketServer != null:
        return prepareWebSocketServer();
      case _BackToPreviousScreen() when backToPreviousScreen != null:
        return backToPreviousScreen();
      case _DoneBackToPreviousScreen() when doneBackToPreviousScreen != null:
        return doneBackToPreviousScreen();
      case QuitGame() when quitGame != null:
        return quitGame();
      case UpdateRoomMasterAndClientGameState()
          when updateRoomMasterAndClientGameState != null:
        return updateRoomMasterAndClientGameState(_that.newState);
      case UpdateOnlyRoomMasterState() when updateOnlyRoomMasterState != null:
        return updateOnlyRoomMasterState(_that.newState);
      case ShowEndGameDialog() when showEndGameDialog != null:
        return showEndGameDialog();
      case DoneShowEndGameDialog() when doneShowEndGameDialog != null:
        return doneShowEndGameDialog();
      case MarkBoardSafely() when markBoardSafely != null:
        return markBoardSafely(_that.row, _that.col, _that.isUpdateFromClient);
      case _DisConnectedFromClient() when disconnectedFromClient != null:
        return disconnectedFromClient(_that.closeCode, _that.closeReason);
      case _:
        return null;
    }
  }
}

/// @nodoc

class PrepareWebSocketServer implements RoomMasterTicTacToeEvent {
  const PrepareWebSocketServer();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PrepareWebSocketServer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RoomMasterTicTacToeEvent.prepareWebSocketServer()';
  }
}

/// @nodoc

class _BackToPreviousScreen implements RoomMasterTicTacToeEvent {
  const _BackToPreviousScreen();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BackToPreviousScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RoomMasterTicTacToeEvent.backToPreviousScreen()';
  }
}

/// @nodoc

class _DoneBackToPreviousScreen implements RoomMasterTicTacToeEvent {
  const _DoneBackToPreviousScreen();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DoneBackToPreviousScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RoomMasterTicTacToeEvent.doneBackToPreviousScreen()';
  }
}

/// @nodoc

class QuitGame implements RoomMasterTicTacToeEvent {
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
    return 'RoomMasterTicTacToeEvent.quitGame()';
  }
}

/// @nodoc

class UpdateRoomMasterAndClientGameState implements RoomMasterTicTacToeEvent {
  const UpdateRoomMasterAndClientGameState(this.newState);

  final RoomMasterTicTacToeState newState;

  /// Create a copy of RoomMasterTicTacToeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateRoomMasterAndClientGameStateCopyWith<
          UpdateRoomMasterAndClientGameState>
      get copyWith => _$UpdateRoomMasterAndClientGameStateCopyWithImpl<
          UpdateRoomMasterAndClientGameState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateRoomMasterAndClientGameState &&
            (identical(other.newState, newState) ||
                other.newState == newState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newState);

  @override
  String toString() {
    return 'RoomMasterTicTacToeEvent.updateRoomMasterAndClientGameState(newState: $newState)';
  }
}

/// @nodoc
abstract mixin class $UpdateRoomMasterAndClientGameStateCopyWith<$Res>
    implements $RoomMasterTicTacToeEventCopyWith<$Res> {
  factory $UpdateRoomMasterAndClientGameStateCopyWith(
          UpdateRoomMasterAndClientGameState value,
          $Res Function(UpdateRoomMasterAndClientGameState) _then) =
      _$UpdateRoomMasterAndClientGameStateCopyWithImpl;
  @useResult
  $Res call({RoomMasterTicTacToeState newState});

  $RoomMasterTicTacToeStateCopyWith<$Res> get newState;
}

/// @nodoc
class _$UpdateRoomMasterAndClientGameStateCopyWithImpl<$Res>
    implements $UpdateRoomMasterAndClientGameStateCopyWith<$Res> {
  _$UpdateRoomMasterAndClientGameStateCopyWithImpl(this._self, this._then);

  final UpdateRoomMasterAndClientGameState _self;
  final $Res Function(UpdateRoomMasterAndClientGameState) _then;

  /// Create a copy of RoomMasterTicTacToeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? newState = null,
  }) {
    return _then(UpdateRoomMasterAndClientGameState(
      null == newState
          ? _self.newState
          : newState // ignore: cast_nullable_to_non_nullable
              as RoomMasterTicTacToeState,
    ));
  }

  /// Create a copy of RoomMasterTicTacToeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoomMasterTicTacToeStateCopyWith<$Res> get newState {
    return $RoomMasterTicTacToeStateCopyWith<$Res>(_self.newState, (value) {
      return _then(_self.copyWith(newState: value));
    });
  }
}

/// @nodoc

class UpdateOnlyRoomMasterState implements RoomMasterTicTacToeEvent {
  const UpdateOnlyRoomMasterState(this.newState);

  final RoomMasterTicTacToeState newState;

  /// Create a copy of RoomMasterTicTacToeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateOnlyRoomMasterStateCopyWith<UpdateOnlyRoomMasterState> get copyWith =>
      _$UpdateOnlyRoomMasterStateCopyWithImpl<UpdateOnlyRoomMasterState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateOnlyRoomMasterState &&
            (identical(other.newState, newState) ||
                other.newState == newState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newState);

  @override
  String toString() {
    return 'RoomMasterTicTacToeEvent.updateOnlyRoomMasterState(newState: $newState)';
  }
}

/// @nodoc
abstract mixin class $UpdateOnlyRoomMasterStateCopyWith<$Res>
    implements $RoomMasterTicTacToeEventCopyWith<$Res> {
  factory $UpdateOnlyRoomMasterStateCopyWith(UpdateOnlyRoomMasterState value,
          $Res Function(UpdateOnlyRoomMasterState) _then) =
      _$UpdateOnlyRoomMasterStateCopyWithImpl;
  @useResult
  $Res call({RoomMasterTicTacToeState newState});

  $RoomMasterTicTacToeStateCopyWith<$Res> get newState;
}

/// @nodoc
class _$UpdateOnlyRoomMasterStateCopyWithImpl<$Res>
    implements $UpdateOnlyRoomMasterStateCopyWith<$Res> {
  _$UpdateOnlyRoomMasterStateCopyWithImpl(this._self, this._then);

  final UpdateOnlyRoomMasterState _self;
  final $Res Function(UpdateOnlyRoomMasterState) _then;

  /// Create a copy of RoomMasterTicTacToeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? newState = null,
  }) {
    return _then(UpdateOnlyRoomMasterState(
      null == newState
          ? _self.newState
          : newState // ignore: cast_nullable_to_non_nullable
              as RoomMasterTicTacToeState,
    ));
  }

  /// Create a copy of RoomMasterTicTacToeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoomMasterTicTacToeStateCopyWith<$Res> get newState {
    return $RoomMasterTicTacToeStateCopyWith<$Res>(_self.newState, (value) {
      return _then(_self.copyWith(newState: value));
    });
  }
}

/// @nodoc

class ShowEndGameDialog implements RoomMasterTicTacToeEvent {
  const ShowEndGameDialog();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShowEndGameDialog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RoomMasterTicTacToeEvent.showEndGameDialog()';
  }
}

/// @nodoc

class DoneShowEndGameDialog implements RoomMasterTicTacToeEvent {
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
    return 'RoomMasterTicTacToeEvent.doneShowEndGameDialog()';
  }
}

/// @nodoc

class MarkBoardSafely implements RoomMasterTicTacToeEvent {
  const MarkBoardSafely(
      {required this.row, required this.col, required this.isUpdateFromClient});

  final int row;
  final int col;
  final bool isUpdateFromClient;

  /// Create a copy of RoomMasterTicTacToeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MarkBoardSafelyCopyWith<MarkBoardSafely> get copyWith =>
      _$MarkBoardSafelyCopyWithImpl<MarkBoardSafely>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MarkBoardSafely &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.col, col) || other.col == col) &&
            (identical(other.isUpdateFromClient, isUpdateFromClient) ||
                other.isUpdateFromClient == isUpdateFromClient));
  }

  @override
  int get hashCode => Object.hash(runtimeType, row, col, isUpdateFromClient);

  @override
  String toString() {
    return 'RoomMasterTicTacToeEvent.markBoardSafely(row: $row, col: $col, isUpdateFromClient: $isUpdateFromClient)';
  }
}

/// @nodoc
abstract mixin class $MarkBoardSafelyCopyWith<$Res>
    implements $RoomMasterTicTacToeEventCopyWith<$Res> {
  factory $MarkBoardSafelyCopyWith(
          MarkBoardSafely value, $Res Function(MarkBoardSafely) _then) =
      _$MarkBoardSafelyCopyWithImpl;
  @useResult
  $Res call({int row, int col, bool isUpdateFromClient});
}

/// @nodoc
class _$MarkBoardSafelyCopyWithImpl<$Res>
    implements $MarkBoardSafelyCopyWith<$Res> {
  _$MarkBoardSafelyCopyWithImpl(this._self, this._then);

  final MarkBoardSafely _self;
  final $Res Function(MarkBoardSafely) _then;

  /// Create a copy of RoomMasterTicTacToeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? row = null,
    Object? col = null,
    Object? isUpdateFromClient = null,
  }) {
    return _then(MarkBoardSafely(
      row: null == row
          ? _self.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      col: null == col
          ? _self.col
          : col // ignore: cast_nullable_to_non_nullable
              as int,
      isUpdateFromClient: null == isUpdateFromClient
          ? _self.isUpdateFromClient
          : isUpdateFromClient // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _DisConnectedFromClient implements RoomMasterTicTacToeEvent {
  const _DisConnectedFromClient([this.closeCode, this.closeReason]);

  final int? closeCode;
  final String? closeReason;

  /// Create a copy of RoomMasterTicTacToeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DisConnectedFromClientCopyWith<_DisConnectedFromClient> get copyWith =>
      __$DisConnectedFromClientCopyWithImpl<_DisConnectedFromClient>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DisConnectedFromClient &&
            (identical(other.closeCode, closeCode) ||
                other.closeCode == closeCode) &&
            (identical(other.closeReason, closeReason) ||
                other.closeReason == closeReason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, closeCode, closeReason);

  @override
  String toString() {
    return 'RoomMasterTicTacToeEvent.disconnectedFromClient(closeCode: $closeCode, closeReason: $closeReason)';
  }
}

/// @nodoc
abstract mixin class _$DisConnectedFromClientCopyWith<$Res>
    implements $RoomMasterTicTacToeEventCopyWith<$Res> {
  factory _$DisConnectedFromClientCopyWith(_DisConnectedFromClient value,
          $Res Function(_DisConnectedFromClient) _then) =
      __$DisConnectedFromClientCopyWithImpl;
  @useResult
  $Res call({int? closeCode, String? closeReason});
}

/// @nodoc
class __$DisConnectedFromClientCopyWithImpl<$Res>
    implements _$DisConnectedFromClientCopyWith<$Res> {
  __$DisConnectedFromClientCopyWithImpl(this._self, this._then);

  final _DisConnectedFromClient _self;
  final $Res Function(_DisConnectedFromClient) _then;

  /// Create a copy of RoomMasterTicTacToeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? closeCode = freezed,
    Object? closeReason = freezed,
  }) {
    return _then(_DisConnectedFromClient(
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
mixin _$RoomMasterTicTacToeState {
  ResponseWrapper<WsServerUrl>? get wsServerPreparationResponse;
  bool get hasConnection;
  TicTacToeGameState get gameState;
  bool get mustBackToPreviousScreen;
  EndGameDialogStatus get endGameDialogStatus;
  bool get isQuittingGame;

  /// Create a copy of RoomMasterTicTacToeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RoomMasterTicTacToeStateCopyWith<RoomMasterTicTacToeState> get copyWith =>
      _$RoomMasterTicTacToeStateCopyWithImpl<RoomMasterTicTacToeState>(
          this as RoomMasterTicTacToeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RoomMasterTicTacToeState &&
            (identical(other.wsServerPreparationResponse,
                    wsServerPreparationResponse) ||
                other.wsServerPreparationResponse ==
                    wsServerPreparationResponse) &&
            (identical(other.hasConnection, hasConnection) ||
                other.hasConnection == hasConnection) &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState) &&
            (identical(
                    other.mustBackToPreviousScreen, mustBackToPreviousScreen) ||
                other.mustBackToPreviousScreen == mustBackToPreviousScreen) &&
            (identical(other.endGameDialogStatus, endGameDialogStatus) ||
                other.endGameDialogStatus == endGameDialogStatus) &&
            (identical(other.isQuittingGame, isQuittingGame) ||
                other.isQuittingGame == isQuittingGame));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      wsServerPreparationResponse,
      hasConnection,
      gameState,
      mustBackToPreviousScreen,
      endGameDialogStatus,
      isQuittingGame);

  @override
  String toString() {
    return 'RoomMasterTicTacToeState(wsServerPreparationResponse: $wsServerPreparationResponse, hasConnection: $hasConnection, gameState: $gameState, mustBackToPreviousScreen: $mustBackToPreviousScreen, endGameDialogStatus: $endGameDialogStatus, isQuittingGame: $isQuittingGame)';
  }
}

/// @nodoc
abstract mixin class $RoomMasterTicTacToeStateCopyWith<$Res> {
  factory $RoomMasterTicTacToeStateCopyWith(RoomMasterTicTacToeState value,
          $Res Function(RoomMasterTicTacToeState) _then) =
      _$RoomMasterTicTacToeStateCopyWithImpl;
  @useResult
  $Res call(
      {ResponseWrapper<WsServerUrl>? wsServerPreparationResponse,
      bool hasConnection,
      TicTacToeGameState gameState,
      bool mustBackToPreviousScreen,
      EndGameDialogStatus endGameDialogStatus,
      bool isQuittingGame});

  $ResponseWrapperCopyWith<String, $Res>? get wsServerPreparationResponse;
  $TicTacToeGameStateCopyWith<$Res> get gameState;
}

/// @nodoc
class _$RoomMasterTicTacToeStateCopyWithImpl<$Res>
    implements $RoomMasterTicTacToeStateCopyWith<$Res> {
  _$RoomMasterTicTacToeStateCopyWithImpl(this._self, this._then);

  final RoomMasterTicTacToeState _self;
  final $Res Function(RoomMasterTicTacToeState) _then;

  /// Create a copy of RoomMasterTicTacToeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wsServerPreparationResponse = freezed,
    Object? hasConnection = null,
    Object? gameState = null,
    Object? mustBackToPreviousScreen = null,
    Object? endGameDialogStatus = null,
    Object? isQuittingGame = null,
  }) {
    return _then(_self.copyWith(
      wsServerPreparationResponse: freezed == wsServerPreparationResponse
          ? _self.wsServerPreparationResponse
          : wsServerPreparationResponse // ignore: cast_nullable_to_non_nullable
              as ResponseWrapper<WsServerUrl>?,
      hasConnection: null == hasConnection
          ? _self.hasConnection
          : hasConnection // ignore: cast_nullable_to_non_nullable
              as bool,
      gameState: null == gameState
          ? _self.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as TicTacToeGameState,
      mustBackToPreviousScreen: null == mustBackToPreviousScreen
          ? _self.mustBackToPreviousScreen
          : mustBackToPreviousScreen // ignore: cast_nullable_to_non_nullable
              as bool,
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

  /// Create a copy of RoomMasterTicTacToeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseWrapperCopyWith<String, $Res>? get wsServerPreparationResponse {
    if (_self.wsServerPreparationResponse == null) {
      return null;
    }

    return $ResponseWrapperCopyWith<String, $Res>(
        _self.wsServerPreparationResponse!, (value) {
      return _then(_self.copyWith(wsServerPreparationResponse: value));
    });
  }

  /// Create a copy of RoomMasterTicTacToeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicTacToeGameStateCopyWith<$Res> get gameState {
    return $TicTacToeGameStateCopyWith<$Res>(_self.gameState, (value) {
      return _then(_self.copyWith(gameState: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RoomMasterTicTacToeState].
extension RoomMasterTicTacToeStatePatterns on RoomMasterTicTacToeState {
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
    TResult Function(_RoomMasterTicTacToeState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RoomMasterTicTacToeState() when $default != null:
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
    TResult Function(_RoomMasterTicTacToeState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RoomMasterTicTacToeState():
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
    TResult? Function(_RoomMasterTicTacToeState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RoomMasterTicTacToeState() when $default != null:
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
            ResponseWrapper<WsServerUrl>? wsServerPreparationResponse,
            bool hasConnection,
            TicTacToeGameState gameState,
            bool mustBackToPreviousScreen,
            EndGameDialogStatus endGameDialogStatus,
            bool isQuittingGame)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RoomMasterTicTacToeState() when $default != null:
        return $default(
            _that.wsServerPreparationResponse,
            _that.hasConnection,
            _that.gameState,
            _that.mustBackToPreviousScreen,
            _that.endGameDialogStatus,
            _that.isQuittingGame);
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
            ResponseWrapper<WsServerUrl>? wsServerPreparationResponse,
            bool hasConnection,
            TicTacToeGameState gameState,
            bool mustBackToPreviousScreen,
            EndGameDialogStatus endGameDialogStatus,
            bool isQuittingGame)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RoomMasterTicTacToeState():
        return $default(
            _that.wsServerPreparationResponse,
            _that.hasConnection,
            _that.gameState,
            _that.mustBackToPreviousScreen,
            _that.endGameDialogStatus,
            _that.isQuittingGame);
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
            ResponseWrapper<WsServerUrl>? wsServerPreparationResponse,
            bool hasConnection,
            TicTacToeGameState gameState,
            bool mustBackToPreviousScreen,
            EndGameDialogStatus endGameDialogStatus,
            bool isQuittingGame)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RoomMasterTicTacToeState() when $default != null:
        return $default(
            _that.wsServerPreparationResponse,
            _that.hasConnection,
            _that.gameState,
            _that.mustBackToPreviousScreen,
            _that.endGameDialogStatus,
            _that.isQuittingGame);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RoomMasterTicTacToeState extends RoomMasterTicTacToeState {
  const _RoomMasterTicTacToeState(
      {required this.wsServerPreparationResponse,
      required this.hasConnection,
      required this.gameState,
      required this.mustBackToPreviousScreen,
      required this.endGameDialogStatus,
      required this.isQuittingGame})
      : super._();

  @override
  final ResponseWrapper<WsServerUrl>? wsServerPreparationResponse;
  @override
  final bool hasConnection;
  @override
  final TicTacToeGameState gameState;
  @override
  final bool mustBackToPreviousScreen;
  @override
  final EndGameDialogStatus endGameDialogStatus;
  @override
  final bool isQuittingGame;

  /// Create a copy of RoomMasterTicTacToeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RoomMasterTicTacToeStateCopyWith<_RoomMasterTicTacToeState> get copyWith =>
      __$RoomMasterTicTacToeStateCopyWithImpl<_RoomMasterTicTacToeState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RoomMasterTicTacToeState &&
            (identical(other.wsServerPreparationResponse,
                    wsServerPreparationResponse) ||
                other.wsServerPreparationResponse ==
                    wsServerPreparationResponse) &&
            (identical(other.hasConnection, hasConnection) ||
                other.hasConnection == hasConnection) &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState) &&
            (identical(
                    other.mustBackToPreviousScreen, mustBackToPreviousScreen) ||
                other.mustBackToPreviousScreen == mustBackToPreviousScreen) &&
            (identical(other.endGameDialogStatus, endGameDialogStatus) ||
                other.endGameDialogStatus == endGameDialogStatus) &&
            (identical(other.isQuittingGame, isQuittingGame) ||
                other.isQuittingGame == isQuittingGame));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      wsServerPreparationResponse,
      hasConnection,
      gameState,
      mustBackToPreviousScreen,
      endGameDialogStatus,
      isQuittingGame);

  @override
  String toString() {
    return 'RoomMasterTicTacToeState(wsServerPreparationResponse: $wsServerPreparationResponse, hasConnection: $hasConnection, gameState: $gameState, mustBackToPreviousScreen: $mustBackToPreviousScreen, endGameDialogStatus: $endGameDialogStatus, isQuittingGame: $isQuittingGame)';
  }
}

/// @nodoc
abstract mixin class _$RoomMasterTicTacToeStateCopyWith<$Res>
    implements $RoomMasterTicTacToeStateCopyWith<$Res> {
  factory _$RoomMasterTicTacToeStateCopyWith(_RoomMasterTicTacToeState value,
          $Res Function(_RoomMasterTicTacToeState) _then) =
      __$RoomMasterTicTacToeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ResponseWrapper<WsServerUrl>? wsServerPreparationResponse,
      bool hasConnection,
      TicTacToeGameState gameState,
      bool mustBackToPreviousScreen,
      EndGameDialogStatus endGameDialogStatus,
      bool isQuittingGame});

  @override
  $ResponseWrapperCopyWith<String, $Res>? get wsServerPreparationResponse;
  @override
  $TicTacToeGameStateCopyWith<$Res> get gameState;
}

/// @nodoc
class __$RoomMasterTicTacToeStateCopyWithImpl<$Res>
    implements _$RoomMasterTicTacToeStateCopyWith<$Res> {
  __$RoomMasterTicTacToeStateCopyWithImpl(this._self, this._then);

  final _RoomMasterTicTacToeState _self;
  final $Res Function(_RoomMasterTicTacToeState) _then;

  /// Create a copy of RoomMasterTicTacToeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? wsServerPreparationResponse = freezed,
    Object? hasConnection = null,
    Object? gameState = null,
    Object? mustBackToPreviousScreen = null,
    Object? endGameDialogStatus = null,
    Object? isQuittingGame = null,
  }) {
    return _then(_RoomMasterTicTacToeState(
      wsServerPreparationResponse: freezed == wsServerPreparationResponse
          ? _self.wsServerPreparationResponse
          : wsServerPreparationResponse // ignore: cast_nullable_to_non_nullable
              as ResponseWrapper<WsServerUrl>?,
      hasConnection: null == hasConnection
          ? _self.hasConnection
          : hasConnection // ignore: cast_nullable_to_non_nullable
              as bool,
      gameState: null == gameState
          ? _self.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as TicTacToeGameState,
      mustBackToPreviousScreen: null == mustBackToPreviousScreen
          ? _self.mustBackToPreviousScreen
          : mustBackToPreviousScreen // ignore: cast_nullable_to_non_nullable
              as bool,
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

  /// Create a copy of RoomMasterTicTacToeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseWrapperCopyWith<String, $Res>? get wsServerPreparationResponse {
    if (_self.wsServerPreparationResponse == null) {
      return null;
    }

    return $ResponseWrapperCopyWith<String, $Res>(
        _self.wsServerPreparationResponse!, (value) {
      return _then(_self.copyWith(wsServerPreparationResponse: value));
    });
  }

  /// Create a copy of RoomMasterTicTacToeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicTacToeGameStateCopyWith<$Res> get gameState {
    return $TicTacToeGameStateCopyWith<$Res>(_self.gameState, (value) {
      return _then(_self.copyWith(gameState: value));
    });
  }
}

// dart format on
