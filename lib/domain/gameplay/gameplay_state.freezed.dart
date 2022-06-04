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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
            String currentParticipationDice,
            List<int> betOptions)
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
            String currentParticipationDice,
            List<int> betOptions)?
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
            String currentParticipationDice,
            List<int> betOptions)?
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
abstract class _$$GameLoadingCopyWith<$Res> {
  factory _$$GameLoadingCopyWith(
          _$GameLoading value, $Res Function(_$GameLoading) then) =
      __$$GameLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameLoadingCopyWithImpl<$Res>
    extends _$GameplayStateCopyWithImpl<$Res>
    implements _$$GameLoadingCopyWith<$Res> {
  __$$GameLoadingCopyWithImpl(
      _$GameLoading _value, $Res Function(_$GameLoading) _then)
      : super(_value, (v) => _then(v as _$GameLoading));

  @override
  _$GameLoading get _value => super._value as _$GameLoading;
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
        (other.runtimeType == runtimeType && other is _$GameLoading);
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
            String currentParticipationDice,
            List<int> betOptions)
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
            String currentParticipationDice,
            List<int> betOptions)?
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
            String currentParticipationDice,
            List<int> betOptions)?
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
abstract class _$$GameErrorCopyWith<$Res> {
  factory _$$GameErrorCopyWith(
          _$GameError value, $Res Function(_$GameError) then) =
      __$$GameErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameErrorCopyWithImpl<$Res> extends _$GameplayStateCopyWithImpl<$Res>
    implements _$$GameErrorCopyWith<$Res> {
  __$$GameErrorCopyWithImpl(
      _$GameError _value, $Res Function(_$GameError) _then)
      : super(_value, (v) => _then(v as _$GameError));

  @override
  _$GameError get _value => super._value as _$GameError;
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
        (other.runtimeType == runtimeType && other is _$GameError);
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
            String currentParticipationDice,
            List<int> betOptions)
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
            String currentParticipationDice,
            List<int> betOptions)?
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
            String currentParticipationDice,
            List<int> betOptions)?
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
abstract class _$$GameInLobbyCopyWith<$Res> {
  factory _$$GameInLobbyCopyWith(
          _$GameInLobby value, $Res Function(_$GameInLobby) then) =
      __$$GameInLobbyCopyWithImpl<$Res>;
  $Res call(
      {bool currentPlayerReady,
      String gameName,
      List<ParticipatingPlayer> participatingPlayers,
      bool loading});
}

/// @nodoc
class __$$GameInLobbyCopyWithImpl<$Res>
    extends _$GameplayStateCopyWithImpl<$Res>
    implements _$$GameInLobbyCopyWith<$Res> {
  __$$GameInLobbyCopyWithImpl(
      _$GameInLobby _value, $Res Function(_$GameInLobby) _then)
      : super(_value, (v) => _then(v as _$GameInLobby));

  @override
  _$GameInLobby get _value => super._value as _$GameInLobby;

  @override
  $Res call({
    Object? currentPlayerReady = freezed,
    Object? gameName = freezed,
    Object? participatingPlayers = freezed,
    Object? loading = freezed,
  }) {
    return _then(_$GameInLobby(
      currentPlayerReady: currentPlayerReady == freezed
          ? _value.currentPlayerReady
          : currentPlayerReady // ignore: cast_nullable_to_non_nullable
              as bool,
      gameName: gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      participatingPlayers: participatingPlayers == freezed
          ? _value._participatingPlayers
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
      required final List<ParticipatingPlayer> participatingPlayers,
      required this.loading})
      : _participatingPlayers = participatingPlayers;

  @override
  final bool currentPlayerReady;
  @override
  final String gameName;
  final List<ParticipatingPlayer> _participatingPlayers;
  @override
  List<ParticipatingPlayer> get participatingPlayers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participatingPlayers);
  }

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
            other is _$GameInLobby &&
            const DeepCollectionEquality()
                .equals(other.currentPlayerReady, currentPlayerReady) &&
            const DeepCollectionEquality().equals(other.gameName, gameName) &&
            const DeepCollectionEquality()
                .equals(other._participatingPlayers, _participatingPlayers) &&
            const DeepCollectionEquality().equals(other.loading, loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPlayerReady),
      const DeepCollectionEquality().hash(gameName),
      const DeepCollectionEquality().hash(_participatingPlayers),
      const DeepCollectionEquality().hash(loading));

  @JsonKey(ignore: true)
  @override
  _$$GameInLobbyCopyWith<_$GameInLobby> get copyWith =>
      __$$GameInLobbyCopyWithImpl<_$GameInLobby>(this, _$identity);

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
            String currentParticipationDice,
            List<int> betOptions)
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
            String currentParticipationDice,
            List<int> betOptions)?
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
            String currentParticipationDice,
            List<int> betOptions)?
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
      {required final bool currentPlayerReady,
      required final String gameName,
      required final List<ParticipatingPlayer> participatingPlayers,
      required final bool loading}) = _$GameInLobby;

  bool get currentPlayerReady => throw _privateConstructorUsedError;
  String get gameName => throw _privateConstructorUsedError;
  List<ParticipatingPlayer> get participatingPlayers =>
      throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GameInLobbyCopyWith<_$GameInLobby> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameInPlayCopyWith<$Res> {
  factory _$$GameInPlayCopyWith(
          _$GameInPlay value, $Res Function(_$GameInPlay) then) =
      __$$GameInPlayCopyWithImpl<$Res>;
  $Res call(
      {int currentPlayerId,
      String gameName,
      List<GameInPlayParticipation> leftParticipations,
      List<GameInPlayParticipation> rightParticipations,
      GameInPlayParticipation? opposingParticipation,
      GameInPlayParticipation currentParticipation,
      String currentParticipationDice,
      List<int> betOptions});
}

/// @nodoc
class __$$GameInPlayCopyWithImpl<$Res> extends _$GameplayStateCopyWithImpl<$Res>
    implements _$$GameInPlayCopyWith<$Res> {
  __$$GameInPlayCopyWithImpl(
      _$GameInPlay _value, $Res Function(_$GameInPlay) _then)
      : super(_value, (v) => _then(v as _$GameInPlay));

  @override
  _$GameInPlay get _value => super._value as _$GameInPlay;

  @override
  $Res call({
    Object? currentPlayerId = freezed,
    Object? gameName = freezed,
    Object? leftParticipations = freezed,
    Object? rightParticipations = freezed,
    Object? opposingParticipation = freezed,
    Object? currentParticipation = freezed,
    Object? currentParticipationDice = freezed,
    Object? betOptions = freezed,
  }) {
    return _then(_$GameInPlay(
      currentPlayerId: currentPlayerId == freezed
          ? _value.currentPlayerId
          : currentPlayerId // ignore: cast_nullable_to_non_nullable
              as int,
      gameName: gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      leftParticipations: leftParticipations == freezed
          ? _value._leftParticipations
          : leftParticipations // ignore: cast_nullable_to_non_nullable
              as List<GameInPlayParticipation>,
      rightParticipations: rightParticipations == freezed
          ? _value._rightParticipations
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
      currentParticipationDice: currentParticipationDice == freezed
          ? _value.currentParticipationDice
          : currentParticipationDice // ignore: cast_nullable_to_non_nullable
              as String,
      betOptions: betOptions == freezed
          ? _value._betOptions
          : betOptions // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$GameInPlay implements GameInPlay {
  const _$GameInPlay(
      {required this.currentPlayerId,
      required this.gameName,
      required final List<GameInPlayParticipation> leftParticipations,
      required final List<GameInPlayParticipation> rightParticipations,
      required this.opposingParticipation,
      required this.currentParticipation,
      required this.currentParticipationDice,
      required final List<int> betOptions})
      : _leftParticipations = leftParticipations,
        _rightParticipations = rightParticipations,
        _betOptions = betOptions;

  @override
  final int currentPlayerId;
  @override
  final String gameName;
  final List<GameInPlayParticipation> _leftParticipations;
  @override
  List<GameInPlayParticipation> get leftParticipations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leftParticipations);
  }

  final List<GameInPlayParticipation> _rightParticipations;
  @override
  List<GameInPlayParticipation> get rightParticipations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rightParticipations);
  }

  @override
  final GameInPlayParticipation? opposingParticipation;
  @override
  final GameInPlayParticipation currentParticipation;
  @override
  final String currentParticipationDice;
  final List<int> _betOptions;
  @override
  List<int> get betOptions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_betOptions);
  }

  @override
  String toString() {
    return 'GameplayState.inPlay(currentPlayerId: $currentPlayerId, gameName: $gameName, leftParticipations: $leftParticipations, rightParticipations: $rightParticipations, opposingParticipation: $opposingParticipation, currentParticipation: $currentParticipation, currentParticipationDice: $currentParticipationDice, betOptions: $betOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameInPlay &&
            const DeepCollectionEquality()
                .equals(other.currentPlayerId, currentPlayerId) &&
            const DeepCollectionEquality().equals(other.gameName, gameName) &&
            const DeepCollectionEquality()
                .equals(other._leftParticipations, _leftParticipations) &&
            const DeepCollectionEquality()
                .equals(other._rightParticipations, _rightParticipations) &&
            const DeepCollectionEquality()
                .equals(other.opposingParticipation, opposingParticipation) &&
            const DeepCollectionEquality()
                .equals(other.currentParticipation, currentParticipation) &&
            const DeepCollectionEquality().equals(
                other.currentParticipationDice, currentParticipationDice) &&
            const DeepCollectionEquality()
                .equals(other._betOptions, _betOptions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPlayerId),
      const DeepCollectionEquality().hash(gameName),
      const DeepCollectionEquality().hash(_leftParticipations),
      const DeepCollectionEquality().hash(_rightParticipations),
      const DeepCollectionEquality().hash(opposingParticipation),
      const DeepCollectionEquality().hash(currentParticipation),
      const DeepCollectionEquality().hash(currentParticipationDice),
      const DeepCollectionEquality().hash(_betOptions));

  @JsonKey(ignore: true)
  @override
  _$$GameInPlayCopyWith<_$GameInPlay> get copyWith =>
      __$$GameInPlayCopyWithImpl<_$GameInPlay>(this, _$identity);

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
            String currentParticipationDice,
            List<int> betOptions)
        inPlay,
  }) {
    return inPlay(
        currentPlayerId,
        gameName,
        leftParticipations,
        rightParticipations,
        opposingParticipation,
        currentParticipation,
        currentParticipationDice,
        betOptions);
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
            String currentParticipationDice,
            List<int> betOptions)?
        inPlay,
  }) {
    return inPlay?.call(
        currentPlayerId,
        gameName,
        leftParticipations,
        rightParticipations,
        opposingParticipation,
        currentParticipation,
        currentParticipationDice,
        betOptions);
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
            String currentParticipationDice,
            List<int> betOptions)?
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
          currentParticipationDice,
          betOptions);
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
      {required final int currentPlayerId,
      required final String gameName,
      required final List<GameInPlayParticipation> leftParticipations,
      required final List<GameInPlayParticipation> rightParticipations,
      required final GameInPlayParticipation? opposingParticipation,
      required final GameInPlayParticipation currentParticipation,
      required final String currentParticipationDice,
      required final List<int> betOptions}) = _$GameInPlay;

  int get currentPlayerId => throw _privateConstructorUsedError;
  String get gameName => throw _privateConstructorUsedError;
  List<GameInPlayParticipation> get leftParticipations =>
      throw _privateConstructorUsedError;
  List<GameInPlayParticipation> get rightParticipations =>
      throw _privateConstructorUsedError;
  GameInPlayParticipation? get opposingParticipation =>
      throw _privateConstructorUsedError;
  GameInPlayParticipation get currentParticipation =>
      throw _privateConstructorUsedError;
  String get currentParticipationDice => throw _privateConstructorUsedError;
  List<int> get betOptions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GameInPlayCopyWith<_$GameInPlay> get copyWith =>
      throw _privateConstructorUsedError;
}
