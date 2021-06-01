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

  _GameSelectionState call(
      {required String gameTitle, required bool isGameTitleValid}) {
    return _GameSelectionState(
      gameTitle: gameTitle,
      isGameTitleValid: isGameTitleValid,
    );
  }
}

/// @nodoc
const $GameSelectionState = _$GameSelectionStateTearOff();

/// @nodoc
mixin _$GameSelectionState {
  String get gameTitle => throw _privateConstructorUsedError;
  bool get isGameTitleValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameSelectionStateCopyWith<GameSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSelectionStateCopyWith<$Res> {
  factory $GameSelectionStateCopyWith(
          GameSelectionState value, $Res Function(GameSelectionState) then) =
      _$GameSelectionStateCopyWithImpl<$Res>;
  $Res call({String gameTitle, bool isGameTitleValid});
}

/// @nodoc
class _$GameSelectionStateCopyWithImpl<$Res>
    implements $GameSelectionStateCopyWith<$Res> {
  _$GameSelectionStateCopyWithImpl(this._value, this._then);

  final GameSelectionState _value;
  // ignore: unused_field
  final $Res Function(GameSelectionState) _then;

  @override
  $Res call({
    Object? gameTitle = freezed,
    Object? isGameTitleValid = freezed,
  }) {
    return _then(_value.copyWith(
      gameTitle: gameTitle == freezed
          ? _value.gameTitle
          : gameTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isGameTitleValid: isGameTitleValid == freezed
          ? _value.isGameTitleValid
          : isGameTitleValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$GameSelectionStateCopyWith<$Res>
    implements $GameSelectionStateCopyWith<$Res> {
  factory _$GameSelectionStateCopyWith(
          _GameSelectionState value, $Res Function(_GameSelectionState) then) =
      __$GameSelectionStateCopyWithImpl<$Res>;
  @override
  $Res call({String gameTitle, bool isGameTitleValid});
}

/// @nodoc
class __$GameSelectionStateCopyWithImpl<$Res>
    extends _$GameSelectionStateCopyWithImpl<$Res>
    implements _$GameSelectionStateCopyWith<$Res> {
  __$GameSelectionStateCopyWithImpl(
      _GameSelectionState _value, $Res Function(_GameSelectionState) _then)
      : super(_value, (v) => _then(v as _GameSelectionState));

  @override
  _GameSelectionState get _value => super._value as _GameSelectionState;

  @override
  $Res call({
    Object? gameTitle = freezed,
    Object? isGameTitleValid = freezed,
  }) {
    return _then(_GameSelectionState(
      gameTitle: gameTitle == freezed
          ? _value.gameTitle
          : gameTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isGameTitleValid: isGameTitleValid == freezed
          ? _value.isGameTitleValid
          : isGameTitleValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GameSelectionState implements _GameSelectionState {
  _$_GameSelectionState(
      {required this.gameTitle, required this.isGameTitleValid});

  @override
  final String gameTitle;
  @override
  final bool isGameTitleValid;

  @override
  String toString() {
    return 'GameSelectionState(gameTitle: $gameTitle, isGameTitleValid: $isGameTitleValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameSelectionState &&
            (identical(other.gameTitle, gameTitle) ||
                const DeepCollectionEquality()
                    .equals(other.gameTitle, gameTitle)) &&
            (identical(other.isGameTitleValid, isGameTitleValid) ||
                const DeepCollectionEquality()
                    .equals(other.isGameTitleValid, isGameTitleValid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gameTitle) ^
      const DeepCollectionEquality().hash(isGameTitleValid);

  @JsonKey(ignore: true)
  @override
  _$GameSelectionStateCopyWith<_GameSelectionState> get copyWith =>
      __$GameSelectionStateCopyWithImpl<_GameSelectionState>(this, _$identity);
}

abstract class _GameSelectionState implements GameSelectionState {
  factory _GameSelectionState(
      {required String gameTitle,
      required bool isGameTitleValid}) = _$_GameSelectionState;

  @override
  String get gameTitle => throw _privateConstructorUsedError;
  @override
  bool get isGameTitleValid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GameSelectionStateCopyWith<_GameSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}
