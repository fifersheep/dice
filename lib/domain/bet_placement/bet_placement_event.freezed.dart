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
    required TResult Function(
            int gameId, int numberOfDice, int? highestBetQuantity)
        bettingAvailable,
    required TResult Function(int betOption) betOptionSelected,
    required TResult Function(int valueOption, int numberOfDice)
        valueOptionSelected,
    required TResult Function() placeBet,
    required TResult Function() claimLastBet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int gameId, int numberOfDice, int? highestBetQuantity)?
        bettingAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
    TResult Function()? placeBet,
    TResult Function()? claimLastBet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId, int numberOfDice, int? highestBetQuantity)?
        bettingAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
    TResult Function()? placeBet,
    TResult Function()? claimLastBet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BetPlacementBettingAvailable value)
        bettingAvailable,
    required TResult Function(BetPlacementBetOptionSelected value)
        betOptionSelected,
    required TResult Function(BetPlacementValueOptionSelected value)
        valueOptionSelected,
    required TResult Function(BetPlacementBetPlaced value) placeBet,
    required TResult Function(BetPlacementClaimLastBet value) claimLastBet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BetPlacementBettingAvailable value)? bettingAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
    TResult Function(BetPlacementBetPlaced value)? placeBet,
    TResult Function(BetPlacementClaimLastBet value)? claimLastBet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetPlacementBettingAvailable value)? bettingAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
    TResult Function(BetPlacementBetPlaced value)? placeBet,
    TResult Function(BetPlacementClaimLastBet value)? claimLastBet,
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
abstract class _$$BetPlacementBettingAvailableCopyWith<$Res> {
  factory _$$BetPlacementBettingAvailableCopyWith(
          _$BetPlacementBettingAvailable value,
          $Res Function(_$BetPlacementBettingAvailable) then) =
      __$$BetPlacementBettingAvailableCopyWithImpl<$Res>;
  $Res call({int gameId, int numberOfDice, int? highestBetQuantity});
}

/// @nodoc
class __$$BetPlacementBettingAvailableCopyWithImpl<$Res>
    extends _$BetPlacementEventCopyWithImpl<$Res>
    implements _$$BetPlacementBettingAvailableCopyWith<$Res> {
  __$$BetPlacementBettingAvailableCopyWithImpl(
      _$BetPlacementBettingAvailable _value,
      $Res Function(_$BetPlacementBettingAvailable) _then)
      : super(_value, (v) => _then(v as _$BetPlacementBettingAvailable));

  @override
  _$BetPlacementBettingAvailable get _value =>
      super._value as _$BetPlacementBettingAvailable;

  @override
  $Res call({
    Object? gameId = freezed,
    Object? numberOfDice = freezed,
    Object? highestBetQuantity = freezed,
  }) {
    return _then(_$BetPlacementBettingAvailable(
      gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfDice == freezed
          ? _value.numberOfDice
          : numberOfDice // ignore: cast_nullable_to_non_nullable
              as int,
      highestBetQuantity == freezed
          ? _value.highestBetQuantity
          : highestBetQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$BetPlacementBettingAvailable implements BetPlacementBettingAvailable {
  const _$BetPlacementBettingAvailable(
      this.gameId, this.numberOfDice, this.highestBetQuantity);

  @override
  final int gameId;
  @override
  final int numberOfDice;
  @override
  final int? highestBetQuantity;

  @override
  String toString() {
    return 'BetPlacementEvent.bettingAvailable(gameId: $gameId, numberOfDice: $numberOfDice, highestBetQuantity: $highestBetQuantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BetPlacementBettingAvailable &&
            const DeepCollectionEquality().equals(other.gameId, gameId) &&
            const DeepCollectionEquality()
                .equals(other.numberOfDice, numberOfDice) &&
            const DeepCollectionEquality()
                .equals(other.highestBetQuantity, highestBetQuantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gameId),
      const DeepCollectionEquality().hash(numberOfDice),
      const DeepCollectionEquality().hash(highestBetQuantity));

  @JsonKey(ignore: true)
  @override
  _$$BetPlacementBettingAvailableCopyWith<_$BetPlacementBettingAvailable>
      get copyWith => __$$BetPlacementBettingAvailableCopyWithImpl<
          _$BetPlacementBettingAvailable>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int gameId, int numberOfDice, int? highestBetQuantity)
        bettingAvailable,
    required TResult Function(int betOption) betOptionSelected,
    required TResult Function(int valueOption, int numberOfDice)
        valueOptionSelected,
    required TResult Function() placeBet,
    required TResult Function() claimLastBet,
  }) {
    return bettingAvailable(gameId, numberOfDice, highestBetQuantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int gameId, int numberOfDice, int? highestBetQuantity)?
        bettingAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
    TResult Function()? placeBet,
    TResult Function()? claimLastBet,
  }) {
    return bettingAvailable?.call(gameId, numberOfDice, highestBetQuantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId, int numberOfDice, int? highestBetQuantity)?
        bettingAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
    TResult Function()? placeBet,
    TResult Function()? claimLastBet,
    required TResult orElse(),
  }) {
    if (bettingAvailable != null) {
      return bettingAvailable(gameId, numberOfDice, highestBetQuantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BetPlacementBettingAvailable value)
        bettingAvailable,
    required TResult Function(BetPlacementBetOptionSelected value)
        betOptionSelected,
    required TResult Function(BetPlacementValueOptionSelected value)
        valueOptionSelected,
    required TResult Function(BetPlacementBetPlaced value) placeBet,
    required TResult Function(BetPlacementClaimLastBet value) claimLastBet,
  }) {
    return bettingAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BetPlacementBettingAvailable value)? bettingAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
    TResult Function(BetPlacementBetPlaced value)? placeBet,
    TResult Function(BetPlacementClaimLastBet value)? claimLastBet,
  }) {
    return bettingAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetPlacementBettingAvailable value)? bettingAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
    TResult Function(BetPlacementBetPlaced value)? placeBet,
    TResult Function(BetPlacementClaimLastBet value)? claimLastBet,
    required TResult orElse(),
  }) {
    if (bettingAvailable != null) {
      return bettingAvailable(this);
    }
    return orElse();
  }
}

abstract class BetPlacementBettingAvailable implements BetPlacementEvent {
  const factory BetPlacementBettingAvailable(
      final int gameId,
      final int numberOfDice,
      final int? highestBetQuantity) = _$BetPlacementBettingAvailable;

  int get gameId => throw _privateConstructorUsedError;
  int get numberOfDice => throw _privateConstructorUsedError;
  int? get highestBetQuantity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$BetPlacementBettingAvailableCopyWith<_$BetPlacementBettingAvailable>
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
    required TResult Function(
            int gameId, int numberOfDice, int? highestBetQuantity)
        bettingAvailable,
    required TResult Function(int betOption) betOptionSelected,
    required TResult Function(int valueOption, int numberOfDice)
        valueOptionSelected,
    required TResult Function() placeBet,
    required TResult Function() claimLastBet,
  }) {
    return betOptionSelected(betOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int gameId, int numberOfDice, int? highestBetQuantity)?
        bettingAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
    TResult Function()? placeBet,
    TResult Function()? claimLastBet,
  }) {
    return betOptionSelected?.call(betOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId, int numberOfDice, int? highestBetQuantity)?
        bettingAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
    TResult Function()? placeBet,
    TResult Function()? claimLastBet,
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
    required TResult Function(BetPlacementBettingAvailable value)
        bettingAvailable,
    required TResult Function(BetPlacementBetOptionSelected value)
        betOptionSelected,
    required TResult Function(BetPlacementValueOptionSelected value)
        valueOptionSelected,
    required TResult Function(BetPlacementBetPlaced value) placeBet,
    required TResult Function(BetPlacementClaimLastBet value) claimLastBet,
  }) {
    return betOptionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BetPlacementBettingAvailable value)? bettingAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
    TResult Function(BetPlacementBetPlaced value)? placeBet,
    TResult Function(BetPlacementClaimLastBet value)? claimLastBet,
  }) {
    return betOptionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetPlacementBettingAvailable value)? bettingAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
    TResult Function(BetPlacementBetPlaced value)? placeBet,
    TResult Function(BetPlacementClaimLastBet value)? claimLastBet,
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
    required TResult Function(
            int gameId, int numberOfDice, int? highestBetQuantity)
        bettingAvailable,
    required TResult Function(int betOption) betOptionSelected,
    required TResult Function(int valueOption, int numberOfDice)
        valueOptionSelected,
    required TResult Function() placeBet,
    required TResult Function() claimLastBet,
  }) {
    return valueOptionSelected(valueOption, numberOfDice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int gameId, int numberOfDice, int? highestBetQuantity)?
        bettingAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
    TResult Function()? placeBet,
    TResult Function()? claimLastBet,
  }) {
    return valueOptionSelected?.call(valueOption, numberOfDice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId, int numberOfDice, int? highestBetQuantity)?
        bettingAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
    TResult Function()? placeBet,
    TResult Function()? claimLastBet,
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
    required TResult Function(BetPlacementBettingAvailable value)
        bettingAvailable,
    required TResult Function(BetPlacementBetOptionSelected value)
        betOptionSelected,
    required TResult Function(BetPlacementValueOptionSelected value)
        valueOptionSelected,
    required TResult Function(BetPlacementBetPlaced value) placeBet,
    required TResult Function(BetPlacementClaimLastBet value) claimLastBet,
  }) {
    return valueOptionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BetPlacementBettingAvailable value)? bettingAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
    TResult Function(BetPlacementBetPlaced value)? placeBet,
    TResult Function(BetPlacementClaimLastBet value)? claimLastBet,
  }) {
    return valueOptionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetPlacementBettingAvailable value)? bettingAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
    TResult Function(BetPlacementBetPlaced value)? placeBet,
    TResult Function(BetPlacementClaimLastBet value)? claimLastBet,
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

/// @nodoc
abstract class _$$BetPlacementBetPlacedCopyWith<$Res> {
  factory _$$BetPlacementBetPlacedCopyWith(_$BetPlacementBetPlaced value,
          $Res Function(_$BetPlacementBetPlaced) then) =
      __$$BetPlacementBetPlacedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BetPlacementBetPlacedCopyWithImpl<$Res>
    extends _$BetPlacementEventCopyWithImpl<$Res>
    implements _$$BetPlacementBetPlacedCopyWith<$Res> {
  __$$BetPlacementBetPlacedCopyWithImpl(_$BetPlacementBetPlaced _value,
      $Res Function(_$BetPlacementBetPlaced) _then)
      : super(_value, (v) => _then(v as _$BetPlacementBetPlaced));

  @override
  _$BetPlacementBetPlaced get _value => super._value as _$BetPlacementBetPlaced;
}

/// @nodoc

class _$BetPlacementBetPlaced implements BetPlacementBetPlaced {
  const _$BetPlacementBetPlaced();

  @override
  String toString() {
    return 'BetPlacementEvent.placeBet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BetPlacementBetPlaced);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int gameId, int numberOfDice, int? highestBetQuantity)
        bettingAvailable,
    required TResult Function(int betOption) betOptionSelected,
    required TResult Function(int valueOption, int numberOfDice)
        valueOptionSelected,
    required TResult Function() placeBet,
    required TResult Function() claimLastBet,
  }) {
    return placeBet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int gameId, int numberOfDice, int? highestBetQuantity)?
        bettingAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
    TResult Function()? placeBet,
    TResult Function()? claimLastBet,
  }) {
    return placeBet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId, int numberOfDice, int? highestBetQuantity)?
        bettingAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
    TResult Function()? placeBet,
    TResult Function()? claimLastBet,
    required TResult orElse(),
  }) {
    if (placeBet != null) {
      return placeBet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BetPlacementBettingAvailable value)
        bettingAvailable,
    required TResult Function(BetPlacementBetOptionSelected value)
        betOptionSelected,
    required TResult Function(BetPlacementValueOptionSelected value)
        valueOptionSelected,
    required TResult Function(BetPlacementBetPlaced value) placeBet,
    required TResult Function(BetPlacementClaimLastBet value) claimLastBet,
  }) {
    return placeBet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BetPlacementBettingAvailable value)? bettingAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
    TResult Function(BetPlacementBetPlaced value)? placeBet,
    TResult Function(BetPlacementClaimLastBet value)? claimLastBet,
  }) {
    return placeBet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetPlacementBettingAvailable value)? bettingAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
    TResult Function(BetPlacementBetPlaced value)? placeBet,
    TResult Function(BetPlacementClaimLastBet value)? claimLastBet,
    required TResult orElse(),
  }) {
    if (placeBet != null) {
      return placeBet(this);
    }
    return orElse();
  }
}

abstract class BetPlacementBetPlaced implements BetPlacementEvent {
  const factory BetPlacementBetPlaced() = _$BetPlacementBetPlaced;
}

/// @nodoc
abstract class _$$BetPlacementClaimLastBetCopyWith<$Res> {
  factory _$$BetPlacementClaimLastBetCopyWith(_$BetPlacementClaimLastBet value,
          $Res Function(_$BetPlacementClaimLastBet) then) =
      __$$BetPlacementClaimLastBetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BetPlacementClaimLastBetCopyWithImpl<$Res>
    extends _$BetPlacementEventCopyWithImpl<$Res>
    implements _$$BetPlacementClaimLastBetCopyWith<$Res> {
  __$$BetPlacementClaimLastBetCopyWithImpl(_$BetPlacementClaimLastBet _value,
      $Res Function(_$BetPlacementClaimLastBet) _then)
      : super(_value, (v) => _then(v as _$BetPlacementClaimLastBet));

  @override
  _$BetPlacementClaimLastBet get _value =>
      super._value as _$BetPlacementClaimLastBet;
}

/// @nodoc

class _$BetPlacementClaimLastBet implements BetPlacementClaimLastBet {
  const _$BetPlacementClaimLastBet();

  @override
  String toString() {
    return 'BetPlacementEvent.claimLastBet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BetPlacementClaimLastBet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int gameId, int numberOfDice, int? highestBetQuantity)
        bettingAvailable,
    required TResult Function(int betOption) betOptionSelected,
    required TResult Function(int valueOption, int numberOfDice)
        valueOptionSelected,
    required TResult Function() placeBet,
    required TResult Function() claimLastBet,
  }) {
    return claimLastBet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int gameId, int numberOfDice, int? highestBetQuantity)?
        bettingAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
    TResult Function()? placeBet,
    TResult Function()? claimLastBet,
  }) {
    return claimLastBet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId, int numberOfDice, int? highestBetQuantity)?
        bettingAvailable,
    TResult Function(int betOption)? betOptionSelected,
    TResult Function(int valueOption, int numberOfDice)? valueOptionSelected,
    TResult Function()? placeBet,
    TResult Function()? claimLastBet,
    required TResult orElse(),
  }) {
    if (claimLastBet != null) {
      return claimLastBet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BetPlacementBettingAvailable value)
        bettingAvailable,
    required TResult Function(BetPlacementBetOptionSelected value)
        betOptionSelected,
    required TResult Function(BetPlacementValueOptionSelected value)
        valueOptionSelected,
    required TResult Function(BetPlacementBetPlaced value) placeBet,
    required TResult Function(BetPlacementClaimLastBet value) claimLastBet,
  }) {
    return claimLastBet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BetPlacementBettingAvailable value)? bettingAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
    TResult Function(BetPlacementBetPlaced value)? placeBet,
    TResult Function(BetPlacementClaimLastBet value)? claimLastBet,
  }) {
    return claimLastBet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetPlacementBettingAvailable value)? bettingAvailable,
    TResult Function(BetPlacementBetOptionSelected value)? betOptionSelected,
    TResult Function(BetPlacementValueOptionSelected value)?
        valueOptionSelected,
    TResult Function(BetPlacementBetPlaced value)? placeBet,
    TResult Function(BetPlacementClaimLastBet value)? claimLastBet,
    required TResult orElse(),
  }) {
    if (claimLastBet != null) {
      return claimLastBet(this);
    }
    return orElse();
  }
}

abstract class BetPlacementClaimLastBet implements BetPlacementEvent {
  const factory BetPlacementClaimLastBet() = _$BetPlacementClaimLastBet;
}
