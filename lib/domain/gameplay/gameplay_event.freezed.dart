// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gameplay_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameplayEventTearOff {
  const _$GameplayEventTearOff();

  GameplayJoined joined(String gameId) {
    return GameplayJoined(
      gameId,
    );
  }
}

/// @nodoc
const $GameplayEvent = _$GameplayEventTearOff();

/// @nodoc
mixin _$GameplayEvent {
  String get gameId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId) joined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId)? joined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameplayJoined value) joined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameplayJoined value)? joined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameplayEventCopyWith<GameplayEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameplayEventCopyWith<$Res> {
  factory $GameplayEventCopyWith(
          GameplayEvent value, $Res Function(GameplayEvent) then) =
      _$GameplayEventCopyWithImpl<$Res>;
  $Res call({String gameId});
}

/// @nodoc
class _$GameplayEventCopyWithImpl<$Res>
    implements $GameplayEventCopyWith<$Res> {
  _$GameplayEventCopyWithImpl(this._value, this._then);

  final GameplayEvent _value;
  // ignore: unused_field
  final $Res Function(GameplayEvent) _then;

  @override
  $Res call({
    Object? gameId = freezed,
  }) {
    return _then(_value.copyWith(
      gameId: gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GameplayJoinedCopyWith<$Res>
    implements $GameplayEventCopyWith<$Res> {
  factory $GameplayJoinedCopyWith(
          GameplayJoined value, $Res Function(GameplayJoined) then) =
      _$GameplayJoinedCopyWithImpl<$Res>;
  @override
  $Res call({String gameId});
}

/// @nodoc
class _$GameplayJoinedCopyWithImpl<$Res>
    extends _$GameplayEventCopyWithImpl<$Res>
    implements $GameplayJoinedCopyWith<$Res> {
  _$GameplayJoinedCopyWithImpl(
      GameplayJoined _value, $Res Function(GameplayJoined) _then)
      : super(_value, (v) => _then(v as GameplayJoined));

  @override
  GameplayJoined get _value => super._value as GameplayJoined;

  @override
  $Res call({
    Object? gameId = freezed,
  }) {
    return _then(GameplayJoined(
      gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GameplayJoined implements GameplayJoined {
  const _$GameplayJoined(this.gameId);

  @override
  final String gameId;

  @override
  String toString() {
    return 'GameplayEvent.joined(gameId: $gameId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameplayJoined &&
            (identical(other.gameId, gameId) ||
                const DeepCollectionEquality().equals(other.gameId, gameId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameId);

  @JsonKey(ignore: true)
  @override
  $GameplayJoinedCopyWith<GameplayJoined> get copyWith =>
      _$GameplayJoinedCopyWithImpl<GameplayJoined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId) joined,
  }) {
    return joined(gameId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId)? joined,
    required TResult orElse(),
  }) {
    if (joined != null) {
      return joined(gameId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameplayJoined value) joined,
  }) {
    return joined(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameplayJoined value)? joined,
    required TResult orElse(),
  }) {
    if (joined != null) {
      return joined(this);
    }
    return orElse();
  }
}

abstract class GameplayJoined implements GameplayEvent {
  const factory GameplayJoined(String gameId) = _$GameplayJoined;

  @override
  String get gameId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GameplayJoinedCopyWith<GameplayJoined> get copyWith =>
      throw _privateConstructorUsedError;
}
