// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_command_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientCommandModel _$ClientCommandModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'markCoordinate':
      return MarkCoordinate.fromJson(json);
    case 'confirmEndGame':
      return ConfirmEndGame.fromJson(json);
    case 'clientQuitGame':
      return ClientQuitGame.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ClientCommandModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ClientCommandModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int row, int col) markCoordinate,
    required TResult Function() confirmEndGame,
    required TResult Function() clientQuitGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int row, int col)? markCoordinate,
    TResult? Function()? confirmEndGame,
    TResult? Function()? clientQuitGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int row, int col)? markCoordinate,
    TResult Function()? confirmEndGame,
    TResult Function()? clientQuitGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarkCoordinate value) markCoordinate,
    required TResult Function(ConfirmEndGame value) confirmEndGame,
    required TResult Function(ClientQuitGame value) clientQuitGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MarkCoordinate value)? markCoordinate,
    TResult? Function(ConfirmEndGame value)? confirmEndGame,
    TResult? Function(ClientQuitGame value)? clientQuitGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkCoordinate value)? markCoordinate,
    TResult Function(ConfirmEndGame value)? confirmEndGame,
    TResult Function(ClientQuitGame value)? clientQuitGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCommandModelCopyWith<$Res> {
  factory $ClientCommandModelCopyWith(
          ClientCommandModel value, $Res Function(ClientCommandModel) then) =
      _$ClientCommandModelCopyWithImpl<$Res, ClientCommandModel>;
}

/// @nodoc
class _$ClientCommandModelCopyWithImpl<$Res, $Val extends ClientCommandModel>
    implements $ClientCommandModelCopyWith<$Res> {
  _$ClientCommandModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MarkCoordinateImplCopyWith<$Res> {
  factory _$$MarkCoordinateImplCopyWith(_$MarkCoordinateImpl value,
          $Res Function(_$MarkCoordinateImpl) then) =
      __$$MarkCoordinateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int row, int col});
}

/// @nodoc
class __$$MarkCoordinateImplCopyWithImpl<$Res>
    extends _$ClientCommandModelCopyWithImpl<$Res, _$MarkCoordinateImpl>
    implements _$$MarkCoordinateImplCopyWith<$Res> {
  __$$MarkCoordinateImplCopyWithImpl(
      _$MarkCoordinateImpl _value, $Res Function(_$MarkCoordinateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = null,
    Object? col = null,
  }) {
    return _then(_$MarkCoordinateImpl(
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
@JsonSerializable()
class _$MarkCoordinateImpl implements MarkCoordinate {
  const _$MarkCoordinateImpl(
      {required this.row, required this.col, final String? $type})
      : $type = $type ?? 'markCoordinate';

  factory _$MarkCoordinateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarkCoordinateImplFromJson(json);

  @override
  final int row;
  @override
  final int col;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ClientCommandModel.markCoordinate(row: $row, col: $col)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkCoordinateImpl &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.col, col) || other.col == col));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, row, col);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkCoordinateImplCopyWith<_$MarkCoordinateImpl> get copyWith =>
      __$$MarkCoordinateImplCopyWithImpl<_$MarkCoordinateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int row, int col) markCoordinate,
    required TResult Function() confirmEndGame,
    required TResult Function() clientQuitGame,
  }) {
    return markCoordinate(row, col);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int row, int col)? markCoordinate,
    TResult? Function()? confirmEndGame,
    TResult? Function()? clientQuitGame,
  }) {
    return markCoordinate?.call(row, col);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int row, int col)? markCoordinate,
    TResult Function()? confirmEndGame,
    TResult Function()? clientQuitGame,
    required TResult orElse(),
  }) {
    if (markCoordinate != null) {
      return markCoordinate(row, col);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarkCoordinate value) markCoordinate,
    required TResult Function(ConfirmEndGame value) confirmEndGame,
    required TResult Function(ClientQuitGame value) clientQuitGame,
  }) {
    return markCoordinate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MarkCoordinate value)? markCoordinate,
    TResult? Function(ConfirmEndGame value)? confirmEndGame,
    TResult? Function(ClientQuitGame value)? clientQuitGame,
  }) {
    return markCoordinate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkCoordinate value)? markCoordinate,
    TResult Function(ConfirmEndGame value)? confirmEndGame,
    TResult Function(ClientQuitGame value)? clientQuitGame,
    required TResult orElse(),
  }) {
    if (markCoordinate != null) {
      return markCoordinate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkCoordinateImplToJson(
      this,
    );
  }
}

abstract class MarkCoordinate implements ClientCommandModel {
  const factory MarkCoordinate(
      {required final int row, required final int col}) = _$MarkCoordinateImpl;

  factory MarkCoordinate.fromJson(Map<String, dynamic> json) =
      _$MarkCoordinateImpl.fromJson;

  int get row;
  int get col;
  @JsonKey(ignore: true)
  _$$MarkCoordinateImplCopyWith<_$MarkCoordinateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmEndGameImplCopyWith<$Res> {
  factory _$$ConfirmEndGameImplCopyWith(_$ConfirmEndGameImpl value,
          $Res Function(_$ConfirmEndGameImpl) then) =
      __$$ConfirmEndGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmEndGameImplCopyWithImpl<$Res>
    extends _$ClientCommandModelCopyWithImpl<$Res, _$ConfirmEndGameImpl>
    implements _$$ConfirmEndGameImplCopyWith<$Res> {
  __$$ConfirmEndGameImplCopyWithImpl(
      _$ConfirmEndGameImpl _value, $Res Function(_$ConfirmEndGameImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ConfirmEndGameImpl implements ConfirmEndGame {
  const _$ConfirmEndGameImpl({final String? $type})
      : $type = $type ?? 'confirmEndGame';

  factory _$ConfirmEndGameImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmEndGameImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ClientCommandModel.confirmEndGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfirmEndGameImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int row, int col) markCoordinate,
    required TResult Function() confirmEndGame,
    required TResult Function() clientQuitGame,
  }) {
    return confirmEndGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int row, int col)? markCoordinate,
    TResult? Function()? confirmEndGame,
    TResult? Function()? clientQuitGame,
  }) {
    return confirmEndGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int row, int col)? markCoordinate,
    TResult Function()? confirmEndGame,
    TResult Function()? clientQuitGame,
    required TResult orElse(),
  }) {
    if (confirmEndGame != null) {
      return confirmEndGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarkCoordinate value) markCoordinate,
    required TResult Function(ConfirmEndGame value) confirmEndGame,
    required TResult Function(ClientQuitGame value) clientQuitGame,
  }) {
    return confirmEndGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MarkCoordinate value)? markCoordinate,
    TResult? Function(ConfirmEndGame value)? confirmEndGame,
    TResult? Function(ClientQuitGame value)? clientQuitGame,
  }) {
    return confirmEndGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkCoordinate value)? markCoordinate,
    TResult Function(ConfirmEndGame value)? confirmEndGame,
    TResult Function(ClientQuitGame value)? clientQuitGame,
    required TResult orElse(),
  }) {
    if (confirmEndGame != null) {
      return confirmEndGame(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmEndGameImplToJson(
      this,
    );
  }
}

abstract class ConfirmEndGame implements ClientCommandModel {
  const factory ConfirmEndGame() = _$ConfirmEndGameImpl;

  factory ConfirmEndGame.fromJson(Map<String, dynamic> json) =
      _$ConfirmEndGameImpl.fromJson;
}

/// @nodoc
abstract class _$$ClientQuitGameImplCopyWith<$Res> {
  factory _$$ClientQuitGameImplCopyWith(_$ClientQuitGameImpl value,
          $Res Function(_$ClientQuitGameImpl) then) =
      __$$ClientQuitGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientQuitGameImplCopyWithImpl<$Res>
    extends _$ClientCommandModelCopyWithImpl<$Res, _$ClientQuitGameImpl>
    implements _$$ClientQuitGameImplCopyWith<$Res> {
  __$$ClientQuitGameImplCopyWithImpl(
      _$ClientQuitGameImpl _value, $Res Function(_$ClientQuitGameImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ClientQuitGameImpl implements ClientQuitGame {
  const _$ClientQuitGameImpl({final String? $type})
      : $type = $type ?? 'clientQuitGame';

  factory _$ClientQuitGameImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientQuitGameImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ClientCommandModel.clientQuitGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientQuitGameImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int row, int col) markCoordinate,
    required TResult Function() confirmEndGame,
    required TResult Function() clientQuitGame,
  }) {
    return clientQuitGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int row, int col)? markCoordinate,
    TResult? Function()? confirmEndGame,
    TResult? Function()? clientQuitGame,
  }) {
    return clientQuitGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int row, int col)? markCoordinate,
    TResult Function()? confirmEndGame,
    TResult Function()? clientQuitGame,
    required TResult orElse(),
  }) {
    if (clientQuitGame != null) {
      return clientQuitGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarkCoordinate value) markCoordinate,
    required TResult Function(ConfirmEndGame value) confirmEndGame,
    required TResult Function(ClientQuitGame value) clientQuitGame,
  }) {
    return clientQuitGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MarkCoordinate value)? markCoordinate,
    TResult? Function(ConfirmEndGame value)? confirmEndGame,
    TResult? Function(ClientQuitGame value)? clientQuitGame,
  }) {
    return clientQuitGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkCoordinate value)? markCoordinate,
    TResult Function(ConfirmEndGame value)? confirmEndGame,
    TResult Function(ClientQuitGame value)? clientQuitGame,
    required TResult orElse(),
  }) {
    if (clientQuitGame != null) {
      return clientQuitGame(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientQuitGameImplToJson(
      this,
    );
  }
}

abstract class ClientQuitGame implements ClientCommandModel {
  const factory ClientQuitGame() = _$ClientQuitGameImpl;

  factory ClientQuitGame.fromJson(Map<String, dynamic> json) =
      _$ClientQuitGameImpl.fromJson;
}
