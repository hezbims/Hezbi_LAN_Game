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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectToServer,
    TResult? Function(int row, int col)? clickTile,
    TResult? Function(dynamic data)? handleDataFromServer,
    TResult? Function(Object error)? handleErrorFromServer,
    TResult? Function()? doneShowEndGameDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectToServer,
    TResult Function(int row, int col)? clickTile,
    TResult Function(dynamic data)? handleDataFromServer,
    TResult Function(Object error)? handleErrorFromServer,
    TResult Function()? doneShowEndGameDialog,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectToServer value)? connectToServer,
    TResult? Function(ClickTile value)? clickTile,
    TResult? Function(HandleDataFromServer value)? handleDataFromServer,
    TResult? Function(HandleErrorFromServer value)? handleErrorFromServer,
    TResult? Function(DoneShowEndGameDialog value)? doneShowEndGameDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectToServer value)? connectToServer,
    TResult Function(ClickTile value)? clickTile,
    TResult Function(HandleDataFromServer value)? handleDataFromServer,
    TResult Function(HandleErrorFromServer value)? handleErrorFromServer,
    TResult Function(DoneShowEndGameDialog value)? doneShowEndGameDialog,
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
mixin _$TicTacToeClientState {
  ResponseWrapper<IMyWsConnectionHandler> get connectResponse =>
      throw _privateConstructorUsedError;
  TicTacToeGameState? get gameState => throw _privateConstructorUsedError;
  EndGameDialogStatus get endGameDialogStatus =>
      throw _privateConstructorUsedError;
  bool get isQuitGameLoading => throw _privateConstructorUsedError;

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
      bool isQuitGameLoading});

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
    Object? isQuitGameLoading = null,
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
      isQuitGameLoading: null == isQuitGameLoading
          ? _value.isQuitGameLoading
          : isQuitGameLoading // ignore: cast_nullable_to_non_nullable
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
      bool isQuitGameLoading});

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
    Object? isQuitGameLoading = null,
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
      isQuitGameLoading: null == isQuitGameLoading
          ? _value.isQuitGameLoading
          : isQuitGameLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TicTacToeClientStateImpl implements _TicTacToeClientState {
  const _$TicTacToeClientStateImpl(
      {required this.connectResponse,
      required this.gameState,
      required this.endGameDialogStatus,
      required this.isQuitGameLoading});

  @override
  final ResponseWrapper<IMyWsConnectionHandler> connectResponse;
  @override
  final TicTacToeGameState? gameState;
  @override
  final EndGameDialogStatus endGameDialogStatus;
  @override
  final bool isQuitGameLoading;

  @override
  String toString() {
    return 'TicTacToeClientState(connectResponse: $connectResponse, gameState: $gameState, endGameDialogStatus: $endGameDialogStatus, isQuitGameLoading: $isQuitGameLoading)';
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
            (identical(other.isQuitGameLoading, isQuitGameLoading) ||
                other.isQuitGameLoading == isQuitGameLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectResponse, gameState,
      endGameDialogStatus, isQuitGameLoading);

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
      {required final ResponseWrapper<IMyWsConnectionHandler> connectResponse,
      required final TicTacToeGameState? gameState,
      required final EndGameDialogStatus endGameDialogStatus,
      required final bool isQuitGameLoading}) = _$TicTacToeClientStateImpl;

  @override
  ResponseWrapper<IMyWsConnectionHandler> get connectResponse;
  @override
  TicTacToeGameState? get gameState;
  @override
  EndGameDialogStatus get endGameDialogStatus;
  @override
  bool get isQuitGameLoading;
  @override
  @JsonKey(ignore: true)
  _$$TicTacToeClientStateImplCopyWith<_$TicTacToeClientStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
