// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gameplay_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameplayStateTearOff {
  const _$GameplayStateTearOff();

  GameLoading loading() {
    return const GameLoading();
  }

  GameError error() {
    return const GameError();
  }

  GameInLobby inLobby(
      {required String gameName, required List<String> participants}) {
    return GameInLobby(
      gameName: gameName,
      participants: participants,
    );
  }

  GameInPlay inPlay(
      {required String gameName, required List<String> participants}) {
    return GameInPlay(
      gameName: gameName,
      participants: participants,
    );
  }
}

/// @nodoc
const $GameplayState = _$GameplayStateTearOff();

/// @nodoc
mixin _$GameplayState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(String gameName, List<String> participants)
        inLobby,
    required TResult Function(String gameName, List<String> participants)
        inPlay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(String gameName, List<String> participants)? inLobby,
    TResult Function(String gameName, List<String> participants)? inPlay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameLoading value) loading,
    required TResult Function(GameError value) error,
    required TResult Function(GameInLobby value) inLobby,
    required TResult Function(GameInPlay value) inPlay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameLoading value)? loading,
    TResult Function(GameError value)? error,
    TResult Function(GameInLobby value)? inLobby,
    TResult Function(GameInPlay value)? inPlay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameplayStateCopyWith<$Res> {
  factory $GameplayStateCopyWith(
          GameplayState value, $Res Function(GameplayState) then) =
      _$GameplayStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameplayStateCopyWithImpl<$Res>
    implements $GameplayStateCopyWith<$Res> {
  _$GameplayStateCopyWithImpl(this._value, this._then);

  final GameplayState _value;
  // ignore: unused_field
  final $Res Function(GameplayState) _then;
}

/// @nodoc
abstract class $GameLoadingCopyWith<$Res> {
  factory $GameLoadingCopyWith(
          GameLoading value, $Res Function(GameLoading) then) =
      _$GameLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameLoadingCopyWithImpl<$Res> extends _$GameplayStateCopyWithImpl<$Res>
    implements $GameLoadingCopyWith<$Res> {
  _$GameLoadingCopyWithImpl(
      GameLoading _value, $Res Function(GameLoading) _then)
      : super(_value, (v) => _then(v as GameLoading));

  @override
  GameLoading get _value => super._value as GameLoading;
}

/// @nodoc

class _$GameLoading implements GameLoading {
  const _$GameLoading();

  @override
  String toString() {
    return 'GameplayState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GameLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(String gameName, List<String> participants)
        inLobby,
    required TResult Function(String gameName, List<String> participants)
        inPlay,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(String gameName, List<String> participants)? inLobby,
    TResult Function(String gameName, List<String> participants)? inPlay,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameLoading value) loading,
    required TResult Function(GameError value) error,
    required TResult Function(GameInLobby value) inLobby,
    required TResult Function(GameInPlay value) inPlay,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameLoading value)? loading,
    TResult Function(GameError value)? error,
    TResult Function(GameInLobby value)? inLobby,
    TResult Function(GameInPlay value)? inPlay,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GameLoading implements GameplayState {
  const factory GameLoading() = _$GameLoading;
}

/// @nodoc
abstract class $GameErrorCopyWith<$Res> {
  factory $GameErrorCopyWith(GameError value, $Res Function(GameError) then) =
      _$GameErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameErrorCopyWithImpl<$Res> extends _$GameplayStateCopyWithImpl<$Res>
    implements $GameErrorCopyWith<$Res> {
  _$GameErrorCopyWithImpl(GameError _value, $Res Function(GameError) _then)
      : super(_value, (v) => _then(v as GameError));

  @override
  GameError get _value => super._value as GameError;
}

/// @nodoc

class _$GameError implements GameError {
  const _$GameError();

  @override
  String toString() {
    return 'GameplayState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GameError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(String gameName, List<String> participants)
        inLobby,
    required TResult Function(String gameName, List<String> participants)
        inPlay,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(String gameName, List<String> participants)? inLobby,
    TResult Function(String gameName, List<String> participants)? inPlay,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameLoading value) loading,
    required TResult Function(GameError value) error,
    required TResult Function(GameInLobby value) inLobby,
    required TResult Function(GameInPlay value) inPlay,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameLoading value)? loading,
    TResult Function(GameError value)? error,
    TResult Function(GameInLobby value)? inLobby,
    TResult Function(GameInPlay value)? inPlay,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GameError implements GameplayState {
  const factory GameError() = _$GameError;
}

/// @nodoc
abstract class $GameInLobbyCopyWith<$Res> {
  factory $GameInLobbyCopyWith(
          GameInLobby value, $Res Function(GameInLobby) then) =
      _$GameInLobbyCopyWithImpl<$Res>;
  $Res call({String gameName, List<String> participants});
}

/// @nodoc
class _$GameInLobbyCopyWithImpl<$Res> extends _$GameplayStateCopyWithImpl<$Res>
    implements $GameInLobbyCopyWith<$Res> {
  _$GameInLobbyCopyWithImpl(
      GameInLobby _value, $Res Function(GameInLobby) _then)
      : super(_value, (v) => _then(v as GameInLobby));

  @override
  GameInLobby get _value => super._value as GameInLobby;

  @override
  $Res call({
    Object? gameName = freezed,
    Object? participants = freezed,
  }) {
    return _then(GameInLobby(
      gameName: gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GameInLobby implements GameInLobby {
  const _$GameInLobby({required this.gameName, required this.participants});

  @override
  final String gameName;
  @override
  final List<String> participants;

  @override
  String toString() {
    return 'GameplayState.inLobby(gameName: $gameName, participants: $participants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameInLobby &&
            (identical(other.gameName, gameName) ||
                const DeepCollectionEquality()
                    .equals(other.gameName, gameName)) &&
            (identical(other.participants, participants) ||
                const DeepCollectionEquality()
                    .equals(other.participants, participants)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gameName) ^
      const DeepCollectionEquality().hash(participants);

  @JsonKey(ignore: true)
  @override
  $GameInLobbyCopyWith<GameInLobby> get copyWith =>
      _$GameInLobbyCopyWithImpl<GameInLobby>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(String gameName, List<String> participants)
        inLobby,
    required TResult Function(String gameName, List<String> participants)
        inPlay,
  }) {
    return inLobby(gameName, participants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(String gameName, List<String> participants)? inLobby,
    TResult Function(String gameName, List<String> participants)? inPlay,
    required TResult orElse(),
  }) {
    if (inLobby != null) {
      return inLobby(gameName, participants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameLoading value) loading,
    required TResult Function(GameError value) error,
    required TResult Function(GameInLobby value) inLobby,
    required TResult Function(GameInPlay value) inPlay,
  }) {
    return inLobby(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameLoading value)? loading,
    TResult Function(GameError value)? error,
    TResult Function(GameInLobby value)? inLobby,
    TResult Function(GameInPlay value)? inPlay,
    required TResult orElse(),
  }) {
    if (inLobby != null) {
      return inLobby(this);
    }
    return orElse();
  }
}

abstract class GameInLobby implements GameplayState {
  const factory GameInLobby(
      {required String gameName,
      required List<String> participants}) = _$GameInLobby;

  String get gameName => throw _privateConstructorUsedError;
  List<String> get participants => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameInLobbyCopyWith<GameInLobby> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInPlayCopyWith<$Res> {
  factory $GameInPlayCopyWith(
          GameInPlay value, $Res Function(GameInPlay) then) =
      _$GameInPlayCopyWithImpl<$Res>;
  $Res call({String gameName, List<String> participants});
}

/// @nodoc
class _$GameInPlayCopyWithImpl<$Res> extends _$GameplayStateCopyWithImpl<$Res>
    implements $GameInPlayCopyWith<$Res> {
  _$GameInPlayCopyWithImpl(GameInPlay _value, $Res Function(GameInPlay) _then)
      : super(_value, (v) => _then(v as GameInPlay));

  @override
  GameInPlay get _value => super._value as GameInPlay;

  @override
  $Res call({
    Object? gameName = freezed,
    Object? participants = freezed,
  }) {
    return _then(GameInPlay(
      gameName: gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GameInPlay implements GameInPlay {
  const _$GameInPlay({required this.gameName, required this.participants});

  @override
  final String gameName;
  @override
  final List<String> participants;

  @override
  String toString() {
    return 'GameplayState.inPlay(gameName: $gameName, participants: $participants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameInPlay &&
            (identical(other.gameName, gameName) ||
                const DeepCollectionEquality()
                    .equals(other.gameName, gameName)) &&
            (identical(other.participants, participants) ||
                const DeepCollectionEquality()
                    .equals(other.participants, participants)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gameName) ^
      const DeepCollectionEquality().hash(participants);

  @JsonKey(ignore: true)
  @override
  $GameInPlayCopyWith<GameInPlay> get copyWith =>
      _$GameInPlayCopyWithImpl<GameInPlay>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(String gameName, List<String> participants)
        inLobby,
    required TResult Function(String gameName, List<String> participants)
        inPlay,
  }) {
    return inPlay(gameName, participants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(String gameName, List<String> participants)? inLobby,
    TResult Function(String gameName, List<String> participants)? inPlay,
    required TResult orElse(),
  }) {
    if (inPlay != null) {
      return inPlay(gameName, participants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameLoading value) loading,
    required TResult Function(GameError value) error,
    required TResult Function(GameInLobby value) inLobby,
    required TResult Function(GameInPlay value) inPlay,
  }) {
    return inPlay(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameLoading value)? loading,
    TResult Function(GameError value)? error,
    TResult Function(GameInLobby value)? inLobby,
    TResult Function(GameInPlay value)? inPlay,
    required TResult orElse(),
  }) {
    if (inPlay != null) {
      return inPlay(this);
    }
    return orElse();
  }
}

abstract class GameInPlay implements GameplayState {
  const factory GameInPlay(
      {required String gameName,
      required List<String> participants}) = _$GameInPlay;

  String get gameName => throw _privateConstructorUsedError;
  List<String> get participants => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameInPlayCopyWith<GameInPlay> get copyWith =>
      throw _privateConstructorUsedError;
}