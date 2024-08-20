// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResponseWrapper<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) succeed,
    required TResult Function() loading,
    required TResult Function(ResponseErrorType? errorType) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? succeed,
    TResult? Function()? loading,
    TResult? Function(ResponseErrorType? errorType)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? succeed,
    TResult Function()? loading,
    TResult Function(ResponseErrorType? errorType)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Succeed<T> value) succeed,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Succeed<T> value)? succeed,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Succeed<T> value)? succeed,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseWrapperCopyWith<T, $Res> {
  factory $ResponseWrapperCopyWith(
          ResponseWrapper<T> value, $Res Function(ResponseWrapper<T>) then) =
      _$ResponseWrapperCopyWithImpl<T, $Res, ResponseWrapper<T>>;
}

/// @nodoc
class _$ResponseWrapperCopyWithImpl<T, $Res, $Val extends ResponseWrapper<T>>
    implements $ResponseWrapperCopyWith<T, $Res> {
  _$ResponseWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SucceedImplCopyWith<T, $Res> {
  factory _$$SucceedImplCopyWith(
          _$SucceedImpl<T> value, $Res Function(_$SucceedImpl<T>) then) =
      __$$SucceedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SucceedImplCopyWithImpl<T, $Res>
    extends _$ResponseWrapperCopyWithImpl<T, $Res, _$SucceedImpl<T>>
    implements _$$SucceedImplCopyWith<T, $Res> {
  __$$SucceedImplCopyWithImpl(
      _$SucceedImpl<T> _value, $Res Function(_$SucceedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SucceedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SucceedImpl<T> extends Succeed<T> {
  _$SucceedImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'ResponseWrapper<$T>.succeed(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SucceedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SucceedImplCopyWith<T, _$SucceedImpl<T>> get copyWith =>
      __$$SucceedImplCopyWithImpl<T, _$SucceedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) succeed,
    required TResult Function() loading,
    required TResult Function(ResponseErrorType? errorType) error,
  }) {
    return succeed(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? succeed,
    TResult? Function()? loading,
    TResult? Function(ResponseErrorType? errorType)? error,
  }) {
    return succeed?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? succeed,
    TResult Function()? loading,
    TResult Function(ResponseErrorType? errorType)? error,
    required TResult orElse(),
  }) {
    if (succeed != null) {
      return succeed(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Succeed<T> value) succeed,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Error<T> value) error,
  }) {
    return succeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Succeed<T> value)? succeed,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Error<T> value)? error,
  }) {
    return succeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Succeed<T> value)? succeed,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (succeed != null) {
      return succeed(this);
    }
    return orElse();
  }
}

abstract class Succeed<T> extends ResponseWrapper<T> {
  factory Succeed(final T data) = _$SucceedImpl<T>;
  Succeed._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$SucceedImplCopyWith<T, _$SucceedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$ResponseWrapperCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<T> extends Loading<T> {
  _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'ResponseWrapper<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) succeed,
    required TResult Function() loading,
    required TResult Function(ResponseErrorType? errorType) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? succeed,
    TResult? Function()? loading,
    TResult? Function(ResponseErrorType? errorType)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? succeed,
    TResult Function()? loading,
    TResult Function(ResponseErrorType? errorType)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Succeed<T> value) succeed,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Error<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Succeed<T> value)? succeed,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Error<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Succeed<T> value)? succeed,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> extends ResponseWrapper<T> {
  factory Loading() = _$LoadingImpl<T>;
  Loading._() : super._();
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ResponseErrorType? errorType});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$ResponseWrapperCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorType = freezed,
  }) {
    return _then(_$ErrorImpl<T>(
      errorType: freezed == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as ResponseErrorType?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> extends Error<T> {
  _$ErrorImpl({this.errorType}) : super._();

  @override
  final ResponseErrorType? errorType;

  @override
  String toString() {
    return 'ResponseWrapper<$T>.error(errorType: $errorType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) succeed,
    required TResult Function() loading,
    required TResult Function(ResponseErrorType? errorType) error,
  }) {
    return error(errorType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? succeed,
    TResult? Function()? loading,
    TResult? Function(ResponseErrorType? errorType)? error,
  }) {
    return error?.call(errorType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? succeed,
    TResult Function()? loading,
    TResult Function(ResponseErrorType? errorType)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Succeed<T> value) succeed,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Succeed<T> value)? succeed,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Succeed<T> value)? succeed,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> extends ResponseWrapper<T> {
  factory Error({final ResponseErrorType? errorType}) = _$ErrorImpl<T>;
  Error._() : super._();

  ResponseErrorType? get errorType;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
