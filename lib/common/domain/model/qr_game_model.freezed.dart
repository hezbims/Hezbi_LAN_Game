// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_game_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QrGameModel {
  MyGameType get gameType;
  String get gameAddress;

  /// Create a copy of QrGameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QrGameModelCopyWith<QrGameModel> get copyWith =>
      _$QrGameModelCopyWithImpl<QrGameModel>(this as QrGameModel, _$identity);

  /// Serializes this QrGameModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QrGameModel &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType) &&
            (identical(other.gameAddress, gameAddress) ||
                other.gameAddress == gameAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gameType, gameAddress);

  @override
  String toString() {
    return 'QrGameModel(gameType: $gameType, gameAddress: $gameAddress)';
  }
}

/// @nodoc
abstract mixin class $QrGameModelCopyWith<$Res> {
  factory $QrGameModelCopyWith(
          QrGameModel value, $Res Function(QrGameModel) _then) =
      _$QrGameModelCopyWithImpl;
  @useResult
  $Res call({MyGameType gameType, String gameAddress});
}

/// @nodoc
class _$QrGameModelCopyWithImpl<$Res> implements $QrGameModelCopyWith<$Res> {
  _$QrGameModelCopyWithImpl(this._self, this._then);

  final QrGameModel _self;
  final $Res Function(QrGameModel) _then;

  /// Create a copy of QrGameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameType = null,
    Object? gameAddress = null,
  }) {
    return _then(_self.copyWith(
      gameType: null == gameType
          ? _self.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as MyGameType,
      gameAddress: null == gameAddress
          ? _self.gameAddress
          : gameAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [QrGameModel].
extension QrGameModelPatterns on QrGameModel {
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
    TResult Function(_QrGameModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QrGameModel() when $default != null:
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
    TResult Function(_QrGameModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QrGameModel():
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
    TResult? Function(_QrGameModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QrGameModel() when $default != null:
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
    TResult Function(MyGameType gameType, String gameAddress)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QrGameModel() when $default != null:
        return $default(_that.gameType, _that.gameAddress);
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
    TResult Function(MyGameType gameType, String gameAddress) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QrGameModel():
        return $default(_that.gameType, _that.gameAddress);
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
    TResult? Function(MyGameType gameType, String gameAddress)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QrGameModel() when $default != null:
        return $default(_that.gameType, _that.gameAddress);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _QrGameModel extends QrGameModel {
  const _QrGameModel({required this.gameType, required this.gameAddress})
      : super._();
  factory _QrGameModel.fromJson(Map<String, dynamic> json) =>
      _$QrGameModelFromJson(json);

  @override
  final MyGameType gameType;
  @override
  final String gameAddress;

  /// Create a copy of QrGameModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QrGameModelCopyWith<_QrGameModel> get copyWith =>
      __$QrGameModelCopyWithImpl<_QrGameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QrGameModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QrGameModel &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType) &&
            (identical(other.gameAddress, gameAddress) ||
                other.gameAddress == gameAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gameType, gameAddress);

  @override
  String toString() {
    return 'QrGameModel(gameType: $gameType, gameAddress: $gameAddress)';
  }
}

/// @nodoc
abstract mixin class _$QrGameModelCopyWith<$Res>
    implements $QrGameModelCopyWith<$Res> {
  factory _$QrGameModelCopyWith(
          _QrGameModel value, $Res Function(_QrGameModel) _then) =
      __$QrGameModelCopyWithImpl;
  @override
  @useResult
  $Res call({MyGameType gameType, String gameAddress});
}

/// @nodoc
class __$QrGameModelCopyWithImpl<$Res> implements _$QrGameModelCopyWith<$Res> {
  __$QrGameModelCopyWithImpl(this._self, this._then);

  final _QrGameModel _self;
  final $Res Function(_QrGameModel) _then;

  /// Create a copy of QrGameModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gameType = null,
    Object? gameAddress = null,
  }) {
    return _then(_QrGameModel(
      gameType: null == gameType
          ? _self.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as MyGameType,
      gameAddress: null == gameAddress
          ? _self.gameAddress
          : gameAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
