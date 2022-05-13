// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      {required bool currentPlayerReady,
      required String gameName,
      required List<ParticipatingPlayer> participatingPlayers,
      required bool loading}) {
    return GameInLobby(
      currentPlayerReady: currentPlayerReady,
      gameName: gameName,
      participatingPlayers: participatingPlayers,
      loading: loading,
    );
  }

  GameInPlay inPlay(
      {required int currentPlayerId,
      required String gameName,
      required List<GameInPlayParticipation> leftParticipations,
      required List<GameInPlayParticipation> rightParticipations,
      required GameInPlayParticipation? opposingParticipation,
      required GameInPlayParticipation currentParticipation,
      required String dice}) {
    return GameInPlay(
      currentPlayerId: currentPlayerId,
      gameName: gameName,
      leftParticipations: leftParticipations,
      rightParticipations: rightParticipations,
      opposingParticipation: opposingParticipation,
      currentParticipation: currentParticipation,
      dice: dice,
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
    required TResult Function(bool currentPlayerReady, String gameName,
            List<ParticipatingPlayer> participatingPlayers, bool loading)
        inLobby,
    required TResult Function(
            int currentPlayerId,
            String gameName,
            List<GameInPlayParticipation> leftParticipations,
            List<GameInPlayParticipation> rightParticipations,
            GameInPlayParticipation? opposingParticipation,
            GameInPlayParticipation currentParticipation,
            String dice)
        inPlay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool currentPlayerReady, String gameName,
            List<ParticipatingPlayer> participatingPlayers, bool loading)?
        inLobby,
    TResult Function(
            int currentPlayerId,
            String gameName,
            List<GameInPlayParticipation> leftParticipations,
            List<GameInPlayParticipation> rightParticipations,
            GameInPlayParticipation? opposingParticipation,
            GameInPlayParticipation currentParticipation,
            String dice)?
        inPlay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool currentPlayerReady, String gameName,
            List<ParticipatingPlayer> participatingPlayers, bool loading)?
        inLobby,
    TResult Function(
            int currentPlayerId,
            String gameName,
            List<GameInPlayParticipation> leftParticipations,
            List<GameInPlayParticipation> rightParticipations,
            GameInPlayParticipation? opposingParticipation,
            GameInPlayParticipation currentParticipation,
            String dice)?
        inPlay,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameLoading value)? loading,
    TResult Function(GameError value)? error,
    TResult Function(GameInLobby value)? inLobby,
    TResult Function(GameInPlay value)? inPlay,
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GameLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(bool currentPlayerReady, String gameName,
            List<ParticipatingPlayer> participatingPlayers, bool loading)
        inLobby,
    required TResult Function(
            int currentPlayerId,
            String gameName,
            List<GameInPlayParticipation> leftParticipations,
            List<GameInPlayParticipation> rightParticipations,
            GameInPlayParticipation? opposingParticipation,
            GameInPlayParticipation currentParticipation,
            String dice)
        inPlay,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool currentPlayerReady, String gameName,
            List<ParticipatingPlayer> participatingPlayers, bool loading)?
        inLobby,
    TResult Function(
            int currentPlayerId,
            String gameName,
            List<GameInPlayParticipation> leftParticipations,
            List<GameInPlayParticipation> rightParticipations,
            GameInPlayParticipation? opposingParticipation,
            GameInPlayParticipation currentParticipation,
            String dice)?
        inPlay,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool currentPlayerReady, String gameName,
            List<ParticipatingPlayer> participatingPlayers, bool loading)?
        inLobby,
    TResult Function(
            int currentPlayerId,
            String gameName,
            List<GameInPlayParticipation> leftParticipations,
            List<GameInPlayParticipation> rightParticipations,
            GameInPlayParticipation? opposingParticipation,
            GameInPlayParticipation currentParticipation,
            String dice)?
        inPlay,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameLoading value)? loading,
    TResult Function(GameError value)? error,
    TResult Function(GameInLobby value)? inLobby,
    TResult Function(GameInPlay value)? inPlay,
  }) {
    return loading?.call(this);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GameError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(bool currentPlayerReady, String gameName,
            List<ParticipatingPlayer> participatingPlayers, bool loading)
        inLobby,
    required TResult Function(
            int currentPlayerId,
            String gameName,
            List<GameInPlayParticipation> leftParticipations,
            List<GameInPlayParticipation> rightParticipations,
            GameInPlayParticipation? opposingParticipation,
            GameInPlayParticipation currentParticipation,
            String dice)
        inPlay,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool currentPlayerReady, String gameName,
            List<ParticipatingPlayer> participatingPlayers, bool loading)?
        inLobby,
    TResult Function(
            int currentPlayerId,
            String gameName,
            List<GameInPlayParticipation> leftParticipations,
            List<GameInPlayParticipation> rightParticipations,
            GameInPlayParticipation? opposingParticipation,
            GameInPlayParticipation currentParticipation,
            String dice)?
        inPlay,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool currentPlayerReady, String gameName,
            List<ParticipatingPlayer> participatingPlayers, bool loading)?
        inLobby,
    TResult Function(
            int currentPlayerId,
            String gameName,
            List<GameInPlayParticipation> leftParticipations,
            List<GameInPlayParticipation> rightParticipations,
            GameInPlayParticipation? opposingParticipation,
            GameInPlayParticipation currentParticipation,
            String dice)?
        inPlay,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameLoading value)? loading,
    TResult Function(GameError value)? error,
    TResult Function(GameInLobby value)? inLobby,
    TResult Function(GameInPlay value)? inPlay,
  }) {
    return error?.call(this);
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
  $Res call(
      {bool currentPlayerReady,
      String gameName,
      List<ParticipatingPlayer> participatingPlayers,
      bool loading});
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
    Object? currentPlayerReady = freezed,
    Object? gameName = freezed,
    Object? participatingPlayers = freezed,
    Object? loading = freezed,
  }) {
    return _then(GameInLobby(
      currentPlayerReady: currentPlayerReady == freezed
          ? _value.currentPlayerReady
          : currentPlayerReady // ignore: cast_nullable_to_non_nullable
              as bool,
      gameName: gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      participatingPlayers: participatingPlayers == freezed
          ? _value.participatingPlayers
          : participatingPlayers // ignore: cast_nullable_to_non_nullable
              as List<ParticipatingPlayer>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GameInLobby implements GameInLobby {
  const _$GameInLobby(
      {required this.currentPlayerReady,
      required this.gameName,
      required this.participatingPlayers,
      required this.loading});

  @override
  final bool currentPlayerReady;
  @override
  final String gameName;
  @override
  final List<ParticipatingPlayer> participatingPlayers;
  @override
  final bool loading;

  @override
  String toString() {
    return 'GameplayState.inLobby(currentPlayerReady: $currentPlayerReady, gameName: $gameName, participatingPlayers: $participatingPlayers, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameInLobby &&
            const DeepCollectionEquality()
                .equals(other.currentPlayerReady, currentPlayerReady) &&
            const DeepCollectionEquality().equals(other.gameName, gameName) &&
            const DeepCollectionEquality()
                .equals(other.participatingPlayers, participatingPlayers) &&
            const DeepCollectionEquality().equals(other.loading, loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPlayerReady),
      const DeepCollectionEquality().hash(gameName),
      const DeepCollectionEquality().hash(participatingPlayers),
      const DeepCollectionEquality().hash(loading));

  @JsonKey(ignore: true)
  @override
  $GameInLobbyCopyWith<GameInLobby> get copyWith =>
      _$GameInLobbyCopyWithImpl<GameInLobby>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(bool currentPlayerReady, String gameName,
            List<ParticipatingPlayer> participatingPlayers, bool loading)
        inLobby,
    required TResult Function(
            int currentPlayerId,
            String gameName,
            List<GameInPlayParticipation> leftParticipations,
            List<GameInPlayParticipation> rightParticipations,
            GameInPlayParticipation? opposingParticipation,
            GameInPlayParticipation currentParticipation,
            String dice)
        inPlay,
  }) {
    return inLobby(
        currentPlayerReady, gameName, participatingPlayers, this.loading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool currentPlayerReady, String gameName,
            List<ParticipatingPlayer> participatingPlayers, bool loading)?
        inLobby,
    TResult Function(
            int currentPlayerId,
            String gameName,
            List<GameInPlayParticipation> leftParticipations,
            List<GameInPlayParticipation> rightParticipations,
            GameInPlayParticipation? opposingParticipation,
            GameInPlayParticipation currentParticipation,
            String dice)?
        inPlay,
  }) {
    return inLobby?.call(
        currentPlayerReady, gameName, participatingPlayers, this.loading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool currentPlayerReady, String gameName,
            List<ParticipatingPlayer> participatingPlayers, bool loading)?
        inLobby,
    TResult Function(
            int currentPlayerId,
            String gameName,
            List<GameInPlayParticipation> leftParticipations,
            List<GameInPlayParticipation> rightParticipations,
            GameInPlayParticipation? opposingParticipation,
            GameInPlayParticipation currentParticipation,
            String dice)?
        inPlay,
    required TResult orElse(),
  }) {
    if (inLobby != null) {
      return inLobby(
          currentPlayerReady, gameName, participatingPlayers, this.loading);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameLoading value)? loading,
    TResult Function(GameError value)? error,
    TResult Function(GameInLobby value)? inLobby,
    TResult Function(GameInPlay value)? inPlay,
  }) {
    return inLobby?.call(this);
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
      {required bool currentPlayerReady,
      required String gameName,
      required List<ParticipatingPlayer> participatingPlayers,
      required bool loading}) = _$GameInLobby;

  bool get currentPlayerReady;
  String get gameName;
  List<ParticipatingPlayer> get participatingPlayers;
  bool get loading;
  @JsonKey(ignore: true)
  $GameInLobbyCopyWith<GameInLobby> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInPlayCopyWith<$Res> {
  factory $GameInPlayCopyWith(
          GameInPlay value, $Res Function(GameInPlay) then) =
      _$GameInPlayCopyWithImpl<$Res>;
  $Res call(
      {int currentPlayerId,
      String gameName,
      List<GameInPlayParticipation> leftParticipations,
      List<GameInPlayParticipation> rightParticipations,
      GameInPlayParticipation? opposingParticipation,
      GameInPlayParticipation currentParticipation,
      String dice});
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
    Object? currentPlayerId = freezed,
    Object? gameName = freezed,
    Object? leftParticipations = freezed,
    Object? rightParticipations = freezed,
    Object? opposingParticipation = freezed,
    Object? currentParticipation = freezed,
    Object? dice = freezed,
  }) {
    return _then(GameInPlay(
      currentPlayerId: currentPlayerId == freezed
          ? _value.currentPlayerId
          : currentPlayerId // ignore: cast_nullable_to_non_nullable
              as int,
      gameName: gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      leftParticipations: leftParticipations == freezed
          ? _value.leftParticipations
          : leftParticipations // ignore: cast_nullable_to_non_nullable
              as List<GameInPlayParticipation>,
      rightParticipations: rightParticipations == freezed
          ? _value.rightParticipations
          : rightParticipations // ignore: cast_nullable_to_non_nullable
              as List<GameInPlayParticipation>,
      opposingParticipation: opposingParticipation == freezed
          ? _value.opposingParticipation
          : opposingParticipation // ignore: cast_nullable_to_non_nullable
              as GameInPlayParticipation?,
      currentParticipation: currentParticipation == freezed
          ? _value.currentParticipation
          : currentParticipation // ignore: cast_nullable_to_non_nullable
              as GameInPlayParticipation,
      dice: dice == freezed
          ? _value.dice
          : dice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GameInPlay implements GameInPlay {
  const _$GameInPlay(
      {required this.currentPlayerId,
      required this.gameName,
      required this.leftParticipations,
      required this.rightParticipations,
      required this.opposingParticipation,
      required this.currentParticipation,
      required this.dice});

  @override
  final int currentPlayerId;
  @override
  final String gameName;
  @override
  final List<GameInPlayParticipation> leftParticipations;
  @override
  final List<GameInPlayParticipation> rightParticipations;
  @override
  final GameInPlayParticipation? opposingParticipation;
  @override
  final GameInPlayParticipation currentParticipation;
  @override
  final String dice;

  @override
  String toString() {
    return 'GameplayState.inPlay(currentPlayerId: $currentPlayerId, gameName: $gameName, leftParticipations: $leftParticipations, rightParticipations: $rightParticipations, opposingParticipation: $opposingParticipation, currentParticipation: $currentParticipation, dice: $dice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameInPlay &&
            const DeepCollectionEquality()
                .equals(other.currentPlayerId, currentPlayerId) &&
            const DeepCollectionEquality().equals(other.gameName, gameName) &&
            const DeepCollectionEquality()
                .equals(other.leftParticipations, leftParticipations) &&
            const DeepCollectionEquality()
                .equals(other.rightParticipations, rightParticipations) &&
            const DeepCollectionEquality()
                .equals(other.opposingParticipation, opposingParticipation) &&
            const DeepCollectionEquality()
                .equals(other.currentParticipation, currentParticipation) &&
            const DeepCollectionEquality().equals(other.dice, dice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPlayerId),
      const DeepCollectionEquality().hash(gameName),
      const DeepCollectionEquality().hash(leftParticipations),
      const DeepCollectionEquality().hash(rightParticipations),
      const DeepCollectionEquality().hash(opposingParticipation),
      const DeepCollectionEquality().hash(currentParticipation),
      const DeepCollectionEquality().hash(dice));

  @JsonKey(ignore: true)
  @override
  $GameInPlayCopyWith<GameInPlay> get copyWith =>
      _$GameInPlayCopyWithImpl<GameInPlay>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(bool currentPlayerReady, String gameName,
            List<ParticipatingPlayer> participatingPlayers, bool loading)
        inLobby,
    required TResult Function(
            int currentPlayerId,
            String gameName,
            List<GameInPlayParticipation> leftParticipations,
            List<GameInPlayParticipation> rightParticipations,
            GameInPlayParticipation? opposingParticipation,
            GameInPlayParticipation currentParticipation,
            String dice)
        inPlay,
  }) {
    return inPlay(currentPlayerId, gameName, leftParticipations,
        rightParticipations, opposingParticipation, currentParticipation, dice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool currentPlayerReady, String gameName,
            List<ParticipatingPlayer> participatingPlayers, bool loading)?
        inLobby,
    TResult Function(
            int currentPlayerId,
            String gameName,
            List<GameInPlayParticipation> leftParticipations,
            List<GameInPlayParticipation> rightParticipations,
            GameInPlayParticipation? opposingParticipation,
            GameInPlayParticipation currentParticipation,
            String dice)?
        inPlay,
  }) {
    return inPlay?.call(currentPlayerId, gameName, leftParticipations,
        rightParticipations, opposingParticipation, currentParticipation, dice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool currentPlayerReady, String gameName,
            List<ParticipatingPlayer> participatingPlayers, bool loading)?
        inLobby,
    TResult Function(
            int currentPlayerId,
            String gameName,
            List<GameInPlayParticipation> leftParticipations,
            List<GameInPlayParticipation> rightParticipations,
            GameInPlayParticipation? opposingParticipation,
            GameInPlayParticipation currentParticipation,
            String dice)?
        inPlay,
    required TResult orElse(),
  }) {
    if (inPlay != null) {
      return inPlay(
          currentPlayerId,
          gameName,
          leftParticipations,
          rightParticipations,
          opposingParticipation,
          currentParticipation,
          dice);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameLoading value)? loading,
    TResult Function(GameError value)? error,
    TResult Function(GameInLobby value)? inLobby,
    TResult Function(GameInPlay value)? inPlay,
  }) {
    return inPlay?.call(this);
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
      {required int currentPlayerId,
      required String gameName,
      required List<GameInPlayParticipation> leftParticipations,
      required List<GameInPlayParticipation> rightParticipations,
      required GameInPlayParticipation? opposingParticipation,
      required GameInPlayParticipation currentParticipation,
      required String dice}) = _$GameInPlay;

  int get currentPlayerId;
  String get gameName;
  List<GameInPlayParticipation> get leftParticipations;
  List<GameInPlayParticipation> get rightParticipations;
  GameInPlayParticipation? get opposingParticipation;
  GameInPlayParticipation get currentParticipation;
  String get dice;
  @JsonKey(ignore: true)
  $GameInPlayCopyWith<GameInPlay> get copyWith =>
      throw _privateConstructorUsedError;
}
