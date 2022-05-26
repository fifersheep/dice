// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gameplay_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameplayEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gameId) joined,
    required TResult Function(GameplayModel gameplay) gameplayUpdated,
    required TResult Function() readyTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int gameId)? joined,
    TResult Function(GameplayModel gameplay)? gameplayUpdated,
    TResult Function()? readyTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId)? joined,
    TResult Function(GameplayModel gameplay)? gameplayUpdated,
    TResult Function()? readyTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameplayJoined value) joined,
    required TResult Function(GameplayUpdated value) gameplayUpdated,
    required TResult Function(ReadyTapped value) readyTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameplayJoined value)? joined,
    TResult Function(GameplayUpdated value)? gameplayUpdated,
    TResult Function(ReadyTapped value)? readyTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameplayJoined value)? joined,
    TResult Function(GameplayUpdated value)? gameplayUpdated,
    TResult Function(ReadyTapped value)? readyTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameplayEventCopyWith<$Res> {
  factory $GameplayEventCopyWith(
          GameplayEvent value, $Res Function(GameplayEvent) then) =
      _$GameplayEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameplayEventCopyWithImpl<$Res>
    implements $GameplayEventCopyWith<$Res> {
  _$GameplayEventCopyWithImpl(this._value, this._then);

  final GameplayEvent _value;
  // ignore: unused_field
  final $Res Function(GameplayEvent) _then;
}

/// @nodoc
abstract class _$$GameplayJoinedCopyWith<$Res> {
  factory _$$GameplayJoinedCopyWith(
          _$GameplayJoined value, $Res Function(_$GameplayJoined) then) =
      __$$GameplayJoinedCopyWithImpl<$Res>;
  $Res call({int gameId});
}

/// @nodoc
class __$$GameplayJoinedCopyWithImpl<$Res>
    extends _$GameplayEventCopyWithImpl<$Res>
    implements _$$GameplayJoinedCopyWith<$Res> {
  __$$GameplayJoinedCopyWithImpl(
      _$GameplayJoined _value, $Res Function(_$GameplayJoined) _then)
      : super(_value, (v) => _then(v as _$GameplayJoined));

  @override
  _$GameplayJoined get _value => super._value as _$GameplayJoined;

  @override
  $Res call({
    Object? gameId = freezed,
  }) {
    return _then(_$GameplayJoined(
      gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameplayJoined implements GameplayJoined {
  const _$GameplayJoined(this.gameId);

  @override
  final int gameId;

  @override
  String toString() {
    return 'GameplayEvent.joined(gameId: $gameId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameplayJoined &&
            const DeepCollectionEquality().equals(other.gameId, gameId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(gameId));

  @JsonKey(ignore: true)
  @override
  _$$GameplayJoinedCopyWith<_$GameplayJoined> get copyWith =>
      __$$GameplayJoinedCopyWithImpl<_$GameplayJoined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gameId) joined,
    required TResult Function(GameplayModel gameplay) gameplayUpdated,
    required TResult Function() readyTapped,
  }) {
    return joined(gameId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int gameId)? joined,
    TResult Function(GameplayModel gameplay)? gameplayUpdated,
    TResult Function()? readyTapped,
  }) {
    return joined?.call(gameId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId)? joined,
    TResult Function(GameplayModel gameplay)? gameplayUpdated,
    TResult Function()? readyTapped,
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
    required TResult Function(GameplayUpdated value) gameplayUpdated,
    required TResult Function(ReadyTapped value) readyTapped,
  }) {
    return joined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameplayJoined value)? joined,
    TResult Function(GameplayUpdated value)? gameplayUpdated,
    TResult Function(ReadyTapped value)? readyTapped,
  }) {
    return joined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameplayJoined value)? joined,
    TResult Function(GameplayUpdated value)? gameplayUpdated,
    TResult Function(ReadyTapped value)? readyTapped,
    required TResult orElse(),
  }) {
    if (joined != null) {
      return joined(this);
    }
    return orElse();
  }
}

abstract class GameplayJoined implements GameplayEvent {
  const factory GameplayJoined(final int gameId) = _$GameplayJoined;

  int get gameId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GameplayJoinedCopyWith<_$GameplayJoined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameplayUpdatedCopyWith<$Res> {
  factory _$$GameplayUpdatedCopyWith(
          _$GameplayUpdated value, $Res Function(_$GameplayUpdated) then) =
      __$$GameplayUpdatedCopyWithImpl<$Res>;
  $Res call({GameplayModel gameplay});
}

/// @nodoc
class __$$GameplayUpdatedCopyWithImpl<$Res>
    extends _$GameplayEventCopyWithImpl<$Res>
    implements _$$GameplayUpdatedCopyWith<$Res> {
  __$$GameplayUpdatedCopyWithImpl(
      _$GameplayUpdated _value, $Res Function(_$GameplayUpdated) _then)
      : super(_value, (v) => _then(v as _$GameplayUpdated));

  @override
  _$GameplayUpdated get _value => super._value as _$GameplayUpdated;

  @override
  $Res call({
    Object? gameplay = freezed,
  }) {
    return _then(_$GameplayUpdated(
      gameplay == freezed
          ? _value.gameplay
          : gameplay // ignore: cast_nullable_to_non_nullable
              as GameplayModel,
    ));
  }
}

/// @nodoc

class _$GameplayUpdated implements GameplayUpdated {
  const _$GameplayUpdated(this.gameplay);

  @override
  final GameplayModel gameplay;

  @override
  String toString() {
    return 'GameplayEvent.gameplayUpdated(gameplay: $gameplay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameplayUpdated &&
            const DeepCollectionEquality().equals(other.gameplay, gameplay));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(gameplay));

  @JsonKey(ignore: true)
  @override
  _$$GameplayUpdatedCopyWith<_$GameplayUpdated> get copyWith =>
      __$$GameplayUpdatedCopyWithImpl<_$GameplayUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gameId) joined,
    required TResult Function(GameplayModel gameplay) gameplayUpdated,
    required TResult Function() readyTapped,
  }) {
    return gameplayUpdated(gameplay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int gameId)? joined,
    TResult Function(GameplayModel gameplay)? gameplayUpdated,
    TResult Function()? readyTapped,
  }) {
    return gameplayUpdated?.call(gameplay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId)? joined,
    TResult Function(GameplayModel gameplay)? gameplayUpdated,
    TResult Function()? readyTapped,
    required TResult orElse(),
  }) {
    if (gameplayUpdated != null) {
      return gameplayUpdated(gameplay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameplayJoined value) joined,
    required TResult Function(GameplayUpdated value) gameplayUpdated,
    required TResult Function(ReadyTapped value) readyTapped,
  }) {
    return gameplayUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameplayJoined value)? joined,
    TResult Function(GameplayUpdated value)? gameplayUpdated,
    TResult Function(ReadyTapped value)? readyTapped,
  }) {
    return gameplayUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameplayJoined value)? joined,
    TResult Function(GameplayUpdated value)? gameplayUpdated,
    TResult Function(ReadyTapped value)? readyTapped,
    required TResult orElse(),
  }) {
    if (gameplayUpdated != null) {
      return gameplayUpdated(this);
    }
    return orElse();
  }
}

abstract class GameplayUpdated implements GameplayEvent {
  const factory GameplayUpdated(final GameplayModel gameplay) =
      _$GameplayUpdated;

  GameplayModel get gameplay => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GameplayUpdatedCopyWith<_$GameplayUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadyTappedCopyWith<$Res> {
  factory _$$ReadyTappedCopyWith(
          _$ReadyTapped value, $Res Function(_$ReadyTapped) then) =
      __$$ReadyTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadyTappedCopyWithImpl<$Res>
    extends _$GameplayEventCopyWithImpl<$Res>
    implements _$$ReadyTappedCopyWith<$Res> {
  __$$ReadyTappedCopyWithImpl(
      _$ReadyTapped _value, $Res Function(_$ReadyTapped) _then)
      : super(_value, (v) => _then(v as _$ReadyTapped));

  @override
  _$ReadyTapped get _value => super._value as _$ReadyTapped;
}

/// @nodoc

class _$ReadyTapped implements ReadyTapped {
  const _$ReadyTapped();

  @override
  String toString() {
    return 'GameplayEvent.readyTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadyTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gameId) joined,
    required TResult Function(GameplayModel gameplay) gameplayUpdated,
    required TResult Function() readyTapped,
  }) {
    return readyTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int gameId)? joined,
    TResult Function(GameplayModel gameplay)? gameplayUpdated,
    TResult Function()? readyTapped,
  }) {
    return readyTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId)? joined,
    TResult Function(GameplayModel gameplay)? gameplayUpdated,
    TResult Function()? readyTapped,
    required TResult orElse(),
  }) {
    if (readyTapped != null) {
      return readyTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameplayJoined value) joined,
    required TResult Function(GameplayUpdated value) gameplayUpdated,
    required TResult Function(ReadyTapped value) readyTapped,
  }) {
    return readyTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameplayJoined value)? joined,
    TResult Function(GameplayUpdated value)? gameplayUpdated,
    TResult Function(ReadyTapped value)? readyTapped,
  }) {
    return readyTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameplayJoined value)? joined,
    TResult Function(GameplayUpdated value)? gameplayUpdated,
    TResult Function(ReadyTapped value)? readyTapped,
    required TResult orElse(),
  }) {
    if (readyTapped != null) {
      return readyTapped(this);
    }
    return orElse();
  }
}

abstract class ReadyTapped implements GameplayEvent {
  const factory ReadyTapped() = _$ReadyTapped;
}
