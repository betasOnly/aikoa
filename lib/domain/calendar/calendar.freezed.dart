// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'calendar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CalendarTearOff {
  const _$CalendarTearOff();

// ignore: unused_element
  _Calendar call({@required UniqueId id, @required String name}) {
    return _Calendar(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Calendar = _$CalendarTearOff();

/// @nodoc
mixin _$Calendar {
  UniqueId get id;
  String get name;

  $CalendarCopyWith<Calendar> get copyWith;
}

/// @nodoc
abstract class $CalendarCopyWith<$Res> {
  factory $CalendarCopyWith(Calendar value, $Res Function(Calendar) then) =
      _$CalendarCopyWithImpl<$Res>;
  $Res call({UniqueId id, String name});
}

/// @nodoc
class _$CalendarCopyWithImpl<$Res> implements $CalendarCopyWith<$Res> {
  _$CalendarCopyWithImpl(this._value, this._then);

  final Calendar _value;
  // ignore: unused_field
  final $Res Function(Calendar) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$CalendarCopyWith<$Res> implements $CalendarCopyWith<$Res> {
  factory _$CalendarCopyWith(_Calendar value, $Res Function(_Calendar) then) =
      __$CalendarCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String name});
}

/// @nodoc
class __$CalendarCopyWithImpl<$Res> extends _$CalendarCopyWithImpl<$Res>
    implements _$CalendarCopyWith<$Res> {
  __$CalendarCopyWithImpl(_Calendar _value, $Res Function(_Calendar) _then)
      : super(_value, (v) => _then(v as _Calendar));

  @override
  _Calendar get _value => super._value as _Calendar;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_Calendar(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_Calendar with DiagnosticableTreeMixin implements _Calendar {
  const _$_Calendar({@required this.id, @required this.name})
      : assert(id != null),
        assert(name != null);

  @override
  final UniqueId id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Calendar(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Calendar'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Calendar &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$CalendarCopyWith<_Calendar> get copyWith =>
      __$CalendarCopyWithImpl<_Calendar>(this, _$identity);
}

abstract class _Calendar implements Calendar {
  const factory _Calendar({@required UniqueId id, @required String name}) =
      _$_Calendar;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  _$CalendarCopyWith<_Calendar> get copyWith;
}

/// @nodoc
class _$EventTearOff {
  const _$EventTearOff();

// ignore: unused_element
  _Event call(
      {@required UniqueId id,
      @required EventTitle title,
      @required Option<EventBody> body,
      @required TimeSlot timeSlot,
      @required Option<List<Reminder>> reminders,
      bool isAllDay}) {
    return _Event(
      id: id,
      title: title,
      body: body,
      timeSlot: timeSlot,
      reminders: reminders,
      isAllDay: isAllDay,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Event = _$EventTearOff();

/// @nodoc
mixin _$Event {
  UniqueId get id;
  EventTitle get title;
  Option<EventBody> get body;
  TimeSlot get timeSlot;
  Option<List<Reminder>> get reminders;
  bool get isAllDay;

  $EventCopyWith<Event> get copyWith;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      EventTitle title,
      Option<EventBody> body,
      TimeSlot timeSlot,
      Option<List<Reminder>> reminders,
      bool isAllDay});
}

/// @nodoc
class _$EventCopyWithImpl<$Res> implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  final Event _value;
  // ignore: unused_field
  final $Res Function(Event) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object body = freezed,
    Object timeSlot = freezed,
    Object reminders = freezed,
    Object isAllDay = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as EventTitle,
      body: body == freezed ? _value.body : body as Option<EventBody>,
      timeSlot: timeSlot == freezed ? _value.timeSlot : timeSlot as TimeSlot,
      reminders: reminders == freezed
          ? _value.reminders
          : reminders as Option<List<Reminder>>,
      isAllDay: isAllDay == freezed ? _value.isAllDay : isAllDay as bool,
    ));
  }
}

/// @nodoc
abstract class _$EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$EventCopyWith(_Event value, $Res Function(_Event) then) =
      __$EventCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      EventTitle title,
      Option<EventBody> body,
      TimeSlot timeSlot,
      Option<List<Reminder>> reminders,
      bool isAllDay});
}

/// @nodoc
class __$EventCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements _$EventCopyWith<$Res> {
  __$EventCopyWithImpl(_Event _value, $Res Function(_Event) _then)
      : super(_value, (v) => _then(v as _Event));

  @override
  _Event get _value => super._value as _Event;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object body = freezed,
    Object timeSlot = freezed,
    Object reminders = freezed,
    Object isAllDay = freezed,
  }) {
    return _then(_Event(
      id: id == freezed ? _value.id : id as UniqueId,
      title: title == freezed ? _value.title : title as EventTitle,
      body: body == freezed ? _value.body : body as Option<EventBody>,
      timeSlot: timeSlot == freezed ? _value.timeSlot : timeSlot as TimeSlot,
      reminders: reminders == freezed
          ? _value.reminders
          : reminders as Option<List<Reminder>>,
      isAllDay: isAllDay == freezed ? _value.isAllDay : isAllDay as bool,
    ));
  }
}

/// @nodoc
class _$_Event with DiagnosticableTreeMixin implements _Event {
  const _$_Event(
      {@required this.id,
      @required this.title,
      @required this.body,
      @required this.timeSlot,
      @required this.reminders,
      this.isAllDay})
      : assert(id != null),
        assert(title != null),
        assert(body != null),
        assert(timeSlot != null),
        assert(reminders != null);

  @override
  final UniqueId id;
  @override
  final EventTitle title;
  @override
  final Option<EventBody> body;
  @override
  final TimeSlot timeSlot;
  @override
  final Option<List<Reminder>> reminders;
  @override
  final bool isAllDay;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Event(id: $id, title: $title, body: $body, timeSlot: $timeSlot, reminders: $reminders, isAllDay: $isAllDay)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Event'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('timeSlot', timeSlot))
      ..add(DiagnosticsProperty('reminders', reminders))
      ..add(DiagnosticsProperty('isAllDay', isAllDay));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Event &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.timeSlot, timeSlot) ||
                const DeepCollectionEquality()
                    .equals(other.timeSlot, timeSlot)) &&
            (identical(other.reminders, reminders) ||
                const DeepCollectionEquality()
                    .equals(other.reminders, reminders)) &&
            (identical(other.isAllDay, isAllDay) ||
                const DeepCollectionEquality()
                    .equals(other.isAllDay, isAllDay)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(timeSlot) ^
      const DeepCollectionEquality().hash(reminders) ^
      const DeepCollectionEquality().hash(isAllDay);

  @override
  _$EventCopyWith<_Event> get copyWith =>
      __$EventCopyWithImpl<_Event>(this, _$identity);
}

abstract class _Event implements Event {
  const factory _Event(
      {@required UniqueId id,
      @required EventTitle title,
      @required Option<EventBody> body,
      @required TimeSlot timeSlot,
      @required Option<List<Reminder>> reminders,
      bool isAllDay}) = _$_Event;

  @override
  UniqueId get id;
  @override
  EventTitle get title;
  @override
  Option<EventBody> get body;
  @override
  TimeSlot get timeSlot;
  @override
  Option<List<Reminder>> get reminders;
  @override
  bool get isAllDay;
  @override
  _$EventCopyWith<_Event> get copyWith;
}
