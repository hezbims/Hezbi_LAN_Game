// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_command_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
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
  /// Serializes this ClientCommandModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClientCommandModel);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ClientCommandModel()';
  }
}

/// @nodoc
class $ClientCommandModelCopyWith<$Res> {
  $ClientCommandModelCopyWith(
      ClientCommandModel _, $Res Function(ClientCommandModel) __);
}

/// Adds pattern-matching-related methods to [ClientCommandModel].
extension ClientCommandModelPatterns on ClientCommandModel {
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
    TResult Function(MarkCoordinate value)? markCoordinate,
    TResult Function(ConfirmEndGame value)? confirmEndGame,
    TResult Function(ClientQuitGame value)? clientQuitGame,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case MarkCoordinate() when markCoordinate != null:
        return markCoordinate(_that);
      case ConfirmEndGame() when confirmEndGame != null:
        return confirmEndGame(_that);
      case ClientQuitGame() when clientQuitGame != null:
        return clientQuitGame(_that);
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
    required TResult Function(MarkCoordinate value) markCoordinate,
    required TResult Function(ConfirmEndGame value) confirmEndGame,
    required TResult Function(ClientQuitGame value) clientQuitGame,
  }) {
    final _that = this;
    switch (_that) {
      case MarkCoordinate():
        return markCoordinate(_that);
      case ConfirmEndGame():
        return confirmEndGame(_that);
      case ClientQuitGame():
        return clientQuitGame(_that);
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
    TResult? Function(MarkCoordinate value)? markCoordinate,
    TResult? Function(ConfirmEndGame value)? confirmEndGame,
    TResult? Function(ClientQuitGame value)? clientQuitGame,
  }) {
    final _that = this;
    switch (_that) {
      case MarkCoordinate() when markCoordinate != null:
        return markCoordinate(_that);
      case ConfirmEndGame() when confirmEndGame != null:
        return confirmEndGame(_that);
      case ClientQuitGame() when clientQuitGame != null:
        return clientQuitGame(_that);
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
    TResult Function(int row, int col)? markCoordinate,
    TResult Function()? confirmEndGame,
    TResult Function()? clientQuitGame,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case MarkCoordinate() when markCoordinate != null:
        return markCoordinate(_that.row, _that.col);
      case ConfirmEndGame() when confirmEndGame != null:
        return confirmEndGame();
      case ClientQuitGame() when clientQuitGame != null:
        return clientQuitGame();
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
    required TResult Function(int row, int col) markCoordinate,
    required TResult Function() confirmEndGame,
    required TResult Function() clientQuitGame,
  }) {
    final _that = this;
    switch (_that) {
      case MarkCoordinate():
        return markCoordinate(_that.row, _that.col);
      case ConfirmEndGame():
        return confirmEndGame();
      case ClientQuitGame():
        return clientQuitGame();
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
    TResult? Function(int row, int col)? markCoordinate,
    TResult? Function()? confirmEndGame,
    TResult? Function()? clientQuitGame,
  }) {
    final _that = this;
    switch (_that) {
      case MarkCoordinate() when markCoordinate != null:
        return markCoordinate(_that.row, _that.col);
      case ConfirmEndGame() when confirmEndGame != null:
        return confirmEndGame();
      case ClientQuitGame() when clientQuitGame != null:
        return clientQuitGame();
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class MarkCoordinate implements ClientCommandModel {
  const MarkCoordinate(
      {required this.row, required this.col, final String? $type})
      : $type = $type ?? 'markCoordinate';
  factory MarkCoordinate.fromJson(Map<String, dynamic> json) =>
      _$MarkCoordinateFromJson(json);

  final int row;
  final int col;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ClientCommandModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MarkCoordinateCopyWith<MarkCoordinate> get copyWith =>
      _$MarkCoordinateCopyWithImpl<MarkCoordinate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MarkCoordinateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MarkCoordinate &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.col, col) || other.col == col));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, row, col);

  @override
  String toString() {
    return 'ClientCommandModel.markCoordinate(row: $row, col: $col)';
  }
}

/// @nodoc
abstract mixin class $MarkCoordinateCopyWith<$Res>
    implements $ClientCommandModelCopyWith<$Res> {
  factory $MarkCoordinateCopyWith(
          MarkCoordinate value, $Res Function(MarkCoordinate) _then) =
      _$MarkCoordinateCopyWithImpl;
  @useResult
  $Res call({int row, int col});
}

/// @nodoc
class _$MarkCoordinateCopyWithImpl<$Res>
    implements $MarkCoordinateCopyWith<$Res> {
  _$MarkCoordinateCopyWithImpl(this._self, this._then);

  final MarkCoordinate _self;
  final $Res Function(MarkCoordinate) _then;

  /// Create a copy of ClientCommandModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? row = null,
    Object? col = null,
  }) {
    return _then(MarkCoordinate(
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
@JsonSerializable()
class ConfirmEndGame implements ClientCommandModel {
  const ConfirmEndGame({final String? $type})
      : $type = $type ?? 'confirmEndGame';
  factory ConfirmEndGame.fromJson(Map<String, dynamic> json) =>
      _$ConfirmEndGameFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$ConfirmEndGameToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ConfirmEndGame);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ClientCommandModel.confirmEndGame()';
  }
}

/// @nodoc
@JsonSerializable()
class ClientQuitGame implements ClientCommandModel {
  const ClientQuitGame({final String? $type})
      : $type = $type ?? 'clientQuitGame';
  factory ClientQuitGame.fromJson(Map<String, dynamic> json) =>
      _$ClientQuitGameFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$ClientQuitGameToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClientQuitGame);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ClientCommandModel.clientQuitGame()';
  }
}

// dart format on
