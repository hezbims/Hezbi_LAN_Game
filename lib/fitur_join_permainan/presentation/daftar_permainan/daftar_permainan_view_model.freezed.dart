// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daftar_permainan_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DaftarPermainanState {
  List<MyServiceAttribute> get discoveredGames;
  ResponseWrapper<Object?> get serviceDiscoveryStartupStatus;

  /// Create a copy of DaftarPermainanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DaftarPermainanStateCopyWith<DaftarPermainanState> get copyWith =>
      _$DaftarPermainanStateCopyWithImpl<DaftarPermainanState>(
          this as DaftarPermainanState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DaftarPermainanState &&
            const DeepCollectionEquality()
                .equals(other.discoveredGames, discoveredGames) &&
            (identical(other.serviceDiscoveryStartupStatus,
                    serviceDiscoveryStartupStatus) ||
                other.serviceDiscoveryStartupStatus ==
                    serviceDiscoveryStartupStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(discoveredGames),
      serviceDiscoveryStartupStatus);

  @override
  String toString() {
    return 'DaftarPermainanState(discoveredGames: $discoveredGames, serviceDiscoveryStartupStatus: $serviceDiscoveryStartupStatus)';
  }
}

/// @nodoc
abstract mixin class $DaftarPermainanStateCopyWith<$Res> {
  factory $DaftarPermainanStateCopyWith(DaftarPermainanState value,
          $Res Function(DaftarPermainanState) _then) =
      _$DaftarPermainanStateCopyWithImpl;
  @useResult
  $Res call(
      {List<MyServiceAttribute> discoveredGames,
      ResponseWrapper<Object?> serviceDiscoveryStartupStatus});

  $ResponseWrapperCopyWith<Object?, $Res> get serviceDiscoveryStartupStatus;
}

/// @nodoc
class _$DaftarPermainanStateCopyWithImpl<$Res>
    implements $DaftarPermainanStateCopyWith<$Res> {
  _$DaftarPermainanStateCopyWithImpl(this._self, this._then);

  final DaftarPermainanState _self;
  final $Res Function(DaftarPermainanState) _then;

  /// Create a copy of DaftarPermainanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discoveredGames = null,
    Object? serviceDiscoveryStartupStatus = null,
  }) {
    return _then(_self.copyWith(
      discoveredGames: null == discoveredGames
          ? _self.discoveredGames
          : discoveredGames // ignore: cast_nullable_to_non_nullable
              as List<MyServiceAttribute>,
      serviceDiscoveryStartupStatus: null == serviceDiscoveryStartupStatus
          ? _self.serviceDiscoveryStartupStatus
          : serviceDiscoveryStartupStatus // ignore: cast_nullable_to_non_nullable
              as ResponseWrapper<Object?>,
    ));
  }

  /// Create a copy of DaftarPermainanState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseWrapperCopyWith<Object?, $Res> get serviceDiscoveryStartupStatus {
    return $ResponseWrapperCopyWith<Object?, $Res>(
        _self.serviceDiscoveryStartupStatus, (value) {
      return _then(_self.copyWith(serviceDiscoveryStartupStatus: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DaftarPermainanState].
extension DaftarPermainanStatePatterns on DaftarPermainanState {
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
    TResult Function(_DaftarPermainanState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DaftarPermainanState() when $default != null:
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
    TResult Function(_DaftarPermainanState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DaftarPermainanState():
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
    TResult? Function(_DaftarPermainanState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DaftarPermainanState() when $default != null:
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
    TResult Function(List<MyServiceAttribute> discoveredGames,
            ResponseWrapper<Object?> serviceDiscoveryStartupStatus)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DaftarPermainanState() when $default != null:
        return $default(
            _that.discoveredGames, _that.serviceDiscoveryStartupStatus);
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
    TResult Function(List<MyServiceAttribute> discoveredGames,
            ResponseWrapper<Object?> serviceDiscoveryStartupStatus)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DaftarPermainanState():
        return $default(
            _that.discoveredGames, _that.serviceDiscoveryStartupStatus);
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
    TResult? Function(List<MyServiceAttribute> discoveredGames,
            ResponseWrapper<Object?> serviceDiscoveryStartupStatus)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DaftarPermainanState() when $default != null:
        return $default(
            _that.discoveredGames, _that.serviceDiscoveryStartupStatus);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DaftarPermainanState implements DaftarPermainanState {
  const _DaftarPermainanState(
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

  /// Create a copy of DaftarPermainanState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DaftarPermainanStateCopyWith<_DaftarPermainanState> get copyWith =>
      __$DaftarPermainanStateCopyWithImpl<_DaftarPermainanState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DaftarPermainanState &&
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

  @override
  String toString() {
    return 'DaftarPermainanState(discoveredGames: $discoveredGames, serviceDiscoveryStartupStatus: $serviceDiscoveryStartupStatus)';
  }
}

/// @nodoc
abstract mixin class _$DaftarPermainanStateCopyWith<$Res>
    implements $DaftarPermainanStateCopyWith<$Res> {
  factory _$DaftarPermainanStateCopyWith(_DaftarPermainanState value,
          $Res Function(_DaftarPermainanState) _then) =
      __$DaftarPermainanStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<MyServiceAttribute> discoveredGames,
      ResponseWrapper<Object?> serviceDiscoveryStartupStatus});

  @override
  $ResponseWrapperCopyWith<Object?, $Res> get serviceDiscoveryStartupStatus;
}

/// @nodoc
class __$DaftarPermainanStateCopyWithImpl<$Res>
    implements _$DaftarPermainanStateCopyWith<$Res> {
  __$DaftarPermainanStateCopyWithImpl(this._self, this._then);

  final _DaftarPermainanState _self;
  final $Res Function(_DaftarPermainanState) _then;

  /// Create a copy of DaftarPermainanState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? discoveredGames = null,
    Object? serviceDiscoveryStartupStatus = null,
  }) {
    return _then(_DaftarPermainanState(
      discoveredGames: null == discoveredGames
          ? _self._discoveredGames
          : discoveredGames // ignore: cast_nullable_to_non_nullable
              as List<MyServiceAttribute>,
      serviceDiscoveryStartupStatus: null == serviceDiscoveryStartupStatus
          ? _self.serviceDiscoveryStartupStatus
          : serviceDiscoveryStartupStatus // ignore: cast_nullable_to_non_nullable
              as ResponseWrapper<Object?>,
    ));
  }

  /// Create a copy of DaftarPermainanState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseWrapperCopyWith<Object?, $Res> get serviceDiscoveryStartupStatus {
    return $ResponseWrapperCopyWith<Object?, $Res>(
        _self.serviceDiscoveryStartupStatus, (value) {
      return _then(_self.copyWith(serviceDiscoveryStartupStatus: value));
    });
  }
}

/// @nodoc
mixin _$DaftarPermainanEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DaftarPermainanEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DaftarPermainanEvent()';
  }
}

/// @nodoc
class $DaftarPermainanEventCopyWith<$Res> {
  $DaftarPermainanEventCopyWith(
      DaftarPermainanEvent _, $Res Function(DaftarPermainanEvent) __);
}

/// Adds pattern-matching-related methods to [DaftarPermainanEvent].
extension DaftarPermainanEventPatterns on DaftarPermainanEvent {
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
    TResult Function(_DiscoverGame value)? discoverGame,
    TResult Function(_AddGame value)? addGame,
    TResult Function(_RemoveGame value)? removeGame,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiscoverGame() when discoverGame != null:
        return discoverGame(_that);
      case _AddGame() when addGame != null:
        return addGame(_that);
      case _RemoveGame() when removeGame != null:
        return removeGame(_that);
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
    required TResult Function(_DiscoverGame value) discoverGame,
    required TResult Function(_AddGame value) addGame,
    required TResult Function(_RemoveGame value) removeGame,
  }) {
    final _that = this;
    switch (_that) {
      case _DiscoverGame():
        return discoverGame(_that);
      case _AddGame():
        return addGame(_that);
      case _RemoveGame():
        return removeGame(_that);
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
    TResult? Function(_DiscoverGame value)? discoverGame,
    TResult? Function(_AddGame value)? addGame,
    TResult? Function(_RemoveGame value)? removeGame,
  }) {
    final _that = this;
    switch (_that) {
      case _DiscoverGame() when discoverGame != null:
        return discoverGame(_that);
      case _AddGame() when addGame != null:
        return addGame(_that);
      case _RemoveGame() when removeGame != null:
        return removeGame(_that);
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
    TResult Function()? discoverGame,
    TResult Function(MyServiceAttribute gameAttribute)? addGame,
    TResult Function(MyServiceAttribute gameAttribute)? removeGame,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiscoverGame() when discoverGame != null:
        return discoverGame();
      case _AddGame() when addGame != null:
        return addGame(_that.gameAttribute);
      case _RemoveGame() when removeGame != null:
        return removeGame(_that.gameAttribute);
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
    required TResult Function() discoverGame,
    required TResult Function(MyServiceAttribute gameAttribute) addGame,
    required TResult Function(MyServiceAttribute gameAttribute) removeGame,
  }) {
    final _that = this;
    switch (_that) {
      case _DiscoverGame():
        return discoverGame();
      case _AddGame():
        return addGame(_that.gameAttribute);
      case _RemoveGame():
        return removeGame(_that.gameAttribute);
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
    TResult? Function()? discoverGame,
    TResult? Function(MyServiceAttribute gameAttribute)? addGame,
    TResult? Function(MyServiceAttribute gameAttribute)? removeGame,
  }) {
    final _that = this;
    switch (_that) {
      case _DiscoverGame() when discoverGame != null:
        return discoverGame();
      case _AddGame() when addGame != null:
        return addGame(_that.gameAttribute);
      case _RemoveGame() when removeGame != null:
        return removeGame(_that.gameAttribute);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DiscoverGame implements DaftarPermainanEvent {
  const _DiscoverGame();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DiscoverGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DaftarPermainanEvent.discoverGame()';
  }
}

/// @nodoc

class _AddGame implements DaftarPermainanEvent {
  const _AddGame(this.gameAttribute);

  final MyServiceAttribute gameAttribute;

  /// Create a copy of DaftarPermainanEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddGameCopyWith<_AddGame> get copyWith =>
      __$AddGameCopyWithImpl<_AddGame>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddGame &&
            (identical(other.gameAttribute, gameAttribute) ||
                other.gameAttribute == gameAttribute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameAttribute);

  @override
  String toString() {
    return 'DaftarPermainanEvent.addGame(gameAttribute: $gameAttribute)';
  }
}

/// @nodoc
abstract mixin class _$AddGameCopyWith<$Res>
    implements $DaftarPermainanEventCopyWith<$Res> {
  factory _$AddGameCopyWith(_AddGame value, $Res Function(_AddGame) _then) =
      __$AddGameCopyWithImpl;
  @useResult
  $Res call({MyServiceAttribute gameAttribute});
}

/// @nodoc
class __$AddGameCopyWithImpl<$Res> implements _$AddGameCopyWith<$Res> {
  __$AddGameCopyWithImpl(this._self, this._then);

  final _AddGame _self;
  final $Res Function(_AddGame) _then;

  /// Create a copy of DaftarPermainanEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gameAttribute = null,
  }) {
    return _then(_AddGame(
      null == gameAttribute
          ? _self.gameAttribute
          : gameAttribute // ignore: cast_nullable_to_non_nullable
              as MyServiceAttribute,
    ));
  }
}

/// @nodoc

class _RemoveGame implements DaftarPermainanEvent {
  const _RemoveGame(this.gameAttribute);

  final MyServiceAttribute gameAttribute;

  /// Create a copy of DaftarPermainanEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoveGameCopyWith<_RemoveGame> get copyWith =>
      __$RemoveGameCopyWithImpl<_RemoveGame>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveGame &&
            (identical(other.gameAttribute, gameAttribute) ||
                other.gameAttribute == gameAttribute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameAttribute);

  @override
  String toString() {
    return 'DaftarPermainanEvent.removeGame(gameAttribute: $gameAttribute)';
  }
}

/// @nodoc
abstract mixin class _$RemoveGameCopyWith<$Res>
    implements $DaftarPermainanEventCopyWith<$Res> {
  factory _$RemoveGameCopyWith(
          _RemoveGame value, $Res Function(_RemoveGame) _then) =
      __$RemoveGameCopyWithImpl;
  @useResult
  $Res call({MyServiceAttribute gameAttribute});
}

/// @nodoc
class __$RemoveGameCopyWithImpl<$Res> implements _$RemoveGameCopyWith<$Res> {
  __$RemoveGameCopyWithImpl(this._self, this._then);

  final _RemoveGame _self;
  final $Res Function(_RemoveGame) _then;

  /// Create a copy of DaftarPermainanEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gameAttribute = null,
  }) {
    return _then(_RemoveGame(
      null == gameAttribute
          ? _self.gameAttribute
          : gameAttribute // ignore: cast_nullable_to_non_nullable
              as MyServiceAttribute,
    ));
  }
}

// dart format on
