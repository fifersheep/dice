// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_selection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameSelectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String gameName, GameSelectionValidation validation)
        nameChange,
    required TResult Function(int gameId) gameSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String gameName, GameSelectionValidation validation)?
        nameChange,
    TResult Function(int gameId)? gameSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameName, GameSelectionValidation validation)?
        nameChange,
    TResult Function(int gameId)? gameSelected,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameSelectionTitleChange value)? nameChange,
    TResult Function(GameSelected value)? gameSelected,
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
abstract class _$$GameSelectionTitleChangeCopyWith<$Res> {
  factory _$$GameSelectionTitleChangeCopyWith(_$GameSelectionTitleChange value,
          $Res Function(_$GameSelectionTitleChange) then) =
      __$$GameSelectionTitleChangeCopyWithImpl<$Res>;
  $Res call({String gameName, GameSelectionValidation validation});
}

/// @nodoc
class __$$GameSelectionTitleChangeCopyWithImpl<$Res>
    extends _$GameSelectionStateCopyWithImpl<$Res>
    implements _$$GameSelectionTitleChangeCopyWith<$Res> {
  __$$GameSelectionTitleChangeCopyWithImpl(_$GameSelectionTitleChange _value,
      $Res Function(_$GameSelectionTitleChange) _then)
      : super(_value, (v) => _then(v as _$GameSelectionTitleChange));

  @override
  _$GameSelectionTitleChange get _value =>
      super._value as _$GameSelectionTitleChange;

  @override
  $Res call({
    Object? gameName = freezed,
    Object? validation = freezed,
  }) {
    return _then(_$GameSelectionTitleChange(
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
        (other.runtimeType == runtimeType &&
            other is _$GameSelectionTitleChange &&
            const DeepCollectionEquality().equals(other.gameName, gameName) &&
            const DeepCollectionEquality()
                .equals(other.validation, validation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gameName),
      const DeepCollectionEquality().hash(validation));

  @JsonKey(ignore: true)
  @override
  _$$GameSelectionTitleChangeCopyWith<_$GameSelectionTitleChange>
      get copyWith =>
          __$$GameSelectionTitleChangeCopyWithImpl<_$GameSelectionTitleChange>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String gameName, GameSelectionValidation validation)
        nameChange,
    required TResult Function(int gameId) gameSelected,
  }) {
    return nameChange(gameName, validation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String gameName, GameSelectionValidation validation)?
        nameChange,
    TResult Function(int gameId)? gameSelected,
  }) {
    return nameChange?.call(gameName, validation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameName, GameSelectionValidation validation)?
        nameChange,
    TResult Function(int gameId)? gameSelected,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameSelectionTitleChange value)? nameChange,
    TResult Function(GameSelected value)? gameSelected,
  }) {
    return nameChange?.call(this);
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
          {required final String gameName,
          required final GameSelectionValidation validation}) =
      _$GameSelectionTitleChange;

  String get gameName => throw _privateConstructorUsedError;
  GameSelectionValidation get validation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GameSelectionTitleChangeCopyWith<_$GameSelectionTitleChange>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameSelectedCopyWith<$Res> {
  factory _$$GameSelectedCopyWith(
          _$GameSelected value, $Res Function(_$GameSelected) then) =
      __$$GameSelectedCopyWithImpl<$Res>;
  $Res call({int gameId});
}

/// @nodoc
class __$$GameSelectedCopyWithImpl<$Res>
    extends _$GameSelectionStateCopyWithImpl<$Res>
    implements _$$GameSelectedCopyWith<$Res> {
  __$$GameSelectedCopyWithImpl(
      _$GameSelected _value, $Res Function(_$GameSelected) _then)
      : super(_value, (v) => _then(v as _$GameSelected));

  @override
  _$GameSelected get _value => super._value as _$GameSelected;

  @override
  $Res call({
    Object? gameId = freezed,
  }) {
    return _then(_$GameSelected(
      gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameSelected implements GameSelected {
  const _$GameSelected(this.gameId);

  @override
  final int gameId;

  @override
  String toString() {
    return 'GameSelectionState.gameSelected(gameId: $gameId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameSelected &&
            const DeepCollectionEquality().equals(other.gameId, gameId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(gameId));

  @JsonKey(ignore: true)
  @override
  _$$GameSelectedCopyWith<_$GameSelected> get copyWith =>
      __$$GameSelectedCopyWithImpl<_$GameSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String gameName, GameSelectionValidation validation)
        nameChange,
    required TResult Function(int gameId) gameSelected,
  }) {
    return gameSelected(gameId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String gameName, GameSelectionValidation validation)?
        nameChange,
    TResult Function(int gameId)? gameSelected,
  }) {
    return gameSelected?.call(gameId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameName, GameSelectionValidation validation)?
        nameChange,
    TResult Function(int gameId)? gameSelected,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameSelectionTitleChange value)? nameChange,
    TResult Function(GameSelected value)? gameSelected,
  }) {
    return gameSelected?.call(this);
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
  const factory GameSelected(final int gameId) = _$GameSelected;

  int get gameId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GameSelectedCopyWith<_$GameSelected> get copyWith =>
      throw _privateConstructorUsedError;
}
