// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bet_placement_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BetPlacementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numberOfDice) diceAvailable,
    required TResult Function(int betOption) betOptionSelected,
    required TResult Function(int valueOption, int numberOfDice)
        valueOptionSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int numberOfDice)? diceAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numberOfDice)? diceAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BetPlacementDiceAvailable value) diceAvailable,
    required TResult Function(BetPlacementBetOptionSelected value)
        betOptionSelected,
    required TResult Function(BetPlacementValueOptionSelected value)
        valueOptionSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BetPlacementDiceAvailable value)? diceAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetPlacementDiceAvailable value)? diceAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BetPlacementEventCopyWith<$Res> {
  factory $BetPlacementEventCopyWith(
          BetPlacementEvent value, $Res Function(BetPlacementEvent) then) =
      _$BetPlacementEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BetPlacementEventCopyWithImpl<$Res>
    implements $BetPlacementEventCopyWith<$Res> {
  _$BetPlacementEventCopyWithImpl(this._value, this._then);

  final BetPlacementEvent _value;
  // ignore: unused_field
  final $Res Function(BetPlacementEvent) _then;
}

/// @nodoc
abstract class _$$BetPlacementDiceAvailableCopyWith<$Res> {
  factory _$$BetPlacementDiceAvailableCopyWith(
          _$BetPlacementDiceAvailable value,
          $Res Function(_$BetPlacementDiceAvailable) then) =
      __$$BetPlacementDiceAvailableCopyWithImpl<$Res>;
  $Res call({int numberOfDice});
}

/// @nodoc
class __$$BetPlacementDiceAvailableCopyWithImpl<$Res>
    extends _$BetPlacementEventCopyWithImpl<$Res>
    implements _$$BetPlacementDiceAvailableCopyWith<$Res> {
  __$$BetPlacementDiceAvailableCopyWithImpl(_$BetPlacementDiceAvailable _value,
      $Res Function(_$BetPlacementDiceAvailable) _then)
      : super(_value, (v) => _then(v as _$BetPlacementDiceAvailable));

  @override
  _$BetPlacementDiceAvailable get _value =>
      super._value as _$BetPlacementDiceAvailable;

  @override
  $Res call({
    Object? numberOfDice = freezed,
  }) {
    return _then(_$BetPlacementDiceAvailable(
      numberOfDice == freezed
          ? _value.numberOfDice
          : numberOfDice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BetPlacementDiceAvailable implements BetPlacementDiceAvailable {
  const _$BetPlacementDiceAvailable(this.numberOfDice);

  @override
  final int numberOfDice;

  @override
  String toString() {
    return 'BetPlacementEvent.diceAvailable(numberOfDice: $numberOfDice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BetPlacementDiceAvailable &&
            const DeepCollectionEquality()
                .equals(other.numberOfDice, numberOfDice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(numberOfDice));

  @JsonKey(ignore: true)
  @override
  _$$BetPlacementDiceAvailableCopyWith<_$BetPlacementDiceAvailable>
      get copyWith => __$$BetPlacementDiceAvailableCopyWithImpl<
          _$BetPlacementDiceAvailable>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numberOfDice) diceAvailable,
    required TResult Function(int betOption) betOptionSelected,
    required TResult Function(int valueOption, int numberOfDice)
        valueOptionSelected,
  }) {
    return diceAvailable(numberOfDice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int numberOfDice)? diceAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
  }) {
    return diceAvailable?.call(numberOfDice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numberOfDice)? diceAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
    required TResult orElse(),
  }) {
    if (diceAvailable != null) {
      return diceAvailable(numberOfDice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BetPlacementDiceAvailable value) diceAvailable,
    required TResult Function(BetPlacementBetOptionSelected value)
        betOptionSelected,
    required TResult Function(BetPlacementValueOptionSelected value)
        valueOptionSelected,
  }) {
    return diceAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BetPlacementDiceAvailable value)? diceAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
  }) {
    return diceAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetPlacementDiceAvailable value)? diceAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
    required TResult orElse(),
  }) {
    if (diceAvailable != null) {
      return diceAvailable(this);
    }
    return orElse();
  }
}

abstract class BetPlacementDiceAvailable implements BetPlacementEvent {
  const factory BetPlacementDiceAvailable(final int numberOfDice) =
      _$BetPlacementDiceAvailable;

  int get numberOfDice => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$BetPlacementDiceAvailableCopyWith<_$BetPlacementDiceAvailable>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BetPlacementBetOptionSelectedCopyWith<$Res> {
  factory _$$BetPlacementBetOptionSelectedCopyWith(
          _$BetPlacementBetOptionSelected value,
          $Res Function(_$BetPlacementBetOptionSelected) then) =
      __$$BetPlacementBetOptionSelectedCopyWithImpl<$Res>;
  $Res call({int betOption});
}

/// @nodoc
class __$$BetPlacementBetOptionSelectedCopyWithImpl<$Res>
    extends _$BetPlacementEventCopyWithImpl<$Res>
    implements _$$BetPlacementBetOptionSelectedCopyWith<$Res> {
  __$$BetPlacementBetOptionSelectedCopyWithImpl(
      _$BetPlacementBetOptionSelected _value,
      $Res Function(_$BetPlacementBetOptionSelected) _then)
      : super(_value, (v) => _then(v as _$BetPlacementBetOptionSelected));

  @override
  _$BetPlacementBetOptionSelected get _value =>
      super._value as _$BetPlacementBetOptionSelected;

  @override
  $Res call({
    Object? betOption = freezed,
  }) {
    return _then(_$BetPlacementBetOptionSelected(
      betOption == freezed
          ? _value.betOption
          : betOption // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BetPlacementBetOptionSelected implements BetPlacementBetOptionSelected {
  const _$BetPlacementBetOptionSelected(this.betOption);

  @override
  final int betOption;

  @override
  String toString() {
    return 'BetPlacementEvent.betOptionSelected(betOption: $betOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BetPlacementBetOptionSelected &&
            const DeepCollectionEquality().equals(other.betOption, betOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(betOption));

  @JsonKey(ignore: true)
  @override
  _$$BetPlacementBetOptionSelectedCopyWith<_$BetPlacementBetOptionSelected>
      get copyWith => __$$BetPlacementBetOptionSelectedCopyWithImpl<
          _$BetPlacementBetOptionSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numberOfDice) diceAvailable,
    required TResult Function(int betOption) betOptionSelected,
    required TResult Function(int valueOption, int numberOfDice)
        valueOptionSelected,
  }) {
    return betOptionSelected(betOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int numberOfDice)? diceAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
  }) {
    return betOptionSelected?.call(betOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numberOfDice)? diceAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
    required TResult orElse(),
  }) {
    if (betOptionSelected != null) {
      return betOptionSelected(betOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BetPlacementDiceAvailable value) diceAvailable,
    required TResult Function(BetPlacementBetOptionSelected value)
        betOptionSelected,
    required TResult Function(BetPlacementValueOptionSelected value)
        valueOptionSelected,
  }) {
    return betOptionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BetPlacementDiceAvailable value)? diceAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
  }) {
    return betOptionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetPlacementDiceAvailable value)? diceAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
    required TResult orElse(),
  }) {
    if (betOptionSelected != null) {
      return betOptionSelected(this);
    }
    return orElse();
  }
}

abstract class BetPlacementBetOptionSelected implements BetPlacementEvent {
  const factory BetPlacementBetOptionSelected(final int betOption) =
      _$BetPlacementBetOptionSelected;

  int get betOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$BetPlacementBetOptionSelectedCopyWith<_$BetPlacementBetOptionSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BetPlacementValueOptionSelectedCopyWith<$Res> {
  factory _$$BetPlacementValueOptionSelectedCopyWith(
          _$BetPlacementValueOptionSelected value,
          $Res Function(_$BetPlacementValueOptionSelected) then) =
      __$$BetPlacementValueOptionSelectedCopyWithImpl<$Res>;
  $Res call({int valueOption, int numberOfDice});
}

/// @nodoc
class __$$BetPlacementValueOptionSelectedCopyWithImpl<$Res>
    extends _$BetPlacementEventCopyWithImpl<$Res>
    implements _$$BetPlacementValueOptionSelectedCopyWith<$Res> {
  __$$BetPlacementValueOptionSelectedCopyWithImpl(
      _$BetPlacementValueOptionSelected _value,
      $Res Function(_$BetPlacementValueOptionSelected) _then)
      : super(_value, (v) => _then(v as _$BetPlacementValueOptionSelected));

  @override
  _$BetPlacementValueOptionSelected get _value =>
      super._value as _$BetPlacementValueOptionSelected;

  @override
  $Res call({
    Object? valueOption = freezed,
    Object? numberOfDice = freezed,
  }) {
    return _then(_$BetPlacementValueOptionSelected(
      valueOption == freezed
          ? _value.valueOption
          : valueOption // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfDice == freezed
          ? _value.numberOfDice
          : numberOfDice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BetPlacementValueOptionSelected
    implements BetPlacementValueOptionSelected {
  const _$BetPlacementValueOptionSelected(this.valueOption, this.numberOfDice);

  @override
  final int valueOption;
  @override
  final int numberOfDice;

  @override
  String toString() {
    return 'BetPlacementEvent.valueOptionSelected(valueOption: $valueOption, numberOfDice: $numberOfDice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BetPlacementValueOptionSelected &&
            const DeepCollectionEquality()
                .equals(other.valueOption, valueOption) &&
            const DeepCollectionEquality()
                .equals(other.numberOfDice, numberOfDice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(valueOption),
      const DeepCollectionEquality().hash(numberOfDice));

  @JsonKey(ignore: true)
  @override
  _$$BetPlacementValueOptionSelectedCopyWith<_$BetPlacementValueOptionSelected>
      get copyWith => __$$BetPlacementValueOptionSelectedCopyWithImpl<
          _$BetPlacementValueOptionSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numberOfDice) diceAvailable,
    required TResult Function(int betOption) betOptionSelected,
    required TResult Function(int valueOption, int numberOfDice)
        valueOptionSelected,
  }) {
    return valueOptionSelected(valueOption, numberOfDice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int numberOfDice)? diceAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
  }) {
    return valueOptionSelected?.call(valueOption, numberOfDice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numberOfDice)? diceAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
    required TResult orElse(),
  }) {
    if (valueOptionSelected != null) {
      return valueOptionSelected(valueOption, numberOfDice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BetPlacementDiceAvailable value) diceAvailable,
    required TResult Function(BetPlacementBetOptionSelected value)
        betOptionSelected,
    required TResult Function(BetPlacementValueOptionSelected value)
        valueOptionSelected,
  }) {
    return valueOptionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BetPlacementDiceAvailable value)? diceAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
  }) {
    return valueOptionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetPlacementDiceAvailable value)? diceAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
    required TResult orElse(),
  }) {
    if (valueOptionSelected != null) {
      return valueOptionSelected(this);
    }
    return orElse();
  }
}

abstract class BetPlacementValueOptionSelected implements BetPlacementEvent {
  const factory BetPlacementValueOptionSelected(
          final int valueOption, final int numberOfDice) =
      _$BetPlacementValueOptionSelected;

  int get valueOption => throw _privateConstructorUsedError;
  int get numberOfDice => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$BetPlacementValueOptionSelectedCopyWith<_$BetPlacementValueOptionSelected>
      get copyWith => throw _privateConstructorUsedError;
}
