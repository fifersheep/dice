// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'player_selection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerSelectionStateTearOff {
  const _$PlayerSelectionStateTearOff();

  PlayerNameInvalid nameInvalid() {
    return const PlayerNameInvalid();
  }

  PlayerNameAvailable nameAvailable(String name) {
    return PlayerNameAvailable(
      name,
    );
  }

  PlayerNameUnavailable nameUnavailable(String name) {
    return PlayerNameUnavailable(
      name,
    );
  }

  CheckingPlayerName checkingName(String name) {
    return CheckingPlayerName(
      name,
    );
  }

  PlayerNameChange nameChange(String name) {
    return PlayerNameChange(
      name,
    );
  }

  PlayerCreated playerCreated(String id) {
    return PlayerCreated(
      id,
    );
  }

  PlayerExists playerExists(String id) {
    return PlayerExists(
      id,
    );
  }
}

/// @nodoc
const $PlayerSelectionState = _$PlayerSelectionStateTearOff();

/// @nodoc
mixin _$PlayerSelectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nameInvalid,
    required TResult Function(String name) nameAvailable,
    required TResult Function(String name) nameUnavailable,
    required TResult Function(String name) checkingName,
    required TResult Function(String name) nameChange,
    required TResult Function(String id) playerCreated,
    required TResult Function(String id) playerExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nameInvalid,
    TResult Function(String name)? nameAvailable,
    TResult Function(String name)? nameUnavailable,
    TResult Function(String name)? checkingName,
    TResult Function(String name)? nameChange,
    TResult Function(String id)? playerCreated,
    TResult Function(String id)? playerExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNameInvalid value) nameInvalid,
    required TResult Function(PlayerNameAvailable value) nameAvailable,
    required TResult Function(PlayerNameUnavailable value) nameUnavailable,
    required TResult Function(CheckingPlayerName value) checkingName,
    required TResult Function(PlayerNameChange value) nameChange,
    required TResult Function(PlayerCreated value) playerCreated,
    required TResult Function(PlayerExists value) playerExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNameInvalid value)? nameInvalid,
    TResult Function(PlayerNameAvailable value)? nameAvailable,
    TResult Function(PlayerNameUnavailable value)? nameUnavailable,
    TResult Function(CheckingPlayerName value)? checkingName,
    TResult Function(PlayerNameChange value)? nameChange,
    TResult Function(PlayerCreated value)? playerCreated,
    TResult Function(PlayerExists value)? playerExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerSelectionStateCopyWith<$Res> {
  factory $PlayerSelectionStateCopyWith(PlayerSelectionState value,
          $Res Function(PlayerSelectionState) then) =
      _$PlayerSelectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerSelectionStateCopyWithImpl<$Res>
    implements $PlayerSelectionStateCopyWith<$Res> {
  _$PlayerSelectionStateCopyWithImpl(this._value, this._then);

  final PlayerSelectionState _value;
  // ignore: unused_field
  final $Res Function(PlayerSelectionState) _then;
}

/// @nodoc
abstract class $PlayerNameInvalidCopyWith<$Res> {
  factory $PlayerNameInvalidCopyWith(
          PlayerNameInvalid value, $Res Function(PlayerNameInvalid) then) =
      _$PlayerNameInvalidCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerNameInvalidCopyWithImpl<$Res>
    extends _$PlayerSelectionStateCopyWithImpl<$Res>
    implements $PlayerNameInvalidCopyWith<$Res> {
  _$PlayerNameInvalidCopyWithImpl(
      PlayerNameInvalid _value, $Res Function(PlayerNameInvalid) _then)
      : super(_value, (v) => _then(v as PlayerNameInvalid));

  @override
  PlayerNameInvalid get _value => super._value as PlayerNameInvalid;
}

/// @nodoc

class _$PlayerNameInvalid implements PlayerNameInvalid {
  const _$PlayerNameInvalid();

  @override
  String toString() {
    return 'PlayerSelectionState.nameInvalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlayerNameInvalid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nameInvalid,
    required TResult Function(String name) nameAvailable,
    required TResult Function(String name) nameUnavailable,
    required TResult Function(String name) checkingName,
    required TResult Function(String name) nameChange,
    required TResult Function(String id) playerCreated,
    required TResult Function(String id) playerExists,
  }) {
    return nameInvalid();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nameInvalid,
    TResult Function(String name)? nameAvailable,
    TResult Function(String name)? nameUnavailable,
    TResult Function(String name)? checkingName,
    TResult Function(String name)? nameChange,
    TResult Function(String id)? playerCreated,
    TResult Function(String id)? playerExists,
    required TResult orElse(),
  }) {
    if (nameInvalid != null) {
      return nameInvalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNameInvalid value) nameInvalid,
    required TResult Function(PlayerNameAvailable value) nameAvailable,
    required TResult Function(PlayerNameUnavailable value) nameUnavailable,
    required TResult Function(CheckingPlayerName value) checkingName,
    required TResult Function(PlayerNameChange value) nameChange,
    required TResult Function(PlayerCreated value) playerCreated,
    required TResult Function(PlayerExists value) playerExists,
  }) {
    return nameInvalid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNameInvalid value)? nameInvalid,
    TResult Function(PlayerNameAvailable value)? nameAvailable,
    TResult Function(PlayerNameUnavailable value)? nameUnavailable,
    TResult Function(CheckingPlayerName value)? checkingName,
    TResult Function(PlayerNameChange value)? nameChange,
    TResult Function(PlayerCreated value)? playerCreated,
    TResult Function(PlayerExists value)? playerExists,
    required TResult orElse(),
  }) {
    if (nameInvalid != null) {
      return nameInvalid(this);
    }
    return orElse();
  }
}

abstract class PlayerNameInvalid implements PlayerSelectionState {
  const factory PlayerNameInvalid() = _$PlayerNameInvalid;
}

/// @nodoc
abstract class $PlayerNameAvailableCopyWith<$Res> {
  factory $PlayerNameAvailableCopyWith(
          PlayerNameAvailable value, $Res Function(PlayerNameAvailable) then) =
      _$PlayerNameAvailableCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$PlayerNameAvailableCopyWithImpl<$Res>
    extends _$PlayerSelectionStateCopyWithImpl<$Res>
    implements $PlayerNameAvailableCopyWith<$Res> {
  _$PlayerNameAvailableCopyWithImpl(
      PlayerNameAvailable _value, $Res Function(PlayerNameAvailable) _then)
      : super(_value, (v) => _then(v as PlayerNameAvailable));

  @override
  PlayerNameAvailable get _value => super._value as PlayerNameAvailable;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(PlayerNameAvailable(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerNameAvailable implements PlayerNameAvailable {
  const _$PlayerNameAvailable(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'PlayerSelectionState.nameAvailable(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayerNameAvailable &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $PlayerNameAvailableCopyWith<PlayerNameAvailable> get copyWith =>
      _$PlayerNameAvailableCopyWithImpl<PlayerNameAvailable>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nameInvalid,
    required TResult Function(String name) nameAvailable,
    required TResult Function(String name) nameUnavailable,
    required TResult Function(String name) checkingName,
    required TResult Function(String name) nameChange,
    required TResult Function(String id) playerCreated,
    required TResult Function(String id) playerExists,
  }) {
    return nameAvailable(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nameInvalid,
    TResult Function(String name)? nameAvailable,
    TResult Function(String name)? nameUnavailable,
    TResult Function(String name)? checkingName,
    TResult Function(String name)? nameChange,
    TResult Function(String id)? playerCreated,
    TResult Function(String id)? playerExists,
    required TResult orElse(),
  }) {
    if (nameAvailable != null) {
      return nameAvailable(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNameInvalid value) nameInvalid,
    required TResult Function(PlayerNameAvailable value) nameAvailable,
    required TResult Function(PlayerNameUnavailable value) nameUnavailable,
    required TResult Function(CheckingPlayerName value) checkingName,
    required TResult Function(PlayerNameChange value) nameChange,
    required TResult Function(PlayerCreated value) playerCreated,
    required TResult Function(PlayerExists value) playerExists,
  }) {
    return nameAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNameInvalid value)? nameInvalid,
    TResult Function(PlayerNameAvailable value)? nameAvailable,
    TResult Function(PlayerNameUnavailable value)? nameUnavailable,
    TResult Function(CheckingPlayerName value)? checkingName,
    TResult Function(PlayerNameChange value)? nameChange,
    TResult Function(PlayerCreated value)? playerCreated,
    TResult Function(PlayerExists value)? playerExists,
    required TResult orElse(),
  }) {
    if (nameAvailable != null) {
      return nameAvailable(this);
    }
    return orElse();
  }
}

abstract class PlayerNameAvailable implements PlayerSelectionState {
  const factory PlayerNameAvailable(String name) = _$PlayerNameAvailable;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerNameAvailableCopyWith<PlayerNameAvailable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerNameUnavailableCopyWith<$Res> {
  factory $PlayerNameUnavailableCopyWith(PlayerNameUnavailable value,
          $Res Function(PlayerNameUnavailable) then) =
      _$PlayerNameUnavailableCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$PlayerNameUnavailableCopyWithImpl<$Res>
    extends _$PlayerSelectionStateCopyWithImpl<$Res>
    implements $PlayerNameUnavailableCopyWith<$Res> {
  _$PlayerNameUnavailableCopyWithImpl(
      PlayerNameUnavailable _value, $Res Function(PlayerNameUnavailable) _then)
      : super(_value, (v) => _then(v as PlayerNameUnavailable));

  @override
  PlayerNameUnavailable get _value => super._value as PlayerNameUnavailable;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(PlayerNameUnavailable(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerNameUnavailable implements PlayerNameUnavailable {
  const _$PlayerNameUnavailable(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'PlayerSelectionState.nameUnavailable(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayerNameUnavailable &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $PlayerNameUnavailableCopyWith<PlayerNameUnavailable> get copyWith =>
      _$PlayerNameUnavailableCopyWithImpl<PlayerNameUnavailable>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nameInvalid,
    required TResult Function(String name) nameAvailable,
    required TResult Function(String name) nameUnavailable,
    required TResult Function(String name) checkingName,
    required TResult Function(String name) nameChange,
    required TResult Function(String id) playerCreated,
    required TResult Function(String id) playerExists,
  }) {
    return nameUnavailable(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nameInvalid,
    TResult Function(String name)? nameAvailable,
    TResult Function(String name)? nameUnavailable,
    TResult Function(String name)? checkingName,
    TResult Function(String name)? nameChange,
    TResult Function(String id)? playerCreated,
    TResult Function(String id)? playerExists,
    required TResult orElse(),
  }) {
    if (nameUnavailable != null) {
      return nameUnavailable(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNameInvalid value) nameInvalid,
    required TResult Function(PlayerNameAvailable value) nameAvailable,
    required TResult Function(PlayerNameUnavailable value) nameUnavailable,
    required TResult Function(CheckingPlayerName value) checkingName,
    required TResult Function(PlayerNameChange value) nameChange,
    required TResult Function(PlayerCreated value) playerCreated,
    required TResult Function(PlayerExists value) playerExists,
  }) {
    return nameUnavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNameInvalid value)? nameInvalid,
    TResult Function(PlayerNameAvailable value)? nameAvailable,
    TResult Function(PlayerNameUnavailable value)? nameUnavailable,
    TResult Function(CheckingPlayerName value)? checkingName,
    TResult Function(PlayerNameChange value)? nameChange,
    TResult Function(PlayerCreated value)? playerCreated,
    TResult Function(PlayerExists value)? playerExists,
    required TResult orElse(),
  }) {
    if (nameUnavailable != null) {
      return nameUnavailable(this);
    }
    return orElse();
  }
}

abstract class PlayerNameUnavailable implements PlayerSelectionState {
  const factory PlayerNameUnavailable(String name) = _$PlayerNameUnavailable;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerNameUnavailableCopyWith<PlayerNameUnavailable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckingPlayerNameCopyWith<$Res> {
  factory $CheckingPlayerNameCopyWith(
          CheckingPlayerName value, $Res Function(CheckingPlayerName) then) =
      _$CheckingPlayerNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$CheckingPlayerNameCopyWithImpl<$Res>
    extends _$PlayerSelectionStateCopyWithImpl<$Res>
    implements $CheckingPlayerNameCopyWith<$Res> {
  _$CheckingPlayerNameCopyWithImpl(
      CheckingPlayerName _value, $Res Function(CheckingPlayerName) _then)
      : super(_value, (v) => _then(v as CheckingPlayerName));

  @override
  CheckingPlayerName get _value => super._value as CheckingPlayerName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(CheckingPlayerName(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckingPlayerName implements CheckingPlayerName {
  const _$CheckingPlayerName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'PlayerSelectionState.checkingName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CheckingPlayerName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $CheckingPlayerNameCopyWith<CheckingPlayerName> get copyWith =>
      _$CheckingPlayerNameCopyWithImpl<CheckingPlayerName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nameInvalid,
    required TResult Function(String name) nameAvailable,
    required TResult Function(String name) nameUnavailable,
    required TResult Function(String name) checkingName,
    required TResult Function(String name) nameChange,
    required TResult Function(String id) playerCreated,
    required TResult Function(String id) playerExists,
  }) {
    return checkingName(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nameInvalid,
    TResult Function(String name)? nameAvailable,
    TResult Function(String name)? nameUnavailable,
    TResult Function(String name)? checkingName,
    TResult Function(String name)? nameChange,
    TResult Function(String id)? playerCreated,
    TResult Function(String id)? playerExists,
    required TResult orElse(),
  }) {
    if (checkingName != null) {
      return checkingName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNameInvalid value) nameInvalid,
    required TResult Function(PlayerNameAvailable value) nameAvailable,
    required TResult Function(PlayerNameUnavailable value) nameUnavailable,
    required TResult Function(CheckingPlayerName value) checkingName,
    required TResult Function(PlayerNameChange value) nameChange,
    required TResult Function(PlayerCreated value) playerCreated,
    required TResult Function(PlayerExists value) playerExists,
  }) {
    return checkingName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNameInvalid value)? nameInvalid,
    TResult Function(PlayerNameAvailable value)? nameAvailable,
    TResult Function(PlayerNameUnavailable value)? nameUnavailable,
    TResult Function(CheckingPlayerName value)? checkingName,
    TResult Function(PlayerNameChange value)? nameChange,
    TResult Function(PlayerCreated value)? playerCreated,
    TResult Function(PlayerExists value)? playerExists,
    required TResult orElse(),
  }) {
    if (checkingName != null) {
      return checkingName(this);
    }
    return orElse();
  }
}

abstract class CheckingPlayerName implements PlayerSelectionState {
  const factory CheckingPlayerName(String name) = _$CheckingPlayerName;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckingPlayerNameCopyWith<CheckingPlayerName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerNameChangeCopyWith<$Res> {
  factory $PlayerNameChangeCopyWith(
          PlayerNameChange value, $Res Function(PlayerNameChange) then) =
      _$PlayerNameChangeCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$PlayerNameChangeCopyWithImpl<$Res>
    extends _$PlayerSelectionStateCopyWithImpl<$Res>
    implements $PlayerNameChangeCopyWith<$Res> {
  _$PlayerNameChangeCopyWithImpl(
      PlayerNameChange _value, $Res Function(PlayerNameChange) _then)
      : super(_value, (v) => _then(v as PlayerNameChange));

  @override
  PlayerNameChange get _value => super._value as PlayerNameChange;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(PlayerNameChange(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerNameChange implements PlayerNameChange {
  const _$PlayerNameChange(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'PlayerSelectionState.nameChange(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayerNameChange &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $PlayerNameChangeCopyWith<PlayerNameChange> get copyWith =>
      _$PlayerNameChangeCopyWithImpl<PlayerNameChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nameInvalid,
    required TResult Function(String name) nameAvailable,
    required TResult Function(String name) nameUnavailable,
    required TResult Function(String name) checkingName,
    required TResult Function(String name) nameChange,
    required TResult Function(String id) playerCreated,
    required TResult Function(String id) playerExists,
  }) {
    return nameChange(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nameInvalid,
    TResult Function(String name)? nameAvailable,
    TResult Function(String name)? nameUnavailable,
    TResult Function(String name)? checkingName,
    TResult Function(String name)? nameChange,
    TResult Function(String id)? playerCreated,
    TResult Function(String id)? playerExists,
    required TResult orElse(),
  }) {
    if (nameChange != null) {
      return nameChange(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNameInvalid value) nameInvalid,
    required TResult Function(PlayerNameAvailable value) nameAvailable,
    required TResult Function(PlayerNameUnavailable value) nameUnavailable,
    required TResult Function(CheckingPlayerName value) checkingName,
    required TResult Function(PlayerNameChange value) nameChange,
    required TResult Function(PlayerCreated value) playerCreated,
    required TResult Function(PlayerExists value) playerExists,
  }) {
    return nameChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNameInvalid value)? nameInvalid,
    TResult Function(PlayerNameAvailable value)? nameAvailable,
    TResult Function(PlayerNameUnavailable value)? nameUnavailable,
    TResult Function(CheckingPlayerName value)? checkingName,
    TResult Function(PlayerNameChange value)? nameChange,
    TResult Function(PlayerCreated value)? playerCreated,
    TResult Function(PlayerExists value)? playerExists,
    required TResult orElse(),
  }) {
    if (nameChange != null) {
      return nameChange(this);
    }
    return orElse();
  }
}

abstract class PlayerNameChange implements PlayerSelectionState {
  const factory PlayerNameChange(String name) = _$PlayerNameChange;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerNameChangeCopyWith<PlayerNameChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCreatedCopyWith<$Res> {
  factory $PlayerCreatedCopyWith(
          PlayerCreated value, $Res Function(PlayerCreated) then) =
      _$PlayerCreatedCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$PlayerCreatedCopyWithImpl<$Res>
    extends _$PlayerSelectionStateCopyWithImpl<$Res>
    implements $PlayerCreatedCopyWith<$Res> {
  _$PlayerCreatedCopyWithImpl(
      PlayerCreated _value, $Res Function(PlayerCreated) _then)
      : super(_value, (v) => _then(v as PlayerCreated));

  @override
  PlayerCreated get _value => super._value as PlayerCreated;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(PlayerCreated(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerCreated implements PlayerCreated {
  const _$PlayerCreated(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PlayerSelectionState.playerCreated(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayerCreated &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $PlayerCreatedCopyWith<PlayerCreated> get copyWith =>
      _$PlayerCreatedCopyWithImpl<PlayerCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nameInvalid,
    required TResult Function(String name) nameAvailable,
    required TResult Function(String name) nameUnavailable,
    required TResult Function(String name) checkingName,
    required TResult Function(String name) nameChange,
    required TResult Function(String id) playerCreated,
    required TResult Function(String id) playerExists,
  }) {
    return playerCreated(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nameInvalid,
    TResult Function(String name)? nameAvailable,
    TResult Function(String name)? nameUnavailable,
    TResult Function(String name)? checkingName,
    TResult Function(String name)? nameChange,
    TResult Function(String id)? playerCreated,
    TResult Function(String id)? playerExists,
    required TResult orElse(),
  }) {
    if (playerCreated != null) {
      return playerCreated(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNameInvalid value) nameInvalid,
    required TResult Function(PlayerNameAvailable value) nameAvailable,
    required TResult Function(PlayerNameUnavailable value) nameUnavailable,
    required TResult Function(CheckingPlayerName value) checkingName,
    required TResult Function(PlayerNameChange value) nameChange,
    required TResult Function(PlayerCreated value) playerCreated,
    required TResult Function(PlayerExists value) playerExists,
  }) {
    return playerCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNameInvalid value)? nameInvalid,
    TResult Function(PlayerNameAvailable value)? nameAvailable,
    TResult Function(PlayerNameUnavailable value)? nameUnavailable,
    TResult Function(CheckingPlayerName value)? checkingName,
    TResult Function(PlayerNameChange value)? nameChange,
    TResult Function(PlayerCreated value)? playerCreated,
    TResult Function(PlayerExists value)? playerExists,
    required TResult orElse(),
  }) {
    if (playerCreated != null) {
      return playerCreated(this);
    }
    return orElse();
  }
}

abstract class PlayerCreated implements PlayerSelectionState {
  const factory PlayerCreated(String id) = _$PlayerCreated;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerCreatedCopyWith<PlayerCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerExistsCopyWith<$Res> {
  factory $PlayerExistsCopyWith(
          PlayerExists value, $Res Function(PlayerExists) then) =
      _$PlayerExistsCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$PlayerExistsCopyWithImpl<$Res>
    extends _$PlayerSelectionStateCopyWithImpl<$Res>
    implements $PlayerExistsCopyWith<$Res> {
  _$PlayerExistsCopyWithImpl(
      PlayerExists _value, $Res Function(PlayerExists) _then)
      : super(_value, (v) => _then(v as PlayerExists));

  @override
  PlayerExists get _value => super._value as PlayerExists;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(PlayerExists(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerExists implements PlayerExists {
  const _$PlayerExists(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PlayerSelectionState.playerExists(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlayerExists &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $PlayerExistsCopyWith<PlayerExists> get copyWith =>
      _$PlayerExistsCopyWithImpl<PlayerExists>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nameInvalid,
    required TResult Function(String name) nameAvailable,
    required TResult Function(String name) nameUnavailable,
    required TResult Function(String name) checkingName,
    required TResult Function(String name) nameChange,
    required TResult Function(String id) playerCreated,
    required TResult Function(String id) playerExists,
  }) {
    return playerExists(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nameInvalid,
    TResult Function(String name)? nameAvailable,
    TResult Function(String name)? nameUnavailable,
    TResult Function(String name)? checkingName,
    TResult Function(String name)? nameChange,
    TResult Function(String id)? playerCreated,
    TResult Function(String id)? playerExists,
    required TResult orElse(),
  }) {
    if (playerExists != null) {
      return playerExists(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNameInvalid value) nameInvalid,
    required TResult Function(PlayerNameAvailable value) nameAvailable,
    required TResult Function(PlayerNameUnavailable value) nameUnavailable,
    required TResult Function(CheckingPlayerName value) checkingName,
    required TResult Function(PlayerNameChange value) nameChange,
    required TResult Function(PlayerCreated value) playerCreated,
    required TResult Function(PlayerExists value) playerExists,
  }) {
    return playerExists(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNameInvalid value)? nameInvalid,
    TResult Function(PlayerNameAvailable value)? nameAvailable,
    TResult Function(PlayerNameUnavailable value)? nameUnavailable,
    TResult Function(CheckingPlayerName value)? checkingName,
    TResult Function(PlayerNameChange value)? nameChange,
    TResult Function(PlayerCreated value)? playerCreated,
    TResult Function(PlayerExists value)? playerExists,
    required TResult orElse(),
  }) {
    if (playerExists != null) {
      return playerExists(this);
    }
    return orElse();
  }
}

abstract class PlayerExists implements PlayerSelectionState {
  const factory PlayerExists(String id) = _$PlayerExists;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerExistsCopyWith<PlayerExists> get copyWith =>
      throw _privateConstructorUsedError;
}
