// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_selection_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayerSelectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String name) createPlayerPressed,
    required TResult Function() checkForCurrentPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? createPlayerPressed,
    TResult Function()? checkForCurrentPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? createPlayerPressed,
    TResult Function()? checkForCurrentPlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNameChanged value) nameChanged,
    required TResult Function(CreatePlayerPressed value) createPlayerPressed,
    required TResult Function(CheckForCurrentPlayer value)
        checkForCurrentPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerNameChanged value)? nameChanged,
    TResult Function(CreatePlayerPressed value)? createPlayerPressed,
    TResult Function(CheckForCurrentPlayer value)? checkForCurrentPlayer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNameChanged value)? nameChanged,
    TResult Function(CreatePlayerPressed value)? createPlayerPressed,
    TResult Function(CheckForCurrentPlayer value)? checkForCurrentPlayer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerSelectionEventCopyWith<$Res> {
  factory $PlayerSelectionEventCopyWith(PlayerSelectionEvent value,
          $Res Function(PlayerSelectionEvent) then) =
      _$PlayerSelectionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerSelectionEventCopyWithImpl<$Res>
    implements $PlayerSelectionEventCopyWith<$Res> {
  _$PlayerSelectionEventCopyWithImpl(this._value, this._then);

  final PlayerSelectionEvent _value;
  // ignore: unused_field
  final $Res Function(PlayerSelectionEvent) _then;
}

/// @nodoc
abstract class _$$PlayerNameChangedCopyWith<$Res> {
  factory _$$PlayerNameChangedCopyWith(
          _$PlayerNameChanged value, $Res Function(_$PlayerNameChanged) then) =
      __$$PlayerNameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$$PlayerNameChangedCopyWithImpl<$Res>
    extends _$PlayerSelectionEventCopyWithImpl<$Res>
    implements _$$PlayerNameChangedCopyWith<$Res> {
  __$$PlayerNameChangedCopyWithImpl(
      _$PlayerNameChanged _value, $Res Function(_$PlayerNameChanged) _then)
      : super(_value, (v) => _then(v as _$PlayerNameChanged));

  @override
  _$PlayerNameChanged get _value => super._value as _$PlayerNameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$PlayerNameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerNameChanged
    with DiagnosticableTreeMixin
    implements PlayerNameChanged {
  const _$PlayerNameChanged(this.name);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerSelectionEvent.nameChanged(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerSelectionEvent.nameChanged'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerNameChanged &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$PlayerNameChangedCopyWith<_$PlayerNameChanged> get copyWith =>
      __$$PlayerNameChangedCopyWithImpl<_$PlayerNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String name) createPlayerPressed,
    required TResult Function() checkForCurrentPlayer,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? createPlayerPressed,
    TResult Function()? checkForCurrentPlayer,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? createPlayerPressed,
    TResult Function()? checkForCurrentPlayer,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNameChanged value) nameChanged,
    required TResult Function(CreatePlayerPressed value) createPlayerPressed,
    required TResult Function(CheckForCurrentPlayer value)
        checkForCurrentPlayer,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerNameChanged value)? nameChanged,
    TResult Function(CreatePlayerPressed value)? createPlayerPressed,
    TResult Function(CheckForCurrentPlayer value)? checkForCurrentPlayer,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNameChanged value)? nameChanged,
    TResult Function(CreatePlayerPressed value)? createPlayerPressed,
    TResult Function(CheckForCurrentPlayer value)? checkForCurrentPlayer,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class PlayerNameChanged implements PlayerSelectionEvent {
  const factory PlayerNameChanged(final String name) = _$PlayerNameChanged;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PlayerNameChangedCopyWith<_$PlayerNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePlayerPressedCopyWith<$Res> {
  factory _$$CreatePlayerPressedCopyWith(_$CreatePlayerPressed value,
          $Res Function(_$CreatePlayerPressed) then) =
      __$$CreatePlayerPressedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$$CreatePlayerPressedCopyWithImpl<$Res>
    extends _$PlayerSelectionEventCopyWithImpl<$Res>
    implements _$$CreatePlayerPressedCopyWith<$Res> {
  __$$CreatePlayerPressedCopyWithImpl(
      _$CreatePlayerPressed _value, $Res Function(_$CreatePlayerPressed) _then)
      : super(_value, (v) => _then(v as _$CreatePlayerPressed));

  @override
  _$CreatePlayerPressed get _value => super._value as _$CreatePlayerPressed;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$CreatePlayerPressed(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreatePlayerPressed
    with DiagnosticableTreeMixin
    implements CreatePlayerPressed {
  const _$CreatePlayerPressed(this.name);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerSelectionEvent.createPlayerPressed(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PlayerSelectionEvent.createPlayerPressed'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlayerPressed &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$CreatePlayerPressedCopyWith<_$CreatePlayerPressed> get copyWith =>
      __$$CreatePlayerPressedCopyWithImpl<_$CreatePlayerPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String name) createPlayerPressed,
    required TResult Function() checkForCurrentPlayer,
  }) {
    return createPlayerPressed(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? createPlayerPressed,
    TResult Function()? checkForCurrentPlayer,
  }) {
    return createPlayerPressed?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? createPlayerPressed,
    TResult Function()? checkForCurrentPlayer,
    required TResult orElse(),
  }) {
    if (createPlayerPressed != null) {
      return createPlayerPressed(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNameChanged value) nameChanged,
    required TResult Function(CreatePlayerPressed value) createPlayerPressed,
    required TResult Function(CheckForCurrentPlayer value)
        checkForCurrentPlayer,
  }) {
    return createPlayerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerNameChanged value)? nameChanged,
    TResult Function(CreatePlayerPressed value)? createPlayerPressed,
    TResult Function(CheckForCurrentPlayer value)? checkForCurrentPlayer,
  }) {
    return createPlayerPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNameChanged value)? nameChanged,
    TResult Function(CreatePlayerPressed value)? createPlayerPressed,
    TResult Function(CheckForCurrentPlayer value)? checkForCurrentPlayer,
    required TResult orElse(),
  }) {
    if (createPlayerPressed != null) {
      return createPlayerPressed(this);
    }
    return orElse();
  }
}

abstract class CreatePlayerPressed implements PlayerSelectionEvent {
  const factory CreatePlayerPressed(final String name) = _$CreatePlayerPressed;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CreatePlayerPressedCopyWith<_$CreatePlayerPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckForCurrentPlayerCopyWith<$Res> {
  factory _$$CheckForCurrentPlayerCopyWith(_$CheckForCurrentPlayer value,
          $Res Function(_$CheckForCurrentPlayer) then) =
      __$$CheckForCurrentPlayerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckForCurrentPlayerCopyWithImpl<$Res>
    extends _$PlayerSelectionEventCopyWithImpl<$Res>
    implements _$$CheckForCurrentPlayerCopyWith<$Res> {
  __$$CheckForCurrentPlayerCopyWithImpl(_$CheckForCurrentPlayer _value,
      $Res Function(_$CheckForCurrentPlayer) _then)
      : super(_value, (v) => _then(v as _$CheckForCurrentPlayer));

  @override
  _$CheckForCurrentPlayer get _value => super._value as _$CheckForCurrentPlayer;
}

/// @nodoc

class _$CheckForCurrentPlayer
    with DiagnosticableTreeMixin
    implements CheckForCurrentPlayer {
  const _$CheckForCurrentPlayer();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerSelectionEvent.checkForCurrentPlayer()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'PlayerSelectionEvent.checkForCurrentPlayer'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckForCurrentPlayer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String name) createPlayerPressed,
    required TResult Function() checkForCurrentPlayer,
  }) {
    return checkForCurrentPlayer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? createPlayerPressed,
    TResult Function()? checkForCurrentPlayer,
  }) {
    return checkForCurrentPlayer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String name)? createPlayerPressed,
    TResult Function()? checkForCurrentPlayer,
    required TResult orElse(),
  }) {
    if (checkForCurrentPlayer != null) {
      return checkForCurrentPlayer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNameChanged value) nameChanged,
    required TResult Function(CreatePlayerPressed value) createPlayerPressed,
    required TResult Function(CheckForCurrentPlayer value)
        checkForCurrentPlayer,
  }) {
    return checkForCurrentPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerNameChanged value)? nameChanged,
    TResult Function(CreatePlayerPressed value)? createPlayerPressed,
    TResult Function(CheckForCurrentPlayer value)? checkForCurrentPlayer,
  }) {
    return checkForCurrentPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNameChanged value)? nameChanged,
    TResult Function(CreatePlayerPressed value)? createPlayerPressed,
    TResult Function(CheckForCurrentPlayer value)? checkForCurrentPlayer,
    required TResult orElse(),
  }) {
    if (checkForCurrentPlayer != null) {
      return checkForCurrentPlayer(this);
    }
    return orElse();
  }
}

abstract class CheckForCurrentPlayer implements PlayerSelectionEvent {
  const factory CheckForCurrentPlayer() = _$CheckForCurrentPlayer;
}
