// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bet_placement_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BetPlacementState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int gameId,
            int numberOfDice,
            int? highestBetQuantity,
            List<int> betOptions,
            List<int> valueOptions,
            int? selectedBetOption,
            int? selectedValueOption,
            String placeBetLabel)
        payload,
    required TResult Function() placingBet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int gameId,
            int numberOfDice,
            int? highestBetQuantity,
            List<int> betOptions,
            List<int> valueOptions,
            int? selectedBetOption,
            int? selectedValueOption,
            String placeBetLabel)?
        payload,
    TResult Function()? placingBet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int gameId,
            int numberOfDice,
            int? highestBetQuantity,
            List<int> betOptions,
            List<int> valueOptions,
            int? selectedBetOption,
            int? selectedValueOption,
            String placeBetLabel)?
        payload,
    TResult Function()? placingBet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BetPlacementLoading value) loading,
    required TResult Function(BetPlacementPayload value) payload,
    required TResult Function(BetPlacementPlacingBet value) placingBet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BetPlacementLoading value)? loading,
    TResult Function(BetPlacementPayload value)? payload,
    TResult Function(BetPlacementPlacingBet value)? placingBet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetPlacementLoading value)? loading,
    TResult Function(BetPlacementPayload value)? payload,
    TResult Function(BetPlacementPlacingBet value)? placingBet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BetPlacementStateCopyWith<$Res> {
  factory $BetPlacementStateCopyWith(
          BetPlacementState value, $Res Function(BetPlacementState) then) =
      _$BetPlacementStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BetPlacementStateCopyWithImpl<$Res>
    implements $BetPlacementStateCopyWith<$Res> {
  _$BetPlacementStateCopyWithImpl(this._value, this._then);

  final BetPlacementState _value;
  // ignore: unused_field
  final $Res Function(BetPlacementState) _then;
}

/// @nodoc
abstract class _$$BetPlacementLoadingCopyWith<$Res> {
  factory _$$BetPlacementLoadingCopyWith(_$BetPlacementLoading value,
          $Res Function(_$BetPlacementLoading) then) =
      __$$BetPlacementLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BetPlacementLoadingCopyWithImpl<$Res>
    extends _$BetPlacementStateCopyWithImpl<$Res>
    implements _$$BetPlacementLoadingCopyWith<$Res> {
  __$$BetPlacementLoadingCopyWithImpl(
      _$BetPlacementLoading _value, $Res Function(_$BetPlacementLoading) _then)
      : super(_value, (v) => _then(v as _$BetPlacementLoading));

  @override
  _$BetPlacementLoading get _value => super._value as _$BetPlacementLoading;
}

/// @nodoc

class _$BetPlacementLoading implements BetPlacementLoading {
  const _$BetPlacementLoading();

  @override
  String toString() {
    return 'BetPlacementState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BetPlacementLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int gameId,
            int numberOfDice,
            int? highestBetQuantity,
            List<int> betOptions,
            List<int> valueOptions,
            int? selectedBetOption,
            int? selectedValueOption,
            String placeBetLabel)
        payload,
    required TResult Function() placingBet,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int gameId,
            int numberOfDice,
            int? highestBetQuantity,
            List<int> betOptions,
            List<int> valueOptions,
            int? selectedBetOption,
            int? selectedValueOption,
            String placeBetLabel)?
        payload,
    TResult Function()? placingBet,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int gameId,
            int numberOfDice,
            int? highestBetQuantity,
            List<int> betOptions,
            List<int> valueOptions,
            int? selectedBetOption,
            int? selectedValueOption,
            String placeBetLabel)?
        payload,
    TResult Function()? placingBet,
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
    required TResult Function(BetPlacementLoading value) loading,
    required TResult Function(BetPlacementPayload value) payload,
    required TResult Function(BetPlacementPlacingBet value) placingBet,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BetPlacementLoading value)? loading,
    TResult Function(BetPlacementPayload value)? payload,
    TResult Function(BetPlacementPlacingBet value)? placingBet,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetPlacementLoading value)? loading,
    TResult Function(BetPlacementPayload value)? payload,
    TResult Function(BetPlacementPlacingBet value)? placingBet,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BetPlacementLoading implements BetPlacementState {
  const factory BetPlacementLoading() = _$BetPlacementLoading;
}

/// @nodoc
abstract class _$$BetPlacementPayloadCopyWith<$Res> {
  factory _$$BetPlacementPayloadCopyWith(_$BetPlacementPayload value,
          $Res Function(_$BetPlacementPayload) then) =
      __$$BetPlacementPayloadCopyWithImpl<$Res>;
  $Res call(
      {int gameId,
      int numberOfDice,
      int? highestBetQuantity,
      List<int> betOptions,
      List<int> valueOptions,
      int? selectedBetOption,
      int? selectedValueOption,
      String placeBetLabel});
}

/// @nodoc
class __$$BetPlacementPayloadCopyWithImpl<$Res>
    extends _$BetPlacementStateCopyWithImpl<$Res>
    implements _$$BetPlacementPayloadCopyWith<$Res> {
  __$$BetPlacementPayloadCopyWithImpl(
      _$BetPlacementPayload _value, $Res Function(_$BetPlacementPayload) _then)
      : super(_value, (v) => _then(v as _$BetPlacementPayload));

  @override
  _$BetPlacementPayload get _value => super._value as _$BetPlacementPayload;

  @override
  $Res call({
    Object? gameId = freezed,
    Object? numberOfDice = freezed,
    Object? highestBetQuantity = freezed,
    Object? betOptions = freezed,
    Object? valueOptions = freezed,
    Object? selectedBetOption = freezed,
    Object? selectedValueOption = freezed,
    Object? placeBetLabel = freezed,
  }) {
    return _then(_$BetPlacementPayload(
      gameId: gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfDice: numberOfDice == freezed
          ? _value.numberOfDice
          : numberOfDice // ignore: cast_nullable_to_non_nullable
              as int,
      highestBetQuantity: highestBetQuantity == freezed
          ? _value.highestBetQuantity
          : highestBetQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      betOptions: betOptions == freezed
          ? _value._betOptions
          : betOptions // ignore: cast_nullable_to_non_nullable
              as List<int>,
      valueOptions: valueOptions == freezed
          ? _value._valueOptions
          : valueOptions // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedBetOption: selectedBetOption == freezed
          ? _value.selectedBetOption
          : selectedBetOption // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedValueOption: selectedValueOption == freezed
          ? _value.selectedValueOption
          : selectedValueOption // ignore: cast_nullable_to_non_nullable
              as int?,
      placeBetLabel: placeBetLabel == freezed
          ? _value.placeBetLabel
          : placeBetLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BetPlacementPayload implements BetPlacementPayload {
  const _$BetPlacementPayload(
      {required this.gameId,
      required this.numberOfDice,
      required this.highestBetQuantity,
      required final List<int> betOptions,
      required final List<int> valueOptions,
      required this.selectedBetOption,
      required this.selectedValueOption,
      required this.placeBetLabel})
      : _betOptions = betOptions,
        _valueOptions = valueOptions;

  @override
  final int gameId;
  @override
  final int numberOfDice;
  @override
  final int? highestBetQuantity;
  final List<int> _betOptions;
  @override
  List<int> get betOptions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_betOptions);
  }

  final List<int> _valueOptions;
  @override
  List<int> get valueOptions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_valueOptions);
  }

  @override
  final int? selectedBetOption;
  @override
  final int? selectedValueOption;
  @override
  final String placeBetLabel;

  @override
  String toString() {
    return 'BetPlacementState.payload(gameId: $gameId, numberOfDice: $numberOfDice, highestBetQuantity: $highestBetQuantity, betOptions: $betOptions, valueOptions: $valueOptions, selectedBetOption: $selectedBetOption, selectedValueOption: $selectedValueOption, placeBetLabel: $placeBetLabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BetPlacementPayload &&
            const DeepCollectionEquality().equals(other.gameId, gameId) &&
            const DeepCollectionEquality()
                .equals(other.numberOfDice, numberOfDice) &&
            const DeepCollectionEquality()
                .equals(other.highestBetQuantity, highestBetQuantity) &&
            const DeepCollectionEquality()
                .equals(other._betOptions, _betOptions) &&
            const DeepCollectionEquality()
                .equals(other._valueOptions, _valueOptions) &&
            const DeepCollectionEquality()
                .equals(other.selectedBetOption, selectedBetOption) &&
            const DeepCollectionEquality()
                .equals(other.selectedValueOption, selectedValueOption) &&
            const DeepCollectionEquality()
                .equals(other.placeBetLabel, placeBetLabel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gameId),
      const DeepCollectionEquality().hash(numberOfDice),
      const DeepCollectionEquality().hash(highestBetQuantity),
      const DeepCollectionEquality().hash(_betOptions),
      const DeepCollectionEquality().hash(_valueOptions),
      const DeepCollectionEquality().hash(selectedBetOption),
      const DeepCollectionEquality().hash(selectedValueOption),
      const DeepCollectionEquality().hash(placeBetLabel));

  @JsonKey(ignore: true)
  @override
  _$$BetPlacementPayloadCopyWith<_$BetPlacementPayload> get copyWith =>
      __$$BetPlacementPayloadCopyWithImpl<_$BetPlacementPayload>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int gameId,
            int numberOfDice,
            int? highestBetQuantity,
            List<int> betOptions,
            List<int> valueOptions,
            int? selectedBetOption,
            int? selectedValueOption,
            String placeBetLabel)
        payload,
    required TResult Function() placingBet,
  }) {
    return payload(gameId, numberOfDice, highestBetQuantity, betOptions,
        valueOptions, selectedBetOption, selectedValueOption, placeBetLabel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int gameId,
            int numberOfDice,
            int? highestBetQuantity,
            List<int> betOptions,
            List<int> valueOptions,
            int? selectedBetOption,
            int? selectedValueOption,
            String placeBetLabel)?
        payload,
    TResult Function()? placingBet,
  }) {
    return payload?.call(gameId, numberOfDice, highestBetQuantity, betOptions,
        valueOptions, selectedBetOption, selectedValueOption, placeBetLabel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int gameId,
            int numberOfDice,
            int? highestBetQuantity,
            List<int> betOptions,
            List<int> valueOptions,
            int? selectedBetOption,
            int? selectedValueOption,
            String placeBetLabel)?
        payload,
    TResult Function()? placingBet,
    required TResult orElse(),
  }) {
    if (payload != null) {
      return payload(gameId, numberOfDice, highestBetQuantity, betOptions,
          valueOptions, selectedBetOption, selectedValueOption, placeBetLabel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BetPlacementLoading value) loading,
    required TResult Function(BetPlacementPayload value) payload,
    required TResult Function(BetPlacementPlacingBet value) placingBet,
  }) {
    return payload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BetPlacementLoading value)? loading,
    TResult Function(BetPlacementPayload value)? payload,
    TResult Function(BetPlacementPlacingBet value)? placingBet,
  }) {
    return payload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetPlacementLoading value)? loading,
    TResult Function(BetPlacementPayload value)? payload,
    TResult Function(BetPlacementPlacingBet value)? placingBet,
    required TResult orElse(),
  }) {
    if (payload != null) {
      return payload(this);
    }
    return orElse();
  }
}

abstract class BetPlacementPayload implements BetPlacementState {
  const factory BetPlacementPayload(
      {required final int gameId,
      required final int numberOfDice,
      required final int? highestBetQuantity,
      required final List<int> betOptions,
      required final List<int> valueOptions,
      required final int? selectedBetOption,
      required final int? selectedValueOption,
      required final String placeBetLabel}) = _$BetPlacementPayload;

  int get gameId => throw _privateConstructorUsedError;
  int get numberOfDice => throw _privateConstructorUsedError;
  int? get highestBetQuantity => throw _privateConstructorUsedError;
  List<int> get betOptions => throw _privateConstructorUsedError;
  List<int> get valueOptions => throw _privateConstructorUsedError;
  int? get selectedBetOption => throw _privateConstructorUsedError;
  int? get selectedValueOption => throw _privateConstructorUsedError;
  String get placeBetLabel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$BetPlacementPayloadCopyWith<_$BetPlacementPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BetPlacementPlacingBetCopyWith<$Res> {
  factory _$$BetPlacementPlacingBetCopyWith(_$BetPlacementPlacingBet value,
          $Res Function(_$BetPlacementPlacingBet) then) =
      __$$BetPlacementPlacingBetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BetPlacementPlacingBetCopyWithImpl<$Res>
    extends _$BetPlacementStateCopyWithImpl<$Res>
    implements _$$BetPlacementPlacingBetCopyWith<$Res> {
  __$$BetPlacementPlacingBetCopyWithImpl(_$BetPlacementPlacingBet _value,
      $Res Function(_$BetPlacementPlacingBet) _then)
      : super(_value, (v) => _then(v as _$BetPlacementPlacingBet));

  @override
  _$BetPlacementPlacingBet get _value =>
      super._value as _$BetPlacementPlacingBet;
}

/// @nodoc

class _$BetPlacementPlacingBet implements BetPlacementPlacingBet {
  const _$BetPlacementPlacingBet();

  @override
  String toString() {
    return 'BetPlacementState.placingBet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BetPlacementPlacingBet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int gameId,
            int numberOfDice,
            int? highestBetQuantity,
            List<int> betOptions,
            List<int> valueOptions,
            int? selectedBetOption,
            int? selectedValueOption,
            String placeBetLabel)
        payload,
    required TResult Function() placingBet,
  }) {
    return placingBet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int gameId,
            int numberOfDice,
            int? highestBetQuantity,
            List<int> betOptions,
            List<int> valueOptions,
            int? selectedBetOption,
            int? selectedValueOption,
            String placeBetLabel)?
        payload,
    TResult Function()? placingBet,
  }) {
    return placingBet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int gameId,
            int numberOfDice,
            int? highestBetQuantity,
            List<int> betOptions,
            List<int> valueOptions,
            int? selectedBetOption,
            int? selectedValueOption,
            String placeBetLabel)?
        payload,
    TResult Function()? placingBet,
    required TResult orElse(),
  }) {
    if (placingBet != null) {
      return placingBet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BetPlacementLoading value) loading,
    required TResult Function(BetPlacementPayload value) payload,
    required TResult Function(BetPlacementPlacingBet value) placingBet,
  }) {
    return placingBet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BetPlacementLoading value)? loading,
    TResult Function(BetPlacementPayload value)? payload,
    TResult Function(BetPlacementPlacingBet value)? placingBet,
  }) {
    return placingBet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BetPlacementLoading value)? loading,
    TResult Function(BetPlacementPayload value)? payload,
    TResult Function(BetPlacementPlacingBet value)? placingBet,
    required TResult orElse(),
  }) {
    if (placingBet != null) {
      return placingBet(this);
    }
    return orElse();
  }
}

abstract class BetPlacementPlacingBet implements BetPlacementState {
  const factory BetPlacementPlacingBet() = _$BetPlacementPlacingBet;
}
