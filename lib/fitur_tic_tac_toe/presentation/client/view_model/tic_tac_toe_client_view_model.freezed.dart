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
    required TResult Function(dynamic data) handleDataFromServer,
    required TResult Function(Object error) handleErrorFromServer,
    required TResult Function() doneShowEndGameDialog,
    required TResult Function() quitGame,
    required TResult Function(int row, int col) markBoard,
    required TResult Function() forceQuit,
    required TResult Function(int? closeCode, String? closeReason)
        disconnectedFromServer,
  }) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
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
    required TResult Function(dynamic data) handleDataFromServer,
    required TResult Function(Object error) handleErrorFromServer,
    required TResult Function() doneShowEndGameDialog,
    required TResult Function() quitGame,
    required TResult Function(int row, int col) markBoard,
    required TResult Function() forceQuit,
    required TResult Function(int? closeCode, String? closeReason)
        disconnectedFromServer,
  }) {
    return connectToServer();
  }

  @override
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
    return connectToServer?.call();
  }

  @override
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
    return connectToServer(this);
  }

  @override
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
    return connectToServer?.call(this);
  }

  @override
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
    required TResult Function(dynamic data) handleDataFromServer,
    required TResult Function(Object error) handleErrorFromServer,
    required TResult Function() doneShowEndGameDialog,
    required TResult Function() quitGame,
    required TResult Function(int row, int col) markBoard,
    required TResult Function() forceQuit,
    required TResult Function(int? closeCode, String? closeReason)
        disconnectedFromServer,
  }) {
    return clickTile(row, col);
  }

  @override
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
    return clickTile?.call(row, col);
  }

  @override
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
    return clickTile(this);
  }

  @override
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
    return clickTile?.call(this);
  }

  @override
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
abstract class _$$HandleDataFromServerImplCopyWith<$Res> {
  factory _$$HandleDataFromServerImplCopyWith(_$HandleDataFromServerImpl value,
          $Res Function(_$HandleDataFromServerImpl) then) =
      __$$HandleDataFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$HandleDataFromServerImplCopyWithImpl<$Res>
    extends _$TicTacToeClientEventCopyWithImpl<$Res, _$HandleDataFromServerImpl>
    implements _$$HandleDataFromServerImplCopyWith<$Res> {
  __$$HandleDataFromServerImplCopyWithImpl(_$HandleDataFromServerImpl _value,
      $Res Function(_$HandleDataFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$HandleDataFromServerImpl(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$HandleDataFromServerImpl implements HandleDataFromServer {
  const _$HandleDataFromServerImpl(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'TicTacToeClientEvent.handleDataFromServer(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandleDataFromServerImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HandleDataFromServerImplCopyWith<_$HandleDataFromServerImpl>
      get copyWith =>
          __$$HandleDataFromServerImplCopyWithImpl<_$HandleDataFromServerImpl>(
              this, _$identity);

  @override
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
    return handleDataFromServer(data);
  }

  @override
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
    return handleDataFromServer?.call(data);
  }

  @override
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
    if (handleDataFromServer != null) {
      return handleDataFromServer(data);
    }
    return orElse();
  }

  @override
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
    return handleDataFromServer(this);
  }

  @override
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
    return handleDataFromServer?.call(this);
  }

  @override
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
    if (handleDataFromServer != null) {
      return handleDataFromServer(this);
    }
    return orElse();
  }
}

abstract class HandleDataFromServer implements TicTacToeClientEvent {
  const factory HandleDataFromServer(final dynamic data) =
      _$HandleDataFromServerImpl;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$HandleDataFromServerImplCopyWith<_$HandleDataFromServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HandleErrorFromServerImplCopyWith<$Res> {
  factory _$$HandleErrorFromServerImplCopyWith(
          _$HandleErrorFromServerImpl value,
          $Res Function(_$HandleErrorFromServerImpl) then) =
      __$$HandleErrorFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$HandleErrorFromServerImplCopyWithImpl<$Res>
    extends _$TicTacToeClientEventCopyWithImpl<$Res,
        _$HandleErrorFromServerImpl>
    implements _$$HandleErrorFromServerImplCopyWith<$Res> {
  __$$HandleErrorFromServerImplCopyWithImpl(_$HandleErrorFromServerImpl _value,
      $Res Function(_$HandleErrorFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$HandleErrorFromServerImpl(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$HandleErrorFromServerImpl implements HandleErrorFromServer {
  const _$HandleErrorFromServerImpl(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'TicTacToeClientEvent.handleErrorFromServer(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandleErrorFromServerImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HandleErrorFromServerImplCopyWith<_$HandleErrorFromServerImpl>
      get copyWith => __$$HandleErrorFromServerImplCopyWithImpl<
          _$HandleErrorFromServerImpl>(this, _$identity);

  @override
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
    return handleErrorFromServer(error);
  }

  @override
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
    return handleErrorFromServer?.call(error);
  }

  @override
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
    if (handleErrorFromServer != null) {
      return handleErrorFromServer(error);
    }
    return orElse();
  }

  @override
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
    return handleErrorFromServer(this);
  }

  @override
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
    return handleErrorFromServer?.call(this);
  }

  @override
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
    if (handleErrorFromServer != null) {
      return handleErrorFromServer(this);
    }
    return orElse();
  }
}

abstract class HandleErrorFromServer implements TicTacToeClientEvent {
  const factory HandleErrorFromServer(final Object error) =
      _$HandleErrorFromServerImpl;

  Object get error;
  @JsonKey(ignore: true)
  _$$HandleErrorFromServerImplCopyWith<_$HandleErrorFromServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoneShowEndGameDialogImplCopyWith<$Res> {
  factory _$$DoneShowEndGameDialogImplCopyWith(
          _$DoneShowEndGameDialogImpl value,
          $Res Function(_$DoneShowEndGameDialogImpl) then) =
      __$$DoneShowEndGameDialogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoneShowEndGameDialogImplCopyWithImpl<$Res>
    extends _$TicTacToeClientEventCopyWithImpl<$Res,
        _$DoneShowEndGameDialogImpl>
    implements _$$DoneShowEndGameDialogImplCopyWith<$Res> {
  __$$DoneShowEndGameDialogImplCopyWithImpl(_$DoneShowEndGameDialogImpl _value,
      $Res Function(_$DoneShowEndGameDialogImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DoneShowEndGameDialogImpl implements DoneShowEndGameDialog {
  const _$DoneShowEndGameDialogImpl();

  @override
  String toString() {
    return 'TicTacToeClientEvent.doneShowEndGameDialog()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoneShowEndGameDialogImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
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
    return doneShowEndGameDialog();
  }

  @override
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
    return doneShowEndGameDialog?.call();
  }

  @override
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
    if (doneShowEndGameDialog != null) {
      return doneShowEndGameDialog();
    }
    return orElse();
  }

  @override
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
    return doneShowEndGameDialog(this);
  }

  @override
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
    return doneShowEndGameDialog?.call(this);
  }

  @override
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
    if (doneShowEndGameDialog != null) {
      return doneShowEndGameDialog(this);
    }
    return orElse();
  }
}

abstract class DoneShowEndGameDialog implements TicTacToeClientEvent {
  const factory DoneShowEndGameDialog() = _$DoneShowEndGameDialogImpl;
}

/// @nodoc
abstract class _$$QuitGameImplCopyWith<$Res> {
  factory _$$QuitGameImplCopyWith(
          _$QuitGameImpl value, $Res Function(_$QuitGameImpl) then) =
      __$$QuitGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuitGameImplCopyWithImpl<$Res>
    extends _$TicTacToeClientEventCopyWithImpl<$Res, _$QuitGameImpl>
    implements _$$QuitGameImplCopyWith<$Res> {
  __$$QuitGameImplCopyWithImpl(
      _$QuitGameImpl _value, $Res Function(_$QuitGameImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuitGameImpl implements QuitGame {
  const _$QuitGameImpl();

  @override
  String toString() {
    return 'TicTacToeClientEvent.quitGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuitGameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
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
    return quitGame();
  }

  @override
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
    return quitGame?.call();
  }

  @override
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
    if (quitGame != null) {
      return quitGame();
    }
    return orElse();
  }

  @override
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
    return quitGame(this);
  }

  @override
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
    return quitGame?.call(this);
  }

  @override
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
    if (quitGame != null) {
      return quitGame(this);
    }
    return orElse();
  }
}

abstract class QuitGame implements TicTacToeClientEvent {
  const factory QuitGame() = _$QuitGameImpl;
}

/// @nodoc
abstract class _$$MarkBoardImplCopyWith<$Res> {
  factory _$$MarkBoardImplCopyWith(
          _$MarkBoardImpl value, $Res Function(_$MarkBoardImpl) then) =
      __$$MarkBoardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int row, int col});
}

/// @nodoc
class __$$MarkBoardImplCopyWithImpl<$Res>
    extends _$TicTacToeClientEventCopyWithImpl<$Res, _$MarkBoardImpl>
    implements _$$MarkBoardImplCopyWith<$Res> {
  __$$MarkBoardImplCopyWithImpl(
      _$MarkBoardImpl _value, $Res Function(_$MarkBoardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = null,
    Object? col = null,
  }) {
    return _then(_$MarkBoardImpl(
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

class _$MarkBoardImpl implements _MarkBoard {
  const _$MarkBoardImpl({required this.row, required this.col});

  @override
  final int row;
  @override
  final int col;

  @override
  String toString() {
    return 'TicTacToeClientEvent.markBoard(row: $row, col: $col)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkBoardImpl &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.col, col) || other.col == col));
  }

  @override
  int get hashCode => Object.hash(runtimeType, row, col);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkBoardImplCopyWith<_$MarkBoardImpl> get copyWith =>
      __$$MarkBoardImplCopyWithImpl<_$MarkBoardImpl>(this, _$identity);

  @override
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
    return markBoard(row, col);
  }

  @override
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
    return markBoard?.call(row, col);
  }

  @override
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
    if (markBoard != null) {
      return markBoard(row, col);
    }
    return orElse();
  }

  @override
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
    return markBoard(this);
  }

  @override
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
    return markBoard?.call(this);
  }

  @override
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
    if (markBoard != null) {
      return markBoard(this);
    }
    return orElse();
  }
}

abstract class _MarkBoard implements TicTacToeClientEvent {
  const factory _MarkBoard({required final int row, required final int col}) =
      _$MarkBoardImpl;

  int get row;
  int get col;
  @JsonKey(ignore: true)
  _$$MarkBoardImplCopyWith<_$MarkBoardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForceQuitImplCopyWith<$Res> {
  factory _$$ForceQuitImplCopyWith(
          _$ForceQuitImpl value, $Res Function(_$ForceQuitImpl) then) =
      __$$ForceQuitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForceQuitImplCopyWithImpl<$Res>
    extends _$TicTacToeClientEventCopyWithImpl<$Res, _$ForceQuitImpl>
    implements _$$ForceQuitImplCopyWith<$Res> {
  __$$ForceQuitImplCopyWithImpl(
      _$ForceQuitImpl _value, $Res Function(_$ForceQuitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForceQuitImpl implements _ForceQuit {
  const _$ForceQuitImpl();

  @override
  String toString() {
    return 'TicTacToeClientEvent.forceQuit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ForceQuitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
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
    return forceQuit();
  }

  @override
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
    return forceQuit?.call();
  }

  @override
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
    if (forceQuit != null) {
      return forceQuit();
    }
    return orElse();
  }

  @override
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
    return forceQuit(this);
  }

  @override
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
    return forceQuit?.call(this);
  }

  @override
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
    if (forceQuit != null) {
      return forceQuit(this);
    }
    return orElse();
  }
}

abstract class _ForceQuit implements TicTacToeClientEvent {
  const factory _ForceQuit() = _$ForceQuitImpl;
}

/// @nodoc
abstract class _$$DisconnectedFromServerImplCopyWith<$Res> {
  factory _$$DisconnectedFromServerImplCopyWith(
          _$DisconnectedFromServerImpl value,
          $Res Function(_$DisconnectedFromServerImpl) then) =
      __$$DisconnectedFromServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? closeCode, String? closeReason});
}

/// @nodoc
class __$$DisconnectedFromServerImplCopyWithImpl<$Res>
    extends _$TicTacToeClientEventCopyWithImpl<$Res,
        _$DisconnectedFromServerImpl>
    implements _$$DisconnectedFromServerImplCopyWith<$Res> {
  __$$DisconnectedFromServerImplCopyWithImpl(
      _$DisconnectedFromServerImpl _value,
      $Res Function(_$DisconnectedFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? closeCode = freezed,
    Object? closeReason = freezed,
  }) {
    return _then(_$DisconnectedFromServerImpl(
      freezed == closeCode
          ? _value.closeCode
          : closeCode // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == closeReason
          ? _value.closeReason
          : closeReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DisconnectedFromServerImpl implements _DisconnectedFromServer {
  const _$DisconnectedFromServerImpl([this.closeCode, this.closeReason]);

  @override
  final int? closeCode;
  @override
  final String? closeReason;

  @override
  String toString() {
    return 'TicTacToeClientEvent.disconnectedFromServer(closeCode: $closeCode, closeReason: $closeReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisconnectedFromServerImpl &&
            (identical(other.closeCode, closeCode) ||
                other.closeCode == closeCode) &&
            (identical(other.closeReason, closeReason) ||
                other.closeReason == closeReason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, closeCode, closeReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisconnectedFromServerImplCopyWith<_$DisconnectedFromServerImpl>
      get copyWith => __$$DisconnectedFromServerImplCopyWithImpl<
          _$DisconnectedFromServerImpl>(this, _$identity);

  @override
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
    return disconnectedFromServer(closeCode, closeReason);
  }

  @override
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
    return disconnectedFromServer?.call(closeCode, closeReason);
  }

  @override
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
    if (disconnectedFromServer != null) {
      return disconnectedFromServer(closeCode, closeReason);
    }
    return orElse();
  }

  @override
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
    return disconnectedFromServer(this);
  }

  @override
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
    return disconnectedFromServer?.call(this);
  }

  @override
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
    if (disconnectedFromServer != null) {
      return disconnectedFromServer(this);
    }
    return orElse();
  }
}

abstract class _DisconnectedFromServer implements TicTacToeClientEvent {
  const factory _DisconnectedFromServer(
      [final int? closeCode,
      final String? closeReason]) = _$DisconnectedFromServerImpl;

  int? get closeCode;
  String? get closeReason;
  @JsonKey(ignore: true)
  _$$DisconnectedFromServerImplCopyWith<_$DisconnectedFromServerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicTacToeClientState {
  ResponseWrapper<IMyWsConnectionHandler> get connectResponse =>
      throw _privateConstructorUsedError;
  TicTacToeGameState? get gameState => throw _privateConstructorUsedError;
  EndGameDialogStatus get endGameDialogStatus =>
      throw _privateConstructorUsedError;
  bool get isQuittingGame => throw _privateConstructorUsedError;

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
      {ResponseWrapper<IMyWsConnectionHandler> connectResponse,
      TicTacToeGameState? gameState,
      EndGameDialogStatus endGameDialogStatus,
      bool isQuittingGame});

  $ResponseWrapperCopyWith<IMyWsConnectionHandler, $Res> get connectResponse;
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
    Object? endGameDialogStatus = null,
    Object? isQuittingGame = null,
  }) {
    return _then(_value.copyWith(
      connectResponse: null == connectResponse
          ? _value.connectResponse
          : connectResponse // ignore: cast_nullable_to_non_nullable
              as ResponseWrapper<IMyWsConnectionHandler>,
      gameState: freezed == gameState
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as TicTacToeGameState?,
      endGameDialogStatus: null == endGameDialogStatus
          ? _value.endGameDialogStatus
          : endGameDialogStatus // ignore: cast_nullable_to_non_nullable
              as EndGameDialogStatus,
      isQuittingGame: null == isQuittingGame
          ? _value.isQuittingGame
          : isQuittingGame // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseWrapperCopyWith<IMyWsConnectionHandler, $Res> get connectResponse {
    return $ResponseWrapperCopyWith<IMyWsConnectionHandler, $Res>(
        _value.connectResponse, (value) {
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
    Object? endGameDialogStatus = null,
    Object? isQuittingGame = null,
  }) {
    return _then(_$TicTacToeClientStateImpl(
      connectResponse: null == connectResponse
          ? _value.connectResponse
          : connectResponse // ignore: cast_nullable_to_non_nullable
              as ResponseWrapper<IMyWsConnectionHandler>,
      gameState: freezed == gameState
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as TicTacToeGameState?,
      endGameDialogStatus: null == endGameDialogStatus
          ? _value.endGameDialogStatus
          : endGameDialogStatus // ignore: cast_nullable_to_non_nullable
              as EndGameDialogStatus,
      isQuittingGame: null == isQuittingGame
          ? _value.isQuittingGame
          : isQuittingGame // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TicTacToeClientStateImpl extends _TicTacToeClientState {
  const _$TicTacToeClientStateImpl(
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

  @override
  String toString() {
    return 'TicTacToeClientState(connectResponse: $connectResponse, gameState: $gameState, endGameDialogStatus: $endGameDialogStatus, isQuittingGame: $isQuittingGame)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicTacToeClientStateImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicTacToeClientStateImplCopyWith<_$TicTacToeClientStateImpl>
      get copyWith =>
          __$$TicTacToeClientStateImplCopyWithImpl<_$TicTacToeClientStateImpl>(
              this, _$identity);
}

abstract class _TicTacToeClientState extends TicTacToeClientState {
  const factory _TicTacToeClientState(
      {required final ResponseWrapper<IMyWsConnectionHandler> connectResponse,
      required final TicTacToeGameState? gameState,
      required final EndGameDialogStatus endGameDialogStatus,
      required final bool isQuittingGame}) = _$TicTacToeClientStateImpl;
  const _TicTacToeClientState._() : super._();

  @override
  ResponseWrapper<IMyWsConnectionHandler> get connectResponse;
  @override
  TicTacToeGameState? get gameState;
  @override
  EndGameDialogStatus get endGameDialogStatus;
  @override
  bool get isQuittingGame;
  @override
  @JsonKey(ignore: true)
  _$$TicTacToeClientStateImplCopyWith<_$TicTacToeClientStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
