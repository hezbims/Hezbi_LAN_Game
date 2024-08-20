// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_game_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QrGameModel _$QrGameModelFromJson(Map<String, dynamic> json) {
  return _QrGameModel.fromJson(json);
}

/// @nodoc
mixin _$QrGameModel {
  MyGameType get gameType => throw _privateConstructorUsedError;
  String get gameAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QrGameModelCopyWith<QrGameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrGameModelCopyWith<$Res> {
  factory $QrGameModelCopyWith(
          QrGameModel value, $Res Function(QrGameModel) then) =
      _$QrGameModelCopyWithImpl<$Res, QrGameModel>;
  @useResult
  $Res call({MyGameType gameType, String gameAddress});
}

/// @nodoc
class _$QrGameModelCopyWithImpl<$Res, $Val extends QrGameModel>
    implements $QrGameModelCopyWith<$Res> {
  _$QrGameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameType = null,
    Object? gameAddress = null,
  }) {
    return _then(_value.copyWith(
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as MyGameType,
      gameAddress: null == gameAddress
          ? _value.gameAddress
          : gameAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QrGameModelImplCopyWith<$Res>
    implements $QrGameModelCopyWith<$Res> {
  factory _$$QrGameModelImplCopyWith(
          _$QrGameModelImpl value, $Res Function(_$QrGameModelImpl) then) =
      __$$QrGameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyGameType gameType, String gameAddress});
}

/// @nodoc
class __$$QrGameModelImplCopyWithImpl<$Res>
    extends _$QrGameModelCopyWithImpl<$Res, _$QrGameModelImpl>
    implements _$$QrGameModelImplCopyWith<$Res> {
  __$$QrGameModelImplCopyWithImpl(
      _$QrGameModelImpl _value, $Res Function(_$QrGameModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameType = null,
    Object? gameAddress = null,
  }) {
    return _then(_$QrGameModelImpl(
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as MyGameType,
      gameAddress: null == gameAddress
          ? _value.gameAddress
          : gameAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QrGameModelImpl extends _QrGameModel {
  const _$QrGameModelImpl({required this.gameType, required this.gameAddress})
      : super._();

  factory _$QrGameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QrGameModelImplFromJson(json);

  @override
  final MyGameType gameType;
  @override
  final String gameAddress;

  @override
  String toString() {
    return 'QrGameModel(gameType: $gameType, gameAddress: $gameAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrGameModelImpl &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType) &&
            (identical(other.gameAddress, gameAddress) ||
                other.gameAddress == gameAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gameType, gameAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QrGameModelImplCopyWith<_$QrGameModelImpl> get copyWith =>
      __$$QrGameModelImplCopyWithImpl<_$QrGameModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QrGameModelImplToJson(
      this,
    );
  }
}

abstract class _QrGameModel extends QrGameModel {
  const factory _QrGameModel(
      {required final MyGameType gameType,
      required final String gameAddress}) = _$QrGameModelImpl;
  const _QrGameModel._() : super._();

  factory _QrGameModel.fromJson(Map<String, dynamic> json) =
      _$QrGameModelImpl.fromJson;

  @override
  MyGameType get gameType;
  @override
  String get gameAddress;
  @override
  @JsonKey(ignore: true)
  _$$QrGameModelImplCopyWith<_$QrGameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
