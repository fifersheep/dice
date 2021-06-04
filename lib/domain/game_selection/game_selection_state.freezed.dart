// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'game_selection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameSelectionStateTearOff {
  const _$GameSelectionStateTearOff();

  GameSelectionTitleChange nameChange(
      {required String gameName, required GameSelectionValidation validation}) {
    return GameSelectionTitleChange(
      gameName: gameName,
      validation: validation,
    );
  }

  GameSelected gameSelected(String gameId) {
    return GameSelected(
      gameId,
    );
  }
}

/// @nodoc
const $GameSelectionState = _$GameSelectionStateTearOff();

/// @nodoc
mixin _$GameSelectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String gameName, GameSelectionValidation validation)
        nameChange,
    required TResult Function(String gameId) gameSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameName, GameSelectionValidation validation)?
        nameChange,
    TResult Function(String gameId)? gameSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameSelectionTitleChange value) nameChange,
    required TResult Function(GameSelected value) gameSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameSelectionTitleChange value)? nameChange,
    TResult Function(GameSelected value)? gameSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSelectionStateCopyWith<$Res> {
  factory $GameSelectionStateCopyWith(
          GameSelectionState value, $Res Function(GameSelectionState) then) =
      _$GameSelectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameSelectionStateCopyWithImpl<$Res>
    implements $GameSelectionStateCopyWith<$Res> {
  _$GameSelectionStateCopyWithImpl(this._value, this._then);

  final GameSelectionState _value;
  // ignore: unused_field
  final $Res Function(GameSelectionState) _then;
}

/// @nodoc
abstract class $GameSelectionTitleChangeCopyWith<$Res> {
  factory $GameSelectionTitleChangeCopyWith(GameSelectionTitleChange value,
          $Res Function(GameSelectionTitleChange) then) =
      _$GameSelectionTitleChangeCopyWithImpl<$Res>;
  $Res call({String gameName, GameSelectionValidation validation});
}

/// @nodoc
class _$GameSelectionTitleChangeCopyWithImpl<$Res>
    extends _$GameSelectionStateCopyWithImpl<$Res>
    implements $GameSelectionTitleChangeCopyWith<$Res> {
  _$GameSelectionTitleChangeCopyWithImpl(GameSelectionTitleChange _value,
      $Res Function(GameSelectionTitleChange) _then)
      : super(_value, (v) => _then(v as GameSelectionTitleChange));

  @override
  GameSelectionTitleChange get _value =>
      super._value as GameSelectionTitleChange;

  @override
  $Res call({
    Object? gameName = freezed,
    Object? validation = freezed,
  }) {
    return _then(GameSelectionTitleChange(
      gameName: gameName == freezed
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      validation: validation == freezed
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as GameSelectionValidation,
    ));
  }
}

/// @nodoc

class _$GameSelectionTitleChange implements GameSelectionTitleChange {
  const _$GameSelectionTitleChange(
      {required this.gameName, required this.validation});

  @override
  final String gameName;
  @override
  final GameSelectionValidation validation;

  @override
  String toString() {
    return 'GameSelectionState.nameChange(gameName: $gameName, validation: $validation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameSelectionTitleChange &&
            (identical(other.gameName, gameName) ||
                const DeepCollectionEquality()
                    .equals(other.gameName, gameName)) &&
            (identical(other.validation, validation) ||
                const DeepCollectionEquality()
                    .equals(other.validation, validation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gameName) ^
      const DeepCollectionEquality().hash(validation);

  @JsonKey(ignore: true)
  @override
  $GameSelectionTitleChangeCopyWith<GameSelectionTitleChange> get copyWith =>
      _$GameSelectionTitleChangeCopyWithImpl<GameSelectionTitleChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String gameName, GameSelectionValidation validation)
        nameChange,
    required TResult Function(String gameId) gameSelected,
  }) {
    return nameChange(gameName, validation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameName, GameSelectionValidation validation)?
        nameChange,
    TResult Function(String gameId)? gameSelected,
    required TResult orElse(),
  }) {
    if (nameChange != null) {
      return nameChange(gameName, validation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameSelectionTitleChange value) nameChange,
    required TResult Function(GameSelected value) gameSelected,
  }) {
    return nameChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameSelectionTitleChange value)? nameChange,
    TResult Function(GameSelected value)? gameSelected,
    required TResult orElse(),
  }) {
    if (nameChange != null) {
      return nameChange(this);
    }
    return orElse();
  }
}

abstract class GameSelectionTitleChange implements GameSelectionState {
  const factory GameSelectionTitleChange(
          {required String gameName,
          required GameSelectionValidation validation}) =
      _$GameSelectionTitleChange;

  String get gameName => throw _privateConstructorUsedError;
  GameSelectionValidation get validation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameSelectionTitleChangeCopyWith<GameSelectionTitleChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSelectedCopyWith<$Res> {
  factory $GameSelectedCopyWith(
          GameSelected value, $Res Function(GameSelected) then) =
      _$GameSelectedCopyWithImpl<$Res>;
  $Res call({String gameId});
}

/// @nodoc
class _$GameSelectedCopyWithImpl<$Res>
    extends _$GameSelectionStateCopyWithImpl<$Res>
    implements $GameSelectedCopyWith<$Res> {
  _$GameSelectedCopyWithImpl(
      GameSelected _value, $Res Function(GameSelected) _then)
      : super(_value, (v) => _then(v as GameSelected));

  @override
  GameSelected get _value => super._value as GameSelected;

  @override
  $Res call({
    Object? gameId = freezed,
  }) {
    return _then(GameSelected(
      gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GameSelected implements GameSelected {
  const _$GameSelected(this.gameId);

  @override
  final String gameId;

  @override
  String toString() {
    return 'GameSelectionState.gameSelected(gameId: $gameId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameSelected &&
            (identical(other.gameId, gameId) ||
                const DeepCollectionEquality().equals(other.gameId, gameId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gameId);

  @JsonKey(ignore: true)
  @override
  $GameSelectedCopyWith<GameSelected> get copyWith =>
      _$GameSelectedCopyWithImpl<GameSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String gameName, GameSelectionValidation validation)
        nameChange,
    required TResult Function(String gameId) gameSelected,
  }) {
    return gameSelected(gameId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameName, GameSelectionValidation validation)?
        nameChange,
    TResult Function(String gameId)? gameSelected,
    required TResult orElse(),
  }) {
    if (gameSelected != null) {
      return gameSelected(gameId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameSelectionTitleChange value) nameChange,
    required TResult Function(GameSelected value) gameSelected,
  }) {
    return gameSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameSelectionTitleChange value)? nameChange,
    TResult Function(GameSelected value)? gameSelected,
    required TResult orElse(),
  }) {
    if (gameSelected != null) {
      return gameSelected(this);
    }
    return orElse();
  }
}

abstract class GameSelected implements GameSelectionState {
  const factory GameSelected(String gameId) = _$GameSelected;

  String get gameId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameSelectedCopyWith<GameSelected> get copyWith =>
      throw _privateConstructorUsedError;
}
