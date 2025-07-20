// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_menu_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MainMenuEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MainMenuEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MainMenuEvent()';
  }
}

/// @nodoc
class $MainMenuEventCopyWith<$Res> {
  $MainMenuEventCopyWith(MainMenuEvent _, $Res Function(MainMenuEvent) __);
}

/// Adds pattern-matching-related methods to [MainMenuEvent].
extension MainMenuEventPatterns on MainMenuEvent {
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
    TResult Function(_LoadProfile value)? loadProfile,
    TResult Function(_SetNewProfileName value)? setNewProfileName,
    TResult Function(_CheckPlayerHasProfileName value)?
        checkPlayerHasProfileName,
    TResult Function(_DoneShowInitialProfileNameInputDialog value)?
        doneShowInitialProfileNameInputDialog,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoadProfile() when loadProfile != null:
        return loadProfile(_that);
      case _SetNewProfileName() when setNewProfileName != null:
        return setNewProfileName(_that);
      case _CheckPlayerHasProfileName() when checkPlayerHasProfileName != null:
        return checkPlayerHasProfileName(_that);
      case _DoneShowInitialProfileNameInputDialog()
          when doneShowInitialProfileNameInputDialog != null:
        return doneShowInitialProfileNameInputDialog(_that);
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
    required TResult Function(_LoadProfile value) loadProfile,
    required TResult Function(_SetNewProfileName value) setNewProfileName,
    required TResult Function(_CheckPlayerHasProfileName value)
        checkPlayerHasProfileName,
    required TResult Function(_DoneShowInitialProfileNameInputDialog value)
        doneShowInitialProfileNameInputDialog,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadProfile():
        return loadProfile(_that);
      case _SetNewProfileName():
        return setNewProfileName(_that);
      case _CheckPlayerHasProfileName():
        return checkPlayerHasProfileName(_that);
      case _DoneShowInitialProfileNameInputDialog():
        return doneShowInitialProfileNameInputDialog(_that);
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
    TResult? Function(_LoadProfile value)? loadProfile,
    TResult? Function(_SetNewProfileName value)? setNewProfileName,
    TResult? Function(_CheckPlayerHasProfileName value)?
        checkPlayerHasProfileName,
    TResult? Function(_DoneShowInitialProfileNameInputDialog value)?
        doneShowInitialProfileNameInputDialog,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadProfile() when loadProfile != null:
        return loadProfile(_that);
      case _SetNewProfileName() when setNewProfileName != null:
        return setNewProfileName(_that);
      case _CheckPlayerHasProfileName() when checkPlayerHasProfileName != null:
        return checkPlayerHasProfileName(_that);
      case _DoneShowInitialProfileNameInputDialog()
          when doneShowInitialProfileNameInputDialog != null:
        return doneShowInitialProfileNameInputDialog(_that);
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
    TResult Function()? loadProfile,
    TResult Function(String name)? setNewProfileName,
    TResult Function()? checkPlayerHasProfileName,
    TResult Function()? doneShowInitialProfileNameInputDialog,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoadProfile() when loadProfile != null:
        return loadProfile();
      case _SetNewProfileName() when setNewProfileName != null:
        return setNewProfileName(_that.name);
      case _CheckPlayerHasProfileName() when checkPlayerHasProfileName != null:
        return checkPlayerHasProfileName();
      case _DoneShowInitialProfileNameInputDialog()
          when doneShowInitialProfileNameInputDialog != null:
        return doneShowInitialProfileNameInputDialog();
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
    required TResult Function() loadProfile,
    required TResult Function(String name) setNewProfileName,
    required TResult Function() checkPlayerHasProfileName,
    required TResult Function() doneShowInitialProfileNameInputDialog,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadProfile():
        return loadProfile();
      case _SetNewProfileName():
        return setNewProfileName(_that.name);
      case _CheckPlayerHasProfileName():
        return checkPlayerHasProfileName();
      case _DoneShowInitialProfileNameInputDialog():
        return doneShowInitialProfileNameInputDialog();
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
    TResult? Function()? loadProfile,
    TResult? Function(String name)? setNewProfileName,
    TResult? Function()? checkPlayerHasProfileName,
    TResult? Function()? doneShowInitialProfileNameInputDialog,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadProfile() when loadProfile != null:
        return loadProfile();
      case _SetNewProfileName() when setNewProfileName != null:
        return setNewProfileName(_that.name);
      case _CheckPlayerHasProfileName() when checkPlayerHasProfileName != null:
        return checkPlayerHasProfileName();
      case _DoneShowInitialProfileNameInputDialog()
          when doneShowInitialProfileNameInputDialog != null:
        return doneShowInitialProfileNameInputDialog();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LoadProfile implements MainMenuEvent {
  const _LoadProfile();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MainMenuEvent.loadProfile()';
  }
}

/// @nodoc

class _SetNewProfileName implements MainMenuEvent {
  _SetNewProfileName(this.name);

  final String name;

  /// Create a copy of MainMenuEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SetNewProfileNameCopyWith<_SetNewProfileName> get copyWith =>
      __$SetNewProfileNameCopyWithImpl<_SetNewProfileName>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetNewProfileName &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'MainMenuEvent.setNewProfileName(name: $name)';
  }
}

/// @nodoc
abstract mixin class _$SetNewProfileNameCopyWith<$Res>
    implements $MainMenuEventCopyWith<$Res> {
  factory _$SetNewProfileNameCopyWith(
          _SetNewProfileName value, $Res Function(_SetNewProfileName) _then) =
      __$SetNewProfileNameCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$SetNewProfileNameCopyWithImpl<$Res>
    implements _$SetNewProfileNameCopyWith<$Res> {
  __$SetNewProfileNameCopyWithImpl(this._self, this._then);

  final _SetNewProfileName _self;
  final $Res Function(_SetNewProfileName) _then;

  /// Create a copy of MainMenuEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(_SetNewProfileName(
      null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _CheckPlayerHasProfileName implements MainMenuEvent {
  const _CheckPlayerHasProfileName();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckPlayerHasProfileName);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MainMenuEvent.checkPlayerHasProfileName()';
  }
}

/// @nodoc

class _DoneShowInitialProfileNameInputDialog implements MainMenuEvent {
  const _DoneShowInitialProfileNameInputDialog();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DoneShowInitialProfileNameInputDialog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MainMenuEvent.doneShowInitialProfileNameInputDialog()';
  }
}

/// @nodoc
mixin _$MainMenuState {
  PlayerProfile? get playerProfile;
  bool get mustShowInitialDialogProfileNameInput;

  /// Create a copy of MainMenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MainMenuStateCopyWith<MainMenuState> get copyWith =>
      _$MainMenuStateCopyWithImpl<MainMenuState>(
          this as MainMenuState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MainMenuState &&
            (identical(other.playerProfile, playerProfile) ||
                other.playerProfile == playerProfile) &&
            (identical(other.mustShowInitialDialogProfileNameInput,
                    mustShowInitialDialogProfileNameInput) ||
                other.mustShowInitialDialogProfileNameInput ==
                    mustShowInitialDialogProfileNameInput));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, playerProfile, mustShowInitialDialogProfileNameInput);

  @override
  String toString() {
    return 'MainMenuState(playerProfile: $playerProfile, mustShowInitialDialogProfileNameInput: $mustShowInitialDialogProfileNameInput)';
  }
}

/// @nodoc
abstract mixin class $MainMenuStateCopyWith<$Res> {
  factory $MainMenuStateCopyWith(
          MainMenuState value, $Res Function(MainMenuState) _then) =
      _$MainMenuStateCopyWithImpl;
  @useResult
  $Res call(
      {PlayerProfile? playerProfile,
      bool mustShowInitialDialogProfileNameInput});

  $PlayerProfileCopyWith<$Res>? get playerProfile;
}

/// @nodoc
class _$MainMenuStateCopyWithImpl<$Res>
    implements $MainMenuStateCopyWith<$Res> {
  _$MainMenuStateCopyWithImpl(this._self, this._then);

  final MainMenuState _self;
  final $Res Function(MainMenuState) _then;

  /// Create a copy of MainMenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerProfile = freezed,
    Object? mustShowInitialDialogProfileNameInput = null,
  }) {
    return _then(_self.copyWith(
      playerProfile: freezed == playerProfile
          ? _self.playerProfile
          : playerProfile // ignore: cast_nullable_to_non_nullable
              as PlayerProfile?,
      mustShowInitialDialogProfileNameInput: null ==
              mustShowInitialDialogProfileNameInput
          ? _self.mustShowInitialDialogProfileNameInput
          : mustShowInitialDialogProfileNameInput // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of MainMenuState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerProfileCopyWith<$Res>? get playerProfile {
    if (_self.playerProfile == null) {
      return null;
    }

    return $PlayerProfileCopyWith<$Res>(_self.playerProfile!, (value) {
      return _then(_self.copyWith(playerProfile: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MainMenuState].
extension MainMenuStatePatterns on MainMenuState {
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
    TResult Function(_MainMenuState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MainMenuState() when $default != null:
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
    TResult Function(_MainMenuState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MainMenuState():
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
    TResult? Function(_MainMenuState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MainMenuState() when $default != null:
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
    TResult Function(PlayerProfile? playerProfile,
            bool mustShowInitialDialogProfileNameInput)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MainMenuState() when $default != null:
        return $default(
            _that.playerProfile, _that.mustShowInitialDialogProfileNameInput);
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
    TResult Function(PlayerProfile? playerProfile,
            bool mustShowInitialDialogProfileNameInput)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MainMenuState():
        return $default(
            _that.playerProfile, _that.mustShowInitialDialogProfileNameInput);
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
    TResult? Function(PlayerProfile? playerProfile,
            bool mustShowInitialDialogProfileNameInput)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MainMenuState() when $default != null:
        return $default(
            _that.playerProfile, _that.mustShowInitialDialogProfileNameInput);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MainMenuState implements MainMenuState {
  const _MainMenuState(
      {required this.playerProfile,
      required this.mustShowInitialDialogProfileNameInput});

  @override
  final PlayerProfile? playerProfile;
  @override
  final bool mustShowInitialDialogProfileNameInput;

  /// Create a copy of MainMenuState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MainMenuStateCopyWith<_MainMenuState> get copyWith =>
      __$MainMenuStateCopyWithImpl<_MainMenuState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainMenuState &&
            (identical(other.playerProfile, playerProfile) ||
                other.playerProfile == playerProfile) &&
            (identical(other.mustShowInitialDialogProfileNameInput,
                    mustShowInitialDialogProfileNameInput) ||
                other.mustShowInitialDialogProfileNameInput ==
                    mustShowInitialDialogProfileNameInput));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, playerProfile, mustShowInitialDialogProfileNameInput);

  @override
  String toString() {
    return 'MainMenuState(playerProfile: $playerProfile, mustShowInitialDialogProfileNameInput: $mustShowInitialDialogProfileNameInput)';
  }
}

/// @nodoc
abstract mixin class _$MainMenuStateCopyWith<$Res>
    implements $MainMenuStateCopyWith<$Res> {
  factory _$MainMenuStateCopyWith(
          _MainMenuState value, $Res Function(_MainMenuState) _then) =
      __$MainMenuStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {PlayerProfile? playerProfile,
      bool mustShowInitialDialogProfileNameInput});

  @override
  $PlayerProfileCopyWith<$Res>? get playerProfile;
}

/// @nodoc
class __$MainMenuStateCopyWithImpl<$Res>
    implements _$MainMenuStateCopyWith<$Res> {
  __$MainMenuStateCopyWithImpl(this._self, this._then);

  final _MainMenuState _self;
  final $Res Function(_MainMenuState) _then;

  /// Create a copy of MainMenuState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? playerProfile = freezed,
    Object? mustShowInitialDialogProfileNameInput = null,
  }) {
    return _then(_MainMenuState(
      playerProfile: freezed == playerProfile
          ? _self.playerProfile
          : playerProfile // ignore: cast_nullable_to_non_nullable
              as PlayerProfile?,
      mustShowInitialDialogProfileNameInput: null ==
              mustShowInitialDialogProfileNameInput
          ? _self.mustShowInitialDialogProfileNameInput
          : mustShowInitialDialogProfileNameInput // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of MainMenuState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerProfileCopyWith<$Res>? get playerProfile {
    if (_self.playerProfile == null) {
      return null;
    }

    return $PlayerProfileCopyWith<$Res>(_self.playerProfile!, (value) {
      return _then(_self.copyWith(playerProfile: value));
    });
  }
}

// dart format on
