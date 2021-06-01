// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'game_selection_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameSelectionEventTearOff {
  const _$GameSelectionEventTearOff();

  GameTitleChanged gameTitleChanged(String gameTitle) {
    return GameTitleChanged(
      gameTitle,
    );
  }

  CreateGamePressed createGamePressed(String gameTitle) {
    return CreateGamePressed(
      gameTitle,
    );
  }

  JoinGamePressed joinGamePressed(String gameTitle) {
    return JoinGamePressed(
      gameTitle,
    );
  }
}

/// @nodoc
const $GameSelectionEvent = _$GameSelectionEventTearOff();

/// @nodoc
mixin _$GameSelectionEvent {
  String get gameTitle => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameTitle) gameTitleChanged,
    required TResult Function(String gameTitle) createGamePressed,
    required TResult Function(String gameTitle) joinGamePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameTitle)? gameTitleChanged,
    TResult Function(String gameTitle)? createGamePressed,
    TResult Function(String gameTitle)? joinGamePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameTitleChanged value) gameTitleChanged,
    required TResult Function(CreateGamePressed value) createGamePressed,
    required TResult Function(JoinGamePressed value) joinGamePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameTitleChanged value)? gameTitleChanged,
    TResult Function(CreateGamePressed value)? createGamePressed,
    TResult Function(JoinGamePressed value)? joinGamePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameSelectionEventCopyWith<GameSelectionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSelectionEventCopyWith<$Res> {
  factory $GameSelectionEventCopyWith(
          GameSelectionEvent value, $Res Function(GameSelectionEvent) then) =
      _$GameSelectionEventCopyWithImpl<$Res>;
  $Res call({String gameTitle});
}

/// @nodoc
class _$GameSelectionEventCopyWithImpl<$Res>
    implements $GameSelectionEventCopyWith<$Res> {
  _$GameSelectionEventCopyWithImpl(this._value, this._then);

  final GameSelectionEvent _value;
  // ignore: unused_field
  final $Res Function(GameSelectionEvent) _then;

  @override
  $Res call({
    Object? gameTitle = freezed,
  }) {
    return _then(_value.copyWith(
      gameTitle: gameTitle == freezed
          ? _value.gameTitle
          : gameTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GameTitleChangedCopyWith<$Res>
    implements $GameSelectionEventCopyWith<$Res> {
  factory $GameTitleChangedCopyWith(
          GameTitleChanged value, $Res Function(GameTitleChanged) then) =
      _$GameTitleChangedCopyWithImpl<$Res>;
  @override
  $Res call({String gameTitle});
}

/// @nodoc
class _$GameTitleChangedCopyWithImpl<$Res>
    extends _$GameSelectionEventCopyWithImpl<$Res>
    implements $GameTitleChangedCopyWith<$Res> {
  _$GameTitleChangedCopyWithImpl(
      GameTitleChanged _value, $Res Function(GameTitleChanged) _then)
      : super(_value, (v) => _then(v as GameTitleChanged));

  @override
  GameTitleChanged get _value => super._value as GameTitleChanged;

  @override
  $Res call({
    Object? gameTitle = freezed,
  }) {
    return _then(GameTitleChanged(
      gameTitle == freezed
          ? _value.gameTitle
          : gameTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GameTitleChanged
    with DiagnosticableTreeMixin
    implements GameTitleChanged {
  const _$GameTitleChanged(this.gameTitle);

  @override
  final String gameTitle;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameSelectionEvent.gameTitleChanged(gameTitle: $gameTitle)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameSelectionEvent.gameTitleChanged'))
      ..add(DiagnosticsProperty('gameTitle', gameTitle));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameTitleChanged &&
            (identical(other.gameTitle, gameTitle) ||
                const DeepCollectionEquality()
                    .equals(other.gameTitle, gameTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameTitle);

  @JsonKey(ignore: true)
  @override
  $GameTitleChangedCopyWith<GameTitleChanged> get copyWith =>
      _$GameTitleChangedCopyWithImpl<GameTitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameTitle) gameTitleChanged,
    required TResult Function(String gameTitle) createGamePressed,
    required TResult Function(String gameTitle) joinGamePressed,
  }) {
    return gameTitleChanged(gameTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameTitle)? gameTitleChanged,
    TResult Function(String gameTitle)? createGamePressed,
    TResult Function(String gameTitle)? joinGamePressed,
    required TResult orElse(),
  }) {
    if (gameTitleChanged != null) {
      return gameTitleChanged(gameTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameTitleChanged value) gameTitleChanged,
    required TResult Function(CreateGamePressed value) createGamePressed,
    required TResult Function(JoinGamePressed value) joinGamePressed,
  }) {
    return gameTitleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameTitleChanged value)? gameTitleChanged,
    TResult Function(CreateGamePressed value)? createGamePressed,
    TResult Function(JoinGamePressed value)? joinGamePressed,
    required TResult orElse(),
  }) {
    if (gameTitleChanged != null) {
      return gameTitleChanged(this);
    }
    return orElse();
  }
}

abstract class GameTitleChanged implements GameSelectionEvent {
  const factory GameTitleChanged(String gameTitle) = _$GameTitleChanged;

  @override
  String get gameTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GameTitleChangedCopyWith<GameTitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGamePressedCopyWith<$Res>
    implements $GameSelectionEventCopyWith<$Res> {
  factory $CreateGamePressedCopyWith(
          CreateGamePressed value, $Res Function(CreateGamePressed) then) =
      _$CreateGamePressedCopyWithImpl<$Res>;
  @override
  $Res call({String gameTitle});
}

/// @nodoc
class _$CreateGamePressedCopyWithImpl<$Res>
    extends _$GameSelectionEventCopyWithImpl<$Res>
    implements $CreateGamePressedCopyWith<$Res> {
  _$CreateGamePressedCopyWithImpl(
      CreateGamePressed _value, $Res Function(CreateGamePressed) _then)
      : super(_value, (v) => _then(v as CreateGamePressed));

  @override
  CreateGamePressed get _value => super._value as CreateGamePressed;

  @override
  $Res call({
    Object? gameTitle = freezed,
  }) {
    return _then(CreateGamePressed(
      gameTitle == freezed
          ? _value.gameTitle
          : gameTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateGamePressed
    with DiagnosticableTreeMixin
    implements CreateGamePressed {
  const _$CreateGamePressed(this.gameTitle);

  @override
  final String gameTitle;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameSelectionEvent.createGamePressed(gameTitle: $gameTitle)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameSelectionEvent.createGamePressed'))
      ..add(DiagnosticsProperty('gameTitle', gameTitle));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateGamePressed &&
            (identical(other.gameTitle, gameTitle) ||
                const DeepCollectionEquality()
                    .equals(other.gameTitle, gameTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameTitle);

  @JsonKey(ignore: true)
  @override
  $CreateGamePressedCopyWith<CreateGamePressed> get copyWith =>
      _$CreateGamePressedCopyWithImpl<CreateGamePressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameTitle) gameTitleChanged,
    required TResult Function(String gameTitle) createGamePressed,
    required TResult Function(String gameTitle) joinGamePressed,
  }) {
    return createGamePressed(gameTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameTitle)? gameTitleChanged,
    TResult Function(String gameTitle)? createGamePressed,
    TResult Function(String gameTitle)? joinGamePressed,
    required TResult orElse(),
  }) {
    if (createGamePressed != null) {
      return createGamePressed(gameTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameTitleChanged value) gameTitleChanged,
    required TResult Function(CreateGamePressed value) createGamePressed,
    required TResult Function(JoinGamePressed value) joinGamePressed,
  }) {
    return createGamePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameTitleChanged value)? gameTitleChanged,
    TResult Function(CreateGamePressed value)? createGamePressed,
    TResult Function(JoinGamePressed value)? joinGamePressed,
    required TResult orElse(),
  }) {
    if (createGamePressed != null) {
      return createGamePressed(this);
    }
    return orElse();
  }
}

abstract class CreateGamePressed implements GameSelectionEvent {
  const factory CreateGamePressed(String gameTitle) = _$CreateGamePressed;

  @override
  String get gameTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CreateGamePressedCopyWith<CreateGamePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinGamePressedCopyWith<$Res>
    implements $GameSelectionEventCopyWith<$Res> {
  factory $JoinGamePressedCopyWith(
          JoinGamePressed value, $Res Function(JoinGamePressed) then) =
      _$JoinGamePressedCopyWithImpl<$Res>;
  @override
  $Res call({String gameTitle});
}

/// @nodoc
class _$JoinGamePressedCopyWithImpl<$Res>
    extends _$GameSelectionEventCopyWithImpl<$Res>
    implements $JoinGamePressedCopyWith<$Res> {
  _$JoinGamePressedCopyWithImpl(
      JoinGamePressed _value, $Res Function(JoinGamePressed) _then)
      : super(_value, (v) => _then(v as JoinGamePressed));

  @override
  JoinGamePressed get _value => super._value as JoinGamePressed;

  @override
  $Res call({
    Object? gameTitle = freezed,
  }) {
    return _then(JoinGamePressed(
      gameTitle == freezed
          ? _value.gameTitle
          : gameTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$JoinGamePressed
    with DiagnosticableTreeMixin
    implements JoinGamePressed {
  const _$JoinGamePressed(this.gameTitle);

  @override
  final String gameTitle;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameSelectionEvent.joinGamePressed(gameTitle: $gameTitle)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameSelectionEvent.joinGamePressed'))
      ..add(DiagnosticsProperty('gameTitle', gameTitle));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JoinGamePressed &&
            (identical(other.gameTitle, gameTitle) ||
                const DeepCollectionEquality()
                    .equals(other.gameTitle, gameTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameTitle);

  @JsonKey(ignore: true)
  @override
  $JoinGamePressedCopyWith<JoinGamePressed> get copyWith =>
      _$JoinGamePressedCopyWithImpl<JoinGamePressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameTitle) gameTitleChanged,
    required TResult Function(String gameTitle) createGamePressed,
    required TResult Function(String gameTitle) joinGamePressed,
  }) {
    return joinGamePressed(gameTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameTitle)? gameTitleChanged,
    TResult Function(String gameTitle)? createGamePressed,
    TResult Function(String gameTitle)? joinGamePressed,
    required TResult orElse(),
  }) {
    if (joinGamePressed != null) {
      return joinGamePressed(gameTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameTitleChanged value) gameTitleChanged,
    required TResult Function(CreateGamePressed value) createGamePressed,
    required TResult Function(JoinGamePressed value) joinGamePressed,
  }) {
    return joinGamePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameTitleChanged value)? gameTitleChanged,
    TResult Function(CreateGamePressed value)? createGamePressed,
    TResult Function(JoinGamePressed value)? joinGamePressed,
    required TResult orElse(),
  }) {
    if (joinGamePressed != null) {
      return joinGamePressed(this);
    }
    return orElse();
  }
}

abstract class JoinGamePressed implements GameSelectionEvent {
  const factory JoinGamePressed(String gameTitle) = _$JoinGamePressed;

  @override
  String get gameTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $JoinGamePressedCopyWith<JoinGamePressed> get copyWith =>
      throw _privateConstructorUsedError;
}
