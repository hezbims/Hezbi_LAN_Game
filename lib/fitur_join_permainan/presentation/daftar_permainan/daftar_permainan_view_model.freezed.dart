// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daftar_permainan_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DaftarPermainanState {
  List<MyServiceAttribute> get discoveredGames =>
      throw _privateConstructorUsedError;
  ResponseWrapper<Object?> get serviceDiscoveryStartupStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DaftarPermainanStateCopyWith<DaftarPermainanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaftarPermainanStateCopyWith<$Res> {
  factory $DaftarPermainanStateCopyWith(DaftarPermainanState value,
          $Res Function(DaftarPermainanState) then) =
      _$DaftarPermainanStateCopyWithImpl<$Res, DaftarPermainanState>;
  @useResult
  $Res call(
      {List<MyServiceAttribute> discoveredGames,
      ResponseWrapper<Object?> serviceDiscoveryStartupStatus});

  $ResponseWrapperCopyWith<Object?, $Res> get serviceDiscoveryStartupStatus;
}

/// @nodoc
class _$DaftarPermainanStateCopyWithImpl<$Res,
        $Val extends DaftarPermainanState>
    implements $DaftarPermainanStateCopyWith<$Res> {
  _$DaftarPermainanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discoveredGames = null,
    Object? serviceDiscoveryStartupStatus = null,
  }) {
    return _then(_value.copyWith(
      discoveredGames: null == discoveredGames
          ? _value.discoveredGames
          : discoveredGames // ignore: cast_nullable_to_non_nullable
              as List<MyServiceAttribute>,
      serviceDiscoveryStartupStatus: null == serviceDiscoveryStartupStatus
          ? _value.serviceDiscoveryStartupStatus
          : serviceDiscoveryStartupStatus // ignore: cast_nullable_to_non_nullable
              as ResponseWrapper<Object?>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseWrapperCopyWith<Object?, $Res> get serviceDiscoveryStartupStatus {
    return $ResponseWrapperCopyWith<Object?, $Res>(
        _value.serviceDiscoveryStartupStatus, (value) {
      return _then(
          _value.copyWith(serviceDiscoveryStartupStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DaftarPermainanStateImplCopyWith<$Res>
    implements $DaftarPermainanStateCopyWith<$Res> {
  factory _$$DaftarPermainanStateImplCopyWith(_$DaftarPermainanStateImpl value,
          $Res Function(_$DaftarPermainanStateImpl) then) =
      __$$DaftarPermainanStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MyServiceAttribute> discoveredGames,
      ResponseWrapper<Object?> serviceDiscoveryStartupStatus});

  @override
  $ResponseWrapperCopyWith<Object?, $Res> get serviceDiscoveryStartupStatus;
}

/// @nodoc
class __$$DaftarPermainanStateImplCopyWithImpl<$Res>
    extends _$DaftarPermainanStateCopyWithImpl<$Res, _$DaftarPermainanStateImpl>
    implements _$$DaftarPermainanStateImplCopyWith<$Res> {
  __$$DaftarPermainanStateImplCopyWithImpl(_$DaftarPermainanStateImpl _value,
      $Res Function(_$DaftarPermainanStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discoveredGames = null,
    Object? serviceDiscoveryStartupStatus = null,
  }) {
    return _then(_$DaftarPermainanStateImpl(
      discoveredGames: null == discoveredGames
          ? _value._discoveredGames
          : discoveredGames // ignore: cast_nullable_to_non_nullable
              as List<MyServiceAttribute>,
      serviceDiscoveryStartupStatus: null == serviceDiscoveryStartupStatus
          ? _value.serviceDiscoveryStartupStatus
          : serviceDiscoveryStartupStatus // ignore: cast_nullable_to_non_nullable
              as ResponseWrapper<Object?>,
    ));
  }
}

/// @nodoc

class _$DaftarPermainanStateImpl implements _DaftarPermainanState {
  const _$DaftarPermainanStateImpl(
      {required final List<MyServiceAttribute> discoveredGames,
      required this.serviceDiscoveryStartupStatus})
      : _discoveredGames = discoveredGames;

  final List<MyServiceAttribute> _discoveredGames;
  @override
  List<MyServiceAttribute> get discoveredGames {
    if (_discoveredGames is EqualUnmodifiableListView) return _discoveredGames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discoveredGames);
  }

  @override
  final ResponseWrapper<Object?> serviceDiscoveryStartupStatus;

  @override
  String toString() {
    return 'DaftarPermainanState(discoveredGames: $discoveredGames, serviceDiscoveryStartupStatus: $serviceDiscoveryStartupStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaftarPermainanStateImpl &&
            const DeepCollectionEquality()
                .equals(other._discoveredGames, _discoveredGames) &&
            (identical(other.serviceDiscoveryStartupStatus,
                    serviceDiscoveryStartupStatus) ||
                other.serviceDiscoveryStartupStatus ==
                    serviceDiscoveryStartupStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_discoveredGames),
      serviceDiscoveryStartupStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DaftarPermainanStateImplCopyWith<_$DaftarPermainanStateImpl>
      get copyWith =>
          __$$DaftarPermainanStateImplCopyWithImpl<_$DaftarPermainanStateImpl>(
              this, _$identity);
}

abstract class _DaftarPermainanState implements DaftarPermainanState {
  const factory _DaftarPermainanState(
      {required final List<MyServiceAttribute> discoveredGames,
      required final ResponseWrapper<Object?>
          serviceDiscoveryStartupStatus}) = _$DaftarPermainanStateImpl;

  @override
  List<MyServiceAttribute> get discoveredGames;
  @override
  ResponseWrapper<Object?> get serviceDiscoveryStartupStatus;
  @override
  @JsonKey(ignore: true)
  _$$DaftarPermainanStateImplCopyWith<_$DaftarPermainanStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DaftarPermainanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() discoverGame,
    required TResult Function(MyServiceAttribute gameAttribute) addGame,
    required TResult Function(MyServiceAttribute gameAttribute) removeGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? discoverGame,
    TResult? Function(MyServiceAttribute gameAttribute)? addGame,
    TResult? Function(MyServiceAttribute gameAttribute)? removeGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? discoverGame,
    TResult Function(MyServiceAttribute gameAttribute)? addGame,
    TResult Function(MyServiceAttribute gameAttribute)? removeGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiscoverGame value) discoverGame,
    required TResult Function(_AddGame value) addGame,
    required TResult Function(_RemoveGame value) removeGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscoverGame value)? discoverGame,
    TResult? Function(_AddGame value)? addGame,
    TResult? Function(_RemoveGame value)? removeGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscoverGame value)? discoverGame,
    TResult Function(_AddGame value)? addGame,
    TResult Function(_RemoveGame value)? removeGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaftarPermainanEventCopyWith<$Res> {
  factory $DaftarPermainanEventCopyWith(DaftarPermainanEvent value,
          $Res Function(DaftarPermainanEvent) then) =
      _$DaftarPermainanEventCopyWithImpl<$Res, DaftarPermainanEvent>;
}

/// @nodoc
class _$DaftarPermainanEventCopyWithImpl<$Res,
        $Val extends DaftarPermainanEvent>
    implements $DaftarPermainanEventCopyWith<$Res> {
  _$DaftarPermainanEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DiscoverGameImplCopyWith<$Res> {
  factory _$$DiscoverGameImplCopyWith(
          _$DiscoverGameImpl value, $Res Function(_$DiscoverGameImpl) then) =
      __$$DiscoverGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DiscoverGameImplCopyWithImpl<$Res>
    extends _$DaftarPermainanEventCopyWithImpl<$Res, _$DiscoverGameImpl>
    implements _$$DiscoverGameImplCopyWith<$Res> {
  __$$DiscoverGameImplCopyWithImpl(
      _$DiscoverGameImpl _value, $Res Function(_$DiscoverGameImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DiscoverGameImpl implements _DiscoverGame {
  const _$DiscoverGameImpl();

  @override
  String toString() {
    return 'DaftarPermainanEvent.discoverGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DiscoverGameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() discoverGame,
    required TResult Function(MyServiceAttribute gameAttribute) addGame,
    required TResult Function(MyServiceAttribute gameAttribute) removeGame,
  }) {
    return discoverGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? discoverGame,
    TResult? Function(MyServiceAttribute gameAttribute)? addGame,
    TResult? Function(MyServiceAttribute gameAttribute)? removeGame,
  }) {
    return discoverGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? discoverGame,
    TResult Function(MyServiceAttribute gameAttribute)? addGame,
    TResult Function(MyServiceAttribute gameAttribute)? removeGame,
    required TResult orElse(),
  }) {
    if (discoverGame != null) {
      return discoverGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiscoverGame value) discoverGame,
    required TResult Function(_AddGame value) addGame,
    required TResult Function(_RemoveGame value) removeGame,
  }) {
    return discoverGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscoverGame value)? discoverGame,
    TResult? Function(_AddGame value)? addGame,
    TResult? Function(_RemoveGame value)? removeGame,
  }) {
    return discoverGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscoverGame value)? discoverGame,
    TResult Function(_AddGame value)? addGame,
    TResult Function(_RemoveGame value)? removeGame,
    required TResult orElse(),
  }) {
    if (discoverGame != null) {
      return discoverGame(this);
    }
    return orElse();
  }
}

abstract class _DiscoverGame implements DaftarPermainanEvent {
  const factory _DiscoverGame() = _$DiscoverGameImpl;
}

/// @nodoc
abstract class _$$AddGameImplCopyWith<$Res> {
  factory _$$AddGameImplCopyWith(
          _$AddGameImpl value, $Res Function(_$AddGameImpl) then) =
      __$$AddGameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MyServiceAttribute gameAttribute});
}

/// @nodoc
class __$$AddGameImplCopyWithImpl<$Res>
    extends _$DaftarPermainanEventCopyWithImpl<$Res, _$AddGameImpl>
    implements _$$AddGameImplCopyWith<$Res> {
  __$$AddGameImplCopyWithImpl(
      _$AddGameImpl _value, $Res Function(_$AddGameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameAttribute = null,
  }) {
    return _then(_$AddGameImpl(
      null == gameAttribute
          ? _value.gameAttribute
          : gameAttribute // ignore: cast_nullable_to_non_nullable
              as MyServiceAttribute,
    ));
  }
}

/// @nodoc

class _$AddGameImpl implements _AddGame {
  const _$AddGameImpl(this.gameAttribute);

  @override
  final MyServiceAttribute gameAttribute;

  @override
  String toString() {
    return 'DaftarPermainanEvent.addGame(gameAttribute: $gameAttribute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGameImpl &&
            (identical(other.gameAttribute, gameAttribute) ||
                other.gameAttribute == gameAttribute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameAttribute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGameImplCopyWith<_$AddGameImpl> get copyWith =>
      __$$AddGameImplCopyWithImpl<_$AddGameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() discoverGame,
    required TResult Function(MyServiceAttribute gameAttribute) addGame,
    required TResult Function(MyServiceAttribute gameAttribute) removeGame,
  }) {
    return addGame(gameAttribute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? discoverGame,
    TResult? Function(MyServiceAttribute gameAttribute)? addGame,
    TResult? Function(MyServiceAttribute gameAttribute)? removeGame,
  }) {
    return addGame?.call(gameAttribute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? discoverGame,
    TResult Function(MyServiceAttribute gameAttribute)? addGame,
    TResult Function(MyServiceAttribute gameAttribute)? removeGame,
    required TResult orElse(),
  }) {
    if (addGame != null) {
      return addGame(gameAttribute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiscoverGame value) discoverGame,
    required TResult Function(_AddGame value) addGame,
    required TResult Function(_RemoveGame value) removeGame,
  }) {
    return addGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscoverGame value)? discoverGame,
    TResult? Function(_AddGame value)? addGame,
    TResult? Function(_RemoveGame value)? removeGame,
  }) {
    return addGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscoverGame value)? discoverGame,
    TResult Function(_AddGame value)? addGame,
    TResult Function(_RemoveGame value)? removeGame,
    required TResult orElse(),
  }) {
    if (addGame != null) {
      return addGame(this);
    }
    return orElse();
  }
}

abstract class _AddGame implements DaftarPermainanEvent {
  const factory _AddGame(final MyServiceAttribute gameAttribute) =
      _$AddGameImpl;

  MyServiceAttribute get gameAttribute;
  @JsonKey(ignore: true)
  _$$AddGameImplCopyWith<_$AddGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveGameImplCopyWith<$Res> {
  factory _$$RemoveGameImplCopyWith(
          _$RemoveGameImpl value, $Res Function(_$RemoveGameImpl) then) =
      __$$RemoveGameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MyServiceAttribute gameAttribute});
}

/// @nodoc
class __$$RemoveGameImplCopyWithImpl<$Res>
    extends _$DaftarPermainanEventCopyWithImpl<$Res, _$RemoveGameImpl>
    implements _$$RemoveGameImplCopyWith<$Res> {
  __$$RemoveGameImplCopyWithImpl(
      _$RemoveGameImpl _value, $Res Function(_$RemoveGameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameAttribute = null,
  }) {
    return _then(_$RemoveGameImpl(
      null == gameAttribute
          ? _value.gameAttribute
          : gameAttribute // ignore: cast_nullable_to_non_nullable
              as MyServiceAttribute,
    ));
  }
}

/// @nodoc

class _$RemoveGameImpl implements _RemoveGame {
  const _$RemoveGameImpl(this.gameAttribute);

  @override
  final MyServiceAttribute gameAttribute;

  @override
  String toString() {
    return 'DaftarPermainanEvent.removeGame(gameAttribute: $gameAttribute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveGameImpl &&
            (identical(other.gameAttribute, gameAttribute) ||
                other.gameAttribute == gameAttribute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameAttribute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveGameImplCopyWith<_$RemoveGameImpl> get copyWith =>
      __$$RemoveGameImplCopyWithImpl<_$RemoveGameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() discoverGame,
    required TResult Function(MyServiceAttribute gameAttribute) addGame,
    required TResult Function(MyServiceAttribute gameAttribute) removeGame,
  }) {
    return removeGame(gameAttribute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? discoverGame,
    TResult? Function(MyServiceAttribute gameAttribute)? addGame,
    TResult? Function(MyServiceAttribute gameAttribute)? removeGame,
  }) {
    return removeGame?.call(gameAttribute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? discoverGame,
    TResult Function(MyServiceAttribute gameAttribute)? addGame,
    TResult Function(MyServiceAttribute gameAttribute)? removeGame,
    required TResult orElse(),
  }) {
    if (removeGame != null) {
      return removeGame(gameAttribute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiscoverGame value) discoverGame,
    required TResult Function(_AddGame value) addGame,
    required TResult Function(_RemoveGame value) removeGame,
  }) {
    return removeGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiscoverGame value)? discoverGame,
    TResult? Function(_AddGame value)? addGame,
    TResult? Function(_RemoveGame value)? removeGame,
  }) {
    return removeGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiscoverGame value)? discoverGame,
    TResult Function(_AddGame value)? addGame,
    TResult Function(_RemoveGame value)? removeGame,
    required TResult orElse(),
  }) {
    if (removeGame != null) {
      return removeGame(this);
    }
    return orElse();
  }
}

abstract class _RemoveGame implements DaftarPermainanEvent {
  const factory _RemoveGame(final MyServiceAttribute gameAttribute) =
      _$RemoveGameImpl;

  MyServiceAttribute get gameAttribute;
  @JsonKey(ignore: true)
  _$$RemoveGameImplCopyWith<_$RemoveGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
