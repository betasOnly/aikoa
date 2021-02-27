// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NotificationTearOff {
  const _$NotificationTearOff();

// ignore: unused_element
  _Notification call(
      {@required UniqueId id,
      @required String title,
      String body,
      String payload}) {
    return _Notification(
      id: id,
      title: title,
      body: body,
      payload: payload,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Notification = _$NotificationTearOff();

/// @nodoc
mixin _$Notification {
  UniqueId get id;
  String get title;
  String get body;
  String get payload;

  $NotificationCopyWith<Notification> get copyWith;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res>;
  $Res call({UniqueId id, String title, String body, String payload});
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res> implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  final Notification _value;
  // ignore: unused_field
  final $Res Function(Notification) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object body = freezed,
    Object payload = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
      payload: payload == freezed ? _value.payload : payload as String,
    ));
  }
}

/// @nodoc
abstract class _$NotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(
          _Notification value, $Res Function(_Notification) then) =
      __$NotificationCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String title, String body, String payload});
}

/// @nodoc
class __$NotificationCopyWithImpl<$Res> extends _$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(
      _Notification _value, $Res Function(_Notification) _then)
      : super(_value, (v) => _then(v as _Notification));

  @override
  _Notification get _value => super._value as _Notification;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object body = freezed,
    Object payload = freezed,
  }) {
    return _then(_Notification(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
      payload: payload == freezed ? _value.payload : payload as String,
    ));
  }
}

/// @nodoc
class _$_Notification implements _Notification {
  const _$_Notification(
      {@required this.id, @required this.title, this.body, this.payload})
      : assert(id != null),
        assert(title != null);

  @override
  final UniqueId id;
  @override
  final String title;
  @override
  final String body;
  @override
  final String payload;

  @override
  String toString() {
    return 'Notification(id: $id, title: $title, body: $body, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Notification &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(payload);

  @override
  _$NotificationCopyWith<_Notification> get copyWith =>
      __$NotificationCopyWithImpl<_Notification>(this, _$identity);
}

abstract class _Notification implements Notification {
  const factory _Notification(
      {@required UniqueId id,
      @required String title,
      String body,
      String payload}) = _$_Notification;

  @override
  UniqueId get id;
  @override
  String get title;
  @override
  String get body;
  @override
  String get payload;
  @override
  _$NotificationCopyWith<_Notification> get copyWith;
}
