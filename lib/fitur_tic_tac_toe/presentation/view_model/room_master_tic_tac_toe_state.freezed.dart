// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_master_tic_tac_toe_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoomMasterTicTacToeState {
  ResponseWrapper<String> get wsServerUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomMasterTicTacToeStateCopyWith<RoomMasterTicTacToeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomMasterTicTacToeStateCopyWith<$Res> {
  factory $RoomMasterTicTacToeStateCopyWith(RoomMasterTicTacToeState value,
          $Res Function(RoomMasterTicTacToeState) then) =
      _$RoomMasterTicTacToeStateCopyWithImpl<$Res, RoomMasterTicTacToeState>;
  @useResult
  $Res call({ResponseWrapper<String> wsServerUrl});

  $ResponseWrapperCopyWith<String, $Res> get wsServerUrl;
}

/// @nodoc
class _$RoomMasterTicTacToeStateCopyWithImpl<$Res,
        $Val extends RoomMasterTicTacToeState>
    implements $RoomMasterTicTacToeStateCopyWith<$Res> {
  _$RoomMasterTicTacToeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wsServerUrl = null,
  }) {
    return _then(_value.copyWith(
      wsServerUrl: null == wsServerUrl
          ? _value.wsServerUrl
          : wsServerUrl // ignore: cast_nullable_to_non_nullable
              as ResponseWrapper<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseWrapperCopyWith<String, $Res> get wsServerUrl {
    return $ResponseWrapperCopyWith<String, $Res>(_value.wsServerUrl, (value) {
      return _then(_value.copyWith(wsServerUrl: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoomMasterTicTacToeStateImplCopyWith<$Res>
    implements $RoomMasterTicTacToeStateCopyWith<$Res> {
  factory _$$RoomMasterTicTacToeStateImplCopyWith(
          _$RoomMasterTicTacToeStateImpl value,
          $Res Function(_$RoomMasterTicTacToeStateImpl) then) =
      __$$RoomMasterTicTacToeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponseWrapper<String> wsServerUrl});

  @override
  $ResponseWrapperCopyWith<String, $Res> get wsServerUrl;
}

/// @nodoc
class __$$RoomMasterTicTacToeStateImplCopyWithImpl<$Res>
    extends _$RoomMasterTicTacToeStateCopyWithImpl<$Res,
        _$RoomMasterTicTacToeStateImpl>
    implements _$$RoomMasterTicTacToeStateImplCopyWith<$Res> {
  __$$RoomMasterTicTacToeStateImplCopyWithImpl(
      _$RoomMasterTicTacToeStateImpl _value,
      $Res Function(_$RoomMasterTicTacToeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wsServerUrl = null,
  }) {
    return _then(_$RoomMasterTicTacToeStateImpl(
      wsServerUrl: null == wsServerUrl
          ? _value.wsServerUrl
          : wsServerUrl // ignore: cast_nullable_to_non_nullable
              as ResponseWrapper<String>,
    ));
  }
}

/// @nodoc

class _$RoomMasterTicTacToeStateImpl implements _RoomMasterTicTacToeState {
  const _$RoomMasterTicTacToeStateImpl({required this.wsServerUrl});

  @override
  final ResponseWrapper<String> wsServerUrl;

  @override
  String toString() {
    return 'RoomMasterTicTacToeState(wsServerUrl: $wsServerUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomMasterTicTacToeStateImpl &&
            (identical(other.wsServerUrl, wsServerUrl) ||
                other.wsServerUrl == wsServerUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wsServerUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomMasterTicTacToeStateImplCopyWith<_$RoomMasterTicTacToeStateImpl>
      get copyWith => __$$RoomMasterTicTacToeStateImplCopyWithImpl<
          _$RoomMasterTicTacToeStateImpl>(this, _$identity);
}

abstract class _RoomMasterTicTacToeState implements RoomMasterTicTacToeState {
  const factory _RoomMasterTicTacToeState(
          {required final ResponseWrapper<String> wsServerUrl}) =
      _$RoomMasterTicTacToeStateImpl;

  @override
  ResponseWrapper<String> get wsServerUrl;
  @override
  @JsonKey(ignore: true)
  _$$RoomMasterTicTacToeStateImplCopyWith<_$RoomMasterTicTacToeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
