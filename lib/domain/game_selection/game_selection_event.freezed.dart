// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_selection_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameSelectionEvent {
  String get gameName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameName) gameNameChanged,
    required TResult Function(String gameName) createGamePressed,
    required TResult Function(String gameName) joinGamePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String gameName)? gameNameChanged,
    TResult Function(String gameName)? createGamePressed,
    TResult Function(String gameName)? joinGamePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameName)? gameNameChanged,
    TResult Function(String gameName)? createGamePressed,
    TResult Function(String gameName)? joinGamePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameNameChanged value) gameNameChanged,
    required TResult Function(CreateGamePressed value) createGamePressed,
    required TResult Function(JoinGamePressed value) joinGamePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameNameChanged value)? gameNameChanged,
    TResult Function(CreateGamePressed value)? createGamePressed,
    TResult Function(JoinGamePressed value)? joinGamePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameNameChanged value)? gameNameChanged,
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
  $Res call({String gameName});
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
    Object? gameName = freezed,
  }) {
    return _then(_value.copyWith(
      gameName: gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$GameNameChangedCopyWith<$Res>
    implements $GameSelectionEventCopyWith<$Res> {
  factory _$$GameNameChangedCopyWith(
          _$GameNameChanged value, $Res Function(_$GameNameChanged) then) =
      __$$GameNameChangedCopyWithImpl<$Res>;
  @override
  $Res call({String gameName});
}

/// @nodoc
class __$$GameNameChangedCopyWithImpl<$Res>
    extends _$GameSelectionEventCopyWithImpl<$Res>
    implements _$$GameNameChangedCopyWith<$Res> {
  __$$GameNameChangedCopyWithImpl(
      _$GameNameChanged _value, $Res Function(_$GameNameChanged) _then)
      : super(_value, (v) => _then(v as _$GameNameChanged));

  @override
  _$GameNameChanged get _value => super._value as _$GameNameChanged;

  @override
  $Res call({
    Object? gameName = freezed,
  }) {
    return _then(_$GameNameChanged(
      gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GameNameChanged
    with DiagnosticableTreeMixin
    implements GameNameChanged {
  const _$GameNameChanged(this.gameName);

  @override
  final String gameName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameSelectionEvent.gameNameChanged(gameName: $gameName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameSelectionEvent.gameNameChanged'))
      ..add(DiagnosticsProperty('gameName', gameName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameNameChanged &&
            const DeepCollectionEquality().equals(other.gameName, gameName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(gameName));

  @JsonKey(ignore: true)
  @override
  _$$GameNameChangedCopyWith<_$GameNameChanged> get copyWith =>
      __$$GameNameChangedCopyWithImpl<_$GameNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameName) gameNameChanged,
    required TResult Function(String gameName) createGamePressed,
    required TResult Function(String gameName) joinGamePressed,
  }) {
    return gameNameChanged(gameName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String gameName)? gameNameChanged,
    TResult Function(String gameName)? createGamePressed,
    TResult Function(String gameName)? joinGamePressed,
  }) {
    return gameNameChanged?.call(gameName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameName)? gameNameChanged,
    TResult Function(String gameName)? createGamePressed,
    TResult Function(String gameName)? joinGamePressed,
    required TResult orElse(),
  }) {
    if (gameNameChanged != null) {
      return gameNameChanged(gameName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameNameChanged value) gameNameChanged,
    required TResult Function(CreateGamePressed value) createGamePressed,
    required TResult Function(JoinGamePressed value) joinGamePressed,
  }) {
    return gameNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameNameChanged value)? gameNameChanged,
    TResult Function(CreateGamePressed value)? createGamePressed,
    TResult Function(JoinGamePressed value)? joinGamePressed,
  }) {
    return gameNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameNameChanged value)? gameNameChanged,
    TResult Function(CreateGamePressed value)? createGamePressed,
    TResult Function(JoinGamePressed value)? joinGamePressed,
    required TResult orElse(),
  }) {
    if (gameNameChanged != null) {
      return gameNameChanged(this);
    }
    return orElse();
  }
}

abstract class GameNameChanged implements GameSelectionEvent {
  const factory GameNameChanged(final String gameName) = _$GameNameChanged;

  @override
  String get gameName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GameNameChangedCopyWith<_$GameNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateGamePressedCopyWith<$Res>
    implements $GameSelectionEventCopyWith<$Res> {
  factory _$$CreateGamePressedCopyWith(
          _$CreateGamePressed value, $Res Function(_$CreateGamePressed) then) =
      __$$CreateGamePressedCopyWithImpl<$Res>;
  @override
  $Res call({String gameName});
}

/// @nodoc
class __$$CreateGamePressedCopyWithImpl<$Res>
    extends _$GameSelectionEventCopyWithImpl<$Res>
    implements _$$CreateGamePressedCopyWith<$Res> {
  __$$CreateGamePressedCopyWithImpl(
      _$CreateGamePressed _value, $Res Function(_$CreateGamePressed) _then)
      : super(_value, (v) => _then(v as _$CreateGamePressed));

  @override
  _$CreateGamePressed get _value => super._value as _$CreateGamePressed;

  @override
  $Res call({
    Object? gameName = freezed,
  }) {
    return _then(_$CreateGamePressed(
      gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateGamePressed
    with DiagnosticableTreeMixin
    implements CreateGamePressed {
  const _$CreateGamePressed(this.gameName);

  @override
  final String gameName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameSelectionEvent.createGamePressed(gameName: $gameName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameSelectionEvent.createGamePressed'))
      ..add(DiagnosticsProperty('gameName', gameName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGamePressed &&
            const DeepCollectionEquality().equals(other.gameName, gameName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(gameName));

  @JsonKey(ignore: true)
  @override
  _$$CreateGamePressedCopyWith<_$CreateGamePressed> get copyWith =>
      __$$CreateGamePressedCopyWithImpl<_$CreateGamePressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameName) gameNameChanged,
    required TResult Function(String gameName) createGamePressed,
    required TResult Function(String gameName) joinGamePressed,
  }) {
    return createGamePressed(gameName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String gameName)? gameNameChanged,
    TResult Function(String gameName)? createGamePressed,
    TResult Function(String gameName)? joinGamePressed,
  }) {
    return createGamePressed?.call(gameName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameName)? gameNameChanged,
    TResult Function(String gameName)? createGamePressed,
    TResult Function(String gameName)? joinGamePressed,
    required TResult orElse(),
  }) {
    if (createGamePressed != null) {
      return createGamePressed(gameName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameNameChanged value) gameNameChanged,
    required TResult Function(CreateGamePressed value) createGamePressed,
    required TResult Function(JoinGamePressed value) joinGamePressed,
  }) {
    return createGamePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameNameChanged value)? gameNameChanged,
    TResult Function(CreateGamePressed value)? createGamePressed,
    TResult Function(JoinGamePressed value)? joinGamePressed,
  }) {
    return createGamePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameNameChanged value)? gameNameChanged,
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
  const factory CreateGamePressed(final String gameName) = _$CreateGamePressed;

  @override
  String get gameName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreateGamePressedCopyWith<_$CreateGamePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JoinGamePressedCopyWith<$Res>
    implements $GameSelectionEventCopyWith<$Res> {
  factory _$$JoinGamePressedCopyWith(
          _$JoinGamePressed value, $Res Function(_$JoinGamePressed) then) =
      __$$JoinGamePressedCopyWithImpl<$Res>;
  @override
  $Res call({String gameName});
}

/// @nodoc
class __$$JoinGamePressedCopyWithImpl<$Res>
    extends _$GameSelectionEventCopyWithImpl<$Res>
    implements _$$JoinGamePressedCopyWith<$Res> {
  __$$JoinGamePressedCopyWithImpl(
      _$JoinGamePressed _value, $Res Function(_$JoinGamePressed) _then)
      : super(_value, (v) => _then(v as _$JoinGamePressed));

  @override
  _$JoinGamePressed get _value => super._value as _$JoinGamePressed;

  @override
  $Res call({
    Object? gameName = freezed,
  }) {
    return _then(_$JoinGamePressed(
      gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$JoinGamePressed
    with DiagnosticableTreeMixin
    implements JoinGamePressed {
  const _$JoinGamePressed(this.gameName);

  @override
  final String gameName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameSelectionEvent.joinGamePressed(gameName: $gameName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameSelectionEvent.joinGamePressed'))
      ..add(DiagnosticsProperty('gameName', gameName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinGamePressed &&
            const DeepCollectionEquality().equals(other.gameName, gameName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(gameName));

  @JsonKey(ignore: true)
  @override
  _$$JoinGamePressedCopyWith<_$JoinGamePressed> get copyWith =>
      __$$JoinGamePressedCopyWithImpl<_$JoinGamePressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameName) gameNameChanged,
    required TResult Function(String gameName) createGamePressed,
    required TResult Function(String gameName) joinGamePressed,
  }) {
    return joinGamePressed(gameName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String gameName)? gameNameChanged,
    TResult Function(String gameName)? createGamePressed,
    TResult Function(String gameName)? joinGamePressed,
  }) {
    return joinGamePressed?.call(gameName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameName)? gameNameChanged,
    TResult Function(String gameName)? createGamePressed,
    TResult Function(String gameName)? joinGamePressed,
    required TResult orElse(),
  }) {
    if (joinGamePressed != null) {
      return joinGamePressed(gameName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameNameChanged value) gameNameChanged,
    required TResult Function(CreateGamePressed value) createGamePressed,
    required TResult Function(JoinGamePressed value) joinGamePressed,
  }) {
    return joinGamePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameNameChanged value)? gameNameChanged,
    TResult Function(CreateGamePressed value)? createGamePressed,
    TResult Function(JoinGamePressed value)? joinGamePressed,
  }) {
    return joinGamePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameNameChanged value)? gameNameChanged,
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
  const factory JoinGamePressed(final String gameName) = _$JoinGamePressed;

  @override
  String get gameName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$JoinGamePressedCopyWith<_$JoinGamePressed> get copyWith =>
      throw _privateConstructorUsedError;
}
