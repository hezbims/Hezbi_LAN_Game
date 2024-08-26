// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayerProfile _$PlayerProfileFromJson(Map<String, dynamic> json) {
  return _PlayerPofile.fromJson(json);
}

/// @nodoc
mixin _$PlayerProfile {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerProfileCopyWith<PlayerProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerProfileCopyWith<$Res> {
  factory $PlayerProfileCopyWith(
          PlayerProfile value, $Res Function(PlayerProfile) then) =
      _$PlayerProfileCopyWithImpl<$Res, PlayerProfile>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$PlayerProfileCopyWithImpl<$Res, $Val extends PlayerProfile>
    implements $PlayerProfileCopyWith<$Res> {
  _$PlayerProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerPofileImplCopyWith<$Res>
    implements $PlayerProfileCopyWith<$Res> {
  factory _$$PlayerPofileImplCopyWith(
          _$PlayerPofileImpl value, $Res Function(_$PlayerPofileImpl) then) =
      __$$PlayerPofileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$PlayerPofileImplCopyWithImpl<$Res>
    extends _$PlayerProfileCopyWithImpl<$Res, _$PlayerPofileImpl>
    implements _$$PlayerPofileImplCopyWith<$Res> {
  __$$PlayerPofileImplCopyWithImpl(
      _$PlayerPofileImpl _value, $Res Function(_$PlayerPofileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$PlayerPofileImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerPofileImpl implements _PlayerPofile {
  const _$PlayerPofileImpl({required this.name});

  factory _$PlayerPofileImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerPofileImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'PlayerProfile(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerPofileImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerPofileImplCopyWith<_$PlayerPofileImpl> get copyWith =>
      __$$PlayerPofileImplCopyWithImpl<_$PlayerPofileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerPofileImplToJson(
      this,
    );
  }
}

abstract class _PlayerPofile implements PlayerProfile {
  const factory _PlayerPofile({required final String name}) =
      _$PlayerPofileImpl;

  factory _PlayerPofile.fromJson(Map<String, dynamic> json) =
      _$PlayerPofileImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PlayerPofileImplCopyWith<_$PlayerPofileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
