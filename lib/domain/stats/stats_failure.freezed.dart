// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'stats_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StatsFailureTearOff {
  const _$StatsFailureTearOff();

// ignore: unused_element
  Unexpected unexpected() {
    return const Unexpected();
  }

// ignore: unused_element
  UnableToUpdate unableToUpdate() {
    return const UnableToUpdate();
  }
}

/// @nodoc
// ignore: unused_element
const $StatsFailure = _$StatsFailureTearOff();

/// @nodoc
mixin _$StatsFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpected(),
    @required TResult unableToUpdate(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(),
    TResult unableToUpdate(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpected(Unexpected value),
    @required TResult unableToUpdate(UnableToUpdate value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(Unexpected value),
    TResult unableToUpdate(UnableToUpdate value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $StatsFailureCopyWith<$Res> {
  factory $StatsFailureCopyWith(
          StatsFailure value, $Res Function(StatsFailure) then) =
      _$StatsFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatsFailureCopyWithImpl<$Res> implements $StatsFailureCopyWith<$Res> {
  _$StatsFailureCopyWithImpl(this._value, this._then);

  final StatsFailure _value;
  // ignore: unused_field
  final $Res Function(StatsFailure) _then;
}

/// @nodoc
abstract class $UnexpectedCopyWith<$Res> {
  factory $UnexpectedCopyWith(
          Unexpected value, $Res Function(Unexpected) then) =
      _$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedCopyWithImpl<$Res> extends _$StatsFailureCopyWithImpl<$Res>
    implements $UnexpectedCopyWith<$Res> {
  _$UnexpectedCopyWithImpl(Unexpected _value, $Res Function(Unexpected) _then)
      : super(_value, (v) => _then(v as Unexpected));

  @override
  Unexpected get _value => super._value as Unexpected;
}

/// @nodoc
class _$Unexpected implements Unexpected {
  const _$Unexpected();

  @override
  String toString() {
    return 'StatsFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpected(),
    @required TResult unableToUpdate(),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(),
    TResult unableToUpdate(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpected(Unexpected value),
    @required TResult unableToUpdate(UnableToUpdate value),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(Unexpected value),
    TResult unableToUpdate(UnableToUpdate value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements StatsFailure {
  const factory Unexpected() = _$Unexpected;
}

/// @nodoc
abstract class $UnableToUpdateCopyWith<$Res> {
  factory $UnableToUpdateCopyWith(
          UnableToUpdate value, $Res Function(UnableToUpdate) then) =
      _$UnableToUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnableToUpdateCopyWithImpl<$Res>
    extends _$StatsFailureCopyWithImpl<$Res>
    implements $UnableToUpdateCopyWith<$Res> {
  _$UnableToUpdateCopyWithImpl(
      UnableToUpdate _value, $Res Function(UnableToUpdate) _then)
      : super(_value, (v) => _then(v as UnableToUpdate));

  @override
  UnableToUpdate get _value => super._value as UnableToUpdate;
}

/// @nodoc
class _$UnableToUpdate implements UnableToUpdate {
  const _$UnableToUpdate();

  @override
  String toString() {
    return 'StatsFailure.unableToUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnableToUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpected(),
    @required TResult unableToUpdate(),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(),
    TResult unableToUpdate(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpected(Unexpected value),
    @required TResult unableToUpdate(UnableToUpdate value),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(Unexpected value),
    TResult unableToUpdate(UnableToUpdate value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class UnableToUpdate implements StatsFailure {
  const factory UnableToUpdate() = _$UnableToUpdate;
}
