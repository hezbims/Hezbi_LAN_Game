// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseWrapper<T> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResponseWrapper<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ResponseWrapper<$T>()';
  }
}

/// @nodoc
class $ResponseWrapperCopyWith<T, $Res> {
  $ResponseWrapperCopyWith(
      ResponseWrapper<T> _, $Res Function(ResponseWrapper<T>) __);
}

/// Adds pattern-matching-related methods to [ResponseWrapper].
extension ResponseWrapperPatterns<T> on ResponseWrapper<T> {
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
    TResult Function(Succeed<T> value)? succeed,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Succeed() when succeed != null:
        return succeed(_that);
      case Loading() when loading != null:
        return loading(_that);
      case Error() when error != null:
        return error(_that);
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
    required TResult Function(Succeed<T> value) succeed,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Error<T> value) error,
  }) {
    final _that = this;
    switch (_that) {
      case Succeed():
        return succeed(_that);
      case Loading():
        return loading(_that);
      case Error():
        return error(_that);
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
    TResult? Function(Succeed<T> value)? succeed,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Error<T> value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case Succeed() when succeed != null:
        return succeed(_that);
      case Loading() when loading != null:
        return loading(_that);
      case Error() when error != null:
        return error(_that);
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
    TResult Function(T data)? succeed,
    TResult Function()? loading,
    TResult Function(ResponseErrorType? errorType)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Succeed() when succeed != null:
        return succeed(_that.data);
      case Loading() when loading != null:
        return loading();
      case Error() when error != null:
        return error(_that.errorType);
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
    required TResult Function(T data) succeed,
    required TResult Function() loading,
    required TResult Function(ResponseErrorType? errorType) error,
  }) {
    final _that = this;
    switch (_that) {
      case Succeed():
        return succeed(_that.data);
      case Loading():
        return loading();
      case Error():
        return error(_that.errorType);
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
    TResult? Function(T data)? succeed,
    TResult? Function()? loading,
    TResult? Function(ResponseErrorType? errorType)? error,
  }) {
    final _that = this;
    switch (_that) {
      case Succeed() when succeed != null:
        return succeed(_that.data);
      case Loading() when loading != null:
        return loading();
      case Error() when error != null:
        return error(_that.errorType);
      case _:
        return null;
    }
  }
}

/// @nodoc

class Succeed<T> extends ResponseWrapper<T> {
  Succeed(this.data) : super._();

  final T data;

  /// Create a copy of ResponseWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SucceedCopyWith<T, Succeed<T>> get copyWith =>
      _$SucceedCopyWithImpl<T, Succeed<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Succeed<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'ResponseWrapper<$T>.succeed(data: $data)';
  }
}

/// @nodoc
abstract mixin class $SucceedCopyWith<T, $Res>
    implements $ResponseWrapperCopyWith<T, $Res> {
  factory $SucceedCopyWith(Succeed<T> value, $Res Function(Succeed<T>) _then) =
      _$SucceedCopyWithImpl;
  @useResult
  $Res call({T data});
}

/// @nodoc
class _$SucceedCopyWithImpl<T, $Res> implements $SucceedCopyWith<T, $Res> {
  _$SucceedCopyWithImpl(this._self, this._then);

  final Succeed<T> _self;
  final $Res Function(Succeed<T>) _then;

  /// Create a copy of ResponseWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Succeed<T>(
      freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class Loading<T> extends ResponseWrapper<T> {
  Loading() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ResponseWrapper<$T>.loading()';
  }
}

/// @nodoc

class Error<T> extends ResponseWrapper<T> {
  Error({this.errorType}) : super._();

  final ResponseErrorType? errorType;

  /// Create a copy of ResponseWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<T, Error<T>> get copyWith =>
      _$ErrorCopyWithImpl<T, Error<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error<T> &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorType);

  @override
  String toString() {
    return 'ResponseWrapper<$T>.error(errorType: $errorType)';
  }
}

/// @nodoc
abstract mixin class $ErrorCopyWith<T, $Res>
    implements $ResponseWrapperCopyWith<T, $Res> {
  factory $ErrorCopyWith(Error<T> value, $Res Function(Error<T>) _then) =
      _$ErrorCopyWithImpl;
  @useResult
  $Res call({ResponseErrorType? errorType});
}

/// @nodoc
class _$ErrorCopyWithImpl<T, $Res> implements $ErrorCopyWith<T, $Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error<T> _self;
  final $Res Function(Error<T>) _then;

  /// Create a copy of ResponseWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? errorType = freezed,
  }) {
    return _then(Error<T>(
      errorType: freezed == errorType
          ? _self.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as ResponseErrorType?,
    ));
  }
}

// dart format on
