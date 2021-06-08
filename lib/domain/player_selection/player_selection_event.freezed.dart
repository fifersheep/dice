// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'player_selection_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerSelectionEventTearOff {
  const _$PlayerSelectionEventTearOff();

  PlayerNameChanged nameChanged(String name) {
    return PlayerNameChanged(
      name,
    );
  }

  CreatePlayerPressed createPlayerPressed(String name) {
    return CreatePlayerPressed(
      name,
    );
  }

  CheckForCurrentPlayer checkForCurrentPlayer() {
    return const CheckForCurrentPlayer();
  }
}

/// @nodoc
const $PlayerSelectionEvent = _$PlayerSelectionEventTearOff();

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
abstract class $PlayerNameChangedCopyWith<$Res> {
  factory $PlayerNameChangedCopyWith(
          PlayerNameChanged value, $Res Function(PlayerNameChanged) then) =
      _$PlayerNameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$PlayerNameChangedCopyWithImpl<$Res>
    extends _$PlayerSelectionEventCopyWithImpl<$Res>
    implements $PlayerNameChangedCopyWith<$Res> {
  _$PlayerNameChangedCopyWithImpl(
      PlayerNameChanged _value, $Res Function(PlayerNameChanged) _then)
      : super(_value, (v) => _then(v as PlayerNameChanged));

  @override
  PlayerNameChanged get _value => super._value as PlayerNameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(PlayerNameChanged(
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
        (other is PlayerNameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $PlayerNameChangedCopyWith<PlayerNameChanged> get copyWith =>
      _$PlayerNameChangedCopyWithImpl<PlayerNameChanged>(this, _$identity);

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
  const factory PlayerNameChanged(String name) = _$PlayerNameChanged;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerNameChangedCopyWith<PlayerNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePlayerPressedCopyWith<$Res> {
  factory $CreatePlayerPressedCopyWith(
          CreatePlayerPressed value, $Res Function(CreatePlayerPressed) then) =
      _$CreatePlayerPressedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$CreatePlayerPressedCopyWithImpl<$Res>
    extends _$PlayerSelectionEventCopyWithImpl<$Res>
    implements $CreatePlayerPressedCopyWith<$Res> {
  _$CreatePlayerPressedCopyWithImpl(
      CreatePlayerPressed _value, $Res Function(CreatePlayerPressed) _then)
      : super(_value, (v) => _then(v as CreatePlayerPressed));

  @override
  CreatePlayerPressed get _value => super._value as CreatePlayerPressed;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(CreatePlayerPressed(
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
        (other is CreatePlayerPressed &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $CreatePlayerPressedCopyWith<CreatePlayerPressed> get copyWith =>
      _$CreatePlayerPressedCopyWithImpl<CreatePlayerPressed>(this, _$identity);

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
  const factory CreatePlayerPressed(String name) = _$CreatePlayerPressed;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePlayerPressedCopyWith<CreatePlayerPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckForCurrentPlayerCopyWith<$Res> {
  factory $CheckForCurrentPlayerCopyWith(CheckForCurrentPlayer value,
          $Res Function(CheckForCurrentPlayer) then) =
      _$CheckForCurrentPlayerCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckForCurrentPlayerCopyWithImpl<$Res>
    extends _$PlayerSelectionEventCopyWithImpl<$Res>
    implements $CheckForCurrentPlayerCopyWith<$Res> {
  _$CheckForCurrentPlayerCopyWithImpl(
      CheckForCurrentPlayer _value, $Res Function(CheckForCurrentPlayer) _then)
      : super(_value, (v) => _then(v as CheckForCurrentPlayer));

  @override
  CheckForCurrentPlayer get _value => super._value as CheckForCurrentPlayer;
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
    properties
      ..add(DiagnosticsProperty(
          'type', 'PlayerSelectionEvent.checkForCurrentPlayer'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckForCurrentPlayer);
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
