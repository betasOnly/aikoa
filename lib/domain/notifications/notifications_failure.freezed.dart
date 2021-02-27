// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notifications_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NotificationsFailureTearOff {
  const _$NotificationsFailureTearOff();

// ignore: unused_element
  Unexpected unexpected() {
    return const Unexpected();
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationsFailure = _$NotificationsFailureTearOff();

/// @nodoc
mixin _$NotificationsFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpected(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpected(Unexpected value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(Unexpected value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NotificationsFailureCopyWith<$Res> {
  factory $NotificationsFailureCopyWith(NotificationsFailure value,
          $Res Function(NotificationsFailure) then) =
      _$NotificationsFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsFailureCopyWithImpl<$Res>
    implements $NotificationsFailureCopyWith<$Res> {
  _$NotificationsFailureCopyWithImpl(this._value, this._then);

  final NotificationsFailure _value;
  // ignore: unused_field
  final $Res Function(NotificationsFailure) _then;
}

/// @nodoc
abstract class $UnexpectedCopyWith<$Res> {
  factory $UnexpectedCopyWith(
          Unexpected value, $Res Function(Unexpected) then) =
      _$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedCopyWithImpl<$Res>
    extends _$NotificationsFailureCopyWithImpl<$Res>
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
    return 'NotificationsFailure.unexpected()';
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
  }) {
    assert(unexpected != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(),
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
  }) {
    assert(unexpected != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(Unexpected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements NotificationsFailure {
  const factory Unexpected() = _$Unexpected;
}
