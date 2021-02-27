// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'event_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EventFormEventTearOff {
  const _$EventFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Event> initialEventOption) {
    return _Initialized(
      initialEventOption,
    );
  }

// ignore: unused_element
  _TitleChanged titleChanged(String titleStr) {
    return _TitleChanged(
      titleStr,
    );
  }

// ignore: unused_element
  _BodyChanged bodyChanged(String bodyStr) {
    return _BodyChanged(
      bodyStr,
    );
  }

// ignore: unused_element
  _IsAllDayChanged isAllDayChanged(bool isAllDay) {
    return _IsAllDayChanged(
      isAllDay,
    );
  }

// ignore: unused_element
  _StartDateChanged startDateChanged(DateTime date) {
    return _StartDateChanged(
      date,
    );
  }

// ignore: unused_element
  _StartTimeChanged startTimeChanged(TimeOfDay start) {
    return _StartTimeChanged(
      start,
    );
  }

// ignore: unused_element
  _EndDateChanged endDateChanged(DateTime date) {
    return _EndDateChanged(
      date,
    );
  }

// ignore: unused_element
  _EndTimeChanged endTimeChanged(TimeOfDay end) {
    return _EndTimeChanged(
      end,
    );
  }

// ignore: unused_element
  _ReminderAdded reminderAdded(Reminder reminder) {
    return _ReminderAdded(
      reminder,
    );
  }

// ignore: unused_element
  _ReminderRemoved reminderRemoved(Reminder reminder) {
    return _ReminderRemoved(
      reminder,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $EventFormEvent = _$EventFormEventTearOff();

/// @nodoc
mixin _$EventFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Event> initialEventOption),
    @required TResult titleChanged(String titleStr),
    @required TResult bodyChanged(String bodyStr),
    @required TResult isAllDayChanged(bool isAllDay),
    @required TResult startDateChanged(DateTime date),
    @required TResult startTimeChanged(TimeOfDay start),
    @required TResult endDateChanged(DateTime date),
    @required TResult endTimeChanged(TimeOfDay end),
    @required TResult reminderAdded(Reminder reminder),
    @required TResult reminderRemoved(Reminder reminder),
    @required TResult saved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Event> initialEventOption),
    TResult titleChanged(String titleStr),
    TResult bodyChanged(String bodyStr),
    TResult isAllDayChanged(bool isAllDay),
    TResult startDateChanged(DateTime date),
    TResult startTimeChanged(TimeOfDay start),
    TResult endDateChanged(DateTime date),
    TResult endTimeChanged(TimeOfDay end),
    TResult reminderAdded(Reminder reminder),
    TResult reminderRemoved(Reminder reminder),
    TResult saved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult isAllDayChanged(_IsAllDayChanged value),
    @required TResult startDateChanged(_StartDateChanged value),
    @required TResult startTimeChanged(_StartTimeChanged value),
    @required TResult endDateChanged(_EndDateChanged value),
    @required TResult endTimeChanged(_EndTimeChanged value),
    @required TResult reminderAdded(_ReminderAdded value),
    @required TResult reminderRemoved(_ReminderRemoved value),
    @required TResult saved(_Saved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult isAllDayChanged(_IsAllDayChanged value),
    TResult startDateChanged(_StartDateChanged value),
    TResult startTimeChanged(_StartTimeChanged value),
    TResult endDateChanged(_EndDateChanged value),
    TResult endTimeChanged(_EndTimeChanged value),
    TResult reminderAdded(_ReminderAdded value),
    TResult reminderRemoved(_ReminderRemoved value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EventFormEventCopyWith<$Res> {
  factory $EventFormEventCopyWith(
          EventFormEvent value, $Res Function(EventFormEvent) then) =
      _$EventFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventFormEventCopyWithImpl<$Res>
    implements $EventFormEventCopyWith<$Res> {
  _$EventFormEventCopyWithImpl(this._value, this._then);

  final EventFormEvent _value;
  // ignore: unused_field
  final $Res Function(EventFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Event> initialEventOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialEventOption = freezed,
  }) {
    return _then(_Initialized(
      initialEventOption == freezed
          ? _value.initialEventOption
          : initialEventOption as Option<Event>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialEventOption)
      : assert(initialEventOption != null);

  @override
  final Option<Event> initialEventOption;

  @override
  String toString() {
    return 'EventFormEvent.initialized(initialEventOption: $initialEventOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialEventOption, initialEventOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialEventOption, initialEventOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialEventOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Event> initialEventOption),
    @required TResult titleChanged(String titleStr),
    @required TResult bodyChanged(String bodyStr),
    @required TResult isAllDayChanged(bool isAllDay),
    @required TResult startDateChanged(DateTime date),
    @required TResult startTimeChanged(TimeOfDay start),
    @required TResult endDateChanged(DateTime date),
    @required TResult endTimeChanged(TimeOfDay end),
    @required TResult reminderAdded(Reminder reminder),
    @required TResult reminderRemoved(Reminder reminder),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return initialized(initialEventOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Event> initialEventOption),
    TResult titleChanged(String titleStr),
    TResult bodyChanged(String bodyStr),
    TResult isAllDayChanged(bool isAllDay),
    TResult startDateChanged(DateTime date),
    TResult startTimeChanged(TimeOfDay start),
    TResult endDateChanged(DateTime date),
    TResult endTimeChanged(TimeOfDay end),
    TResult reminderAdded(Reminder reminder),
    TResult reminderRemoved(Reminder reminder),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialEventOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult isAllDayChanged(_IsAllDayChanged value),
    @required TResult startDateChanged(_StartDateChanged value),
    @required TResult startTimeChanged(_StartTimeChanged value),
    @required TResult endDateChanged(_EndDateChanged value),
    @required TResult endTimeChanged(_EndTimeChanged value),
    @required TResult reminderAdded(_ReminderAdded value),
    @required TResult reminderRemoved(_ReminderRemoved value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult isAllDayChanged(_IsAllDayChanged value),
    TResult startDateChanged(_StartDateChanged value),
    TResult startTimeChanged(_StartTimeChanged value),
    TResult endDateChanged(_EndDateChanged value),
    TResult endTimeChanged(_EndTimeChanged value),
    TResult reminderAdded(_ReminderAdded value),
    TResult reminderRemoved(_ReminderRemoved value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements EventFormEvent {
  const factory _Initialized(Option<Event> initialEventOption) = _$_Initialized;

  Option<Event> get initialEventOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String titleStr});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object titleStr = freezed,
  }) {
    return _then(_TitleChanged(
      titleStr == freezed ? _value.titleStr : titleStr as String,
    ));
  }
}

/// @nodoc
class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.titleStr) : assert(titleStr != null);

  @override
  final String titleStr;

  @override
  String toString() {
    return 'EventFormEvent.titleChanged(titleStr: $titleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleChanged &&
            (identical(other.titleStr, titleStr) ||
                const DeepCollectionEquality()
                    .equals(other.titleStr, titleStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(titleStr);

  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Event> initialEventOption),
    @required TResult titleChanged(String titleStr),
    @required TResult bodyChanged(String bodyStr),
    @required TResult isAllDayChanged(bool isAllDay),
    @required TResult startDateChanged(DateTime date),
    @required TResult startTimeChanged(TimeOfDay start),
    @required TResult endDateChanged(DateTime date),
    @required TResult endTimeChanged(TimeOfDay end),
    @required TResult reminderAdded(Reminder reminder),
    @required TResult reminderRemoved(Reminder reminder),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Event> initialEventOption),
    TResult titleChanged(String titleStr),
    TResult bodyChanged(String bodyStr),
    TResult isAllDayChanged(bool isAllDay),
    TResult startDateChanged(DateTime date),
    TResult startTimeChanged(TimeOfDay start),
    TResult endDateChanged(DateTime date),
    TResult endTimeChanged(TimeOfDay end),
    TResult reminderAdded(Reminder reminder),
    TResult reminderRemoved(Reminder reminder),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult isAllDayChanged(_IsAllDayChanged value),
    @required TResult startDateChanged(_StartDateChanged value),
    @required TResult startTimeChanged(_StartTimeChanged value),
    @required TResult endDateChanged(_EndDateChanged value),
    @required TResult endTimeChanged(_EndTimeChanged value),
    @required TResult reminderAdded(_ReminderAdded value),
    @required TResult reminderRemoved(_ReminderRemoved value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult isAllDayChanged(_IsAllDayChanged value),
    TResult startDateChanged(_StartDateChanged value),
    TResult startTimeChanged(_StartTimeChanged value),
    TResult endDateChanged(_EndDateChanged value),
    TResult endTimeChanged(_EndTimeChanged value),
    TResult reminderAdded(_ReminderAdded value),
    TResult reminderRemoved(_ReminderRemoved value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements EventFormEvent {
  const factory _TitleChanged(String titleStr) = _$_TitleChanged;

  String get titleStr;
  _$TitleChangedCopyWith<_TitleChanged> get copyWith;
}

/// @nodoc
abstract class _$BodyChangedCopyWith<$Res> {
  factory _$BodyChangedCopyWith(
          _BodyChanged value, $Res Function(_BodyChanged) then) =
      __$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyStr});
}

/// @nodoc
class __$BodyChangedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$BodyChangedCopyWith<$Res> {
  __$BodyChangedCopyWithImpl(
      _BodyChanged _value, $Res Function(_BodyChanged) _then)
      : super(_value, (v) => _then(v as _BodyChanged));

  @override
  _BodyChanged get _value => super._value as _BodyChanged;

  @override
  $Res call({
    Object bodyStr = freezed,
  }) {
    return _then(_BodyChanged(
      bodyStr == freezed ? _value.bodyStr : bodyStr as String,
    ));
  }
}

/// @nodoc
class _$_BodyChanged implements _BodyChanged {
  const _$_BodyChanged(this.bodyStr) : assert(bodyStr != null);

  @override
  final String bodyStr;

  @override
  String toString() {
    return 'EventFormEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @override
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      __$BodyChangedCopyWithImpl<_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Event> initialEventOption),
    @required TResult titleChanged(String titleStr),
    @required TResult bodyChanged(String bodyStr),
    @required TResult isAllDayChanged(bool isAllDay),
    @required TResult startDateChanged(DateTime date),
    @required TResult startTimeChanged(TimeOfDay start),
    @required TResult endDateChanged(DateTime date),
    @required TResult endTimeChanged(TimeOfDay end),
    @required TResult reminderAdded(Reminder reminder),
    @required TResult reminderRemoved(Reminder reminder),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Event> initialEventOption),
    TResult titleChanged(String titleStr),
    TResult bodyChanged(String bodyStr),
    TResult isAllDayChanged(bool isAllDay),
    TResult startDateChanged(DateTime date),
    TResult startTimeChanged(TimeOfDay start),
    TResult endDateChanged(DateTime date),
    TResult endTimeChanged(TimeOfDay end),
    TResult reminderAdded(Reminder reminder),
    TResult reminderRemoved(Reminder reminder),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult isAllDayChanged(_IsAllDayChanged value),
    @required TResult startDateChanged(_StartDateChanged value),
    @required TResult startTimeChanged(_StartTimeChanged value),
    @required TResult endDateChanged(_EndDateChanged value),
    @required TResult endTimeChanged(_EndTimeChanged value),
    @required TResult reminderAdded(_ReminderAdded value),
    @required TResult reminderRemoved(_ReminderRemoved value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult isAllDayChanged(_IsAllDayChanged value),
    TResult startDateChanged(_StartDateChanged value),
    TResult startTimeChanged(_StartTimeChanged value),
    TResult endDateChanged(_EndDateChanged value),
    TResult endTimeChanged(_EndTimeChanged value),
    TResult reminderAdded(_ReminderAdded value),
    TResult reminderRemoved(_ReminderRemoved value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements EventFormEvent {
  const factory _BodyChanged(String bodyStr) = _$_BodyChanged;

  String get bodyStr;
  _$BodyChangedCopyWith<_BodyChanged> get copyWith;
}

/// @nodoc
abstract class _$IsAllDayChangedCopyWith<$Res> {
  factory _$IsAllDayChangedCopyWith(
          _IsAllDayChanged value, $Res Function(_IsAllDayChanged) then) =
      __$IsAllDayChangedCopyWithImpl<$Res>;
  $Res call({bool isAllDay});
}

/// @nodoc
class __$IsAllDayChangedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$IsAllDayChangedCopyWith<$Res> {
  __$IsAllDayChangedCopyWithImpl(
      _IsAllDayChanged _value, $Res Function(_IsAllDayChanged) _then)
      : super(_value, (v) => _then(v as _IsAllDayChanged));

  @override
  _IsAllDayChanged get _value => super._value as _IsAllDayChanged;

  @override
  $Res call({
    Object isAllDay = freezed,
  }) {
    return _then(_IsAllDayChanged(
      isAllDay == freezed ? _value.isAllDay : isAllDay as bool,
    ));
  }
}

/// @nodoc
class _$_IsAllDayChanged implements _IsAllDayChanged {
  const _$_IsAllDayChanged(this.isAllDay) : assert(isAllDay != null);

  @override
  final bool isAllDay;

  @override
  String toString() {
    return 'EventFormEvent.isAllDayChanged(isAllDay: $isAllDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsAllDayChanged &&
            (identical(other.isAllDay, isAllDay) ||
                const DeepCollectionEquality()
                    .equals(other.isAllDay, isAllDay)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isAllDay);

  @override
  _$IsAllDayChangedCopyWith<_IsAllDayChanged> get copyWith =>
      __$IsAllDayChangedCopyWithImpl<_IsAllDayChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Event> initialEventOption),
    @required TResult titleChanged(String titleStr),
    @required TResult bodyChanged(String bodyStr),
    @required TResult isAllDayChanged(bool isAllDay),
    @required TResult startDateChanged(DateTime date),
    @required TResult startTimeChanged(TimeOfDay start),
    @required TResult endDateChanged(DateTime date),
    @required TResult endTimeChanged(TimeOfDay end),
    @required TResult reminderAdded(Reminder reminder),
    @required TResult reminderRemoved(Reminder reminder),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return isAllDayChanged(isAllDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Event> initialEventOption),
    TResult titleChanged(String titleStr),
    TResult bodyChanged(String bodyStr),
    TResult isAllDayChanged(bool isAllDay),
    TResult startDateChanged(DateTime date),
    TResult startTimeChanged(TimeOfDay start),
    TResult endDateChanged(DateTime date),
    TResult endTimeChanged(TimeOfDay end),
    TResult reminderAdded(Reminder reminder),
    TResult reminderRemoved(Reminder reminder),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isAllDayChanged != null) {
      return isAllDayChanged(isAllDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult isAllDayChanged(_IsAllDayChanged value),
    @required TResult startDateChanged(_StartDateChanged value),
    @required TResult startTimeChanged(_StartTimeChanged value),
    @required TResult endDateChanged(_EndDateChanged value),
    @required TResult endTimeChanged(_EndTimeChanged value),
    @required TResult reminderAdded(_ReminderAdded value),
    @required TResult reminderRemoved(_ReminderRemoved value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return isAllDayChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult isAllDayChanged(_IsAllDayChanged value),
    TResult startDateChanged(_StartDateChanged value),
    TResult startTimeChanged(_StartTimeChanged value),
    TResult endDateChanged(_EndDateChanged value),
    TResult endTimeChanged(_EndTimeChanged value),
    TResult reminderAdded(_ReminderAdded value),
    TResult reminderRemoved(_ReminderRemoved value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isAllDayChanged != null) {
      return isAllDayChanged(this);
    }
    return orElse();
  }
}

abstract class _IsAllDayChanged implements EventFormEvent {
  const factory _IsAllDayChanged(bool isAllDay) = _$_IsAllDayChanged;

  bool get isAllDay;
  _$IsAllDayChangedCopyWith<_IsAllDayChanged> get copyWith;
}

/// @nodoc
abstract class _$StartDateChangedCopyWith<$Res> {
  factory _$StartDateChangedCopyWith(
          _StartDateChanged value, $Res Function(_StartDateChanged) then) =
      __$StartDateChangedCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class __$StartDateChangedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$StartDateChangedCopyWith<$Res> {
  __$StartDateChangedCopyWithImpl(
      _StartDateChanged _value, $Res Function(_StartDateChanged) _then)
      : super(_value, (v) => _then(v as _StartDateChanged));

  @override
  _StartDateChanged get _value => super._value as _StartDateChanged;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(_StartDateChanged(
      date == freezed ? _value.date : date as DateTime,
    ));
  }
}

/// @nodoc
class _$_StartDateChanged implements _StartDateChanged {
  const _$_StartDateChanged(this.date) : assert(date != null);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'EventFormEvent.startDateChanged(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartDateChanged &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @override
  _$StartDateChangedCopyWith<_StartDateChanged> get copyWith =>
      __$StartDateChangedCopyWithImpl<_StartDateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Event> initialEventOption),
    @required TResult titleChanged(String titleStr),
    @required TResult bodyChanged(String bodyStr),
    @required TResult isAllDayChanged(bool isAllDay),
    @required TResult startDateChanged(DateTime date),
    @required TResult startTimeChanged(TimeOfDay start),
    @required TResult endDateChanged(DateTime date),
    @required TResult endTimeChanged(TimeOfDay end),
    @required TResult reminderAdded(Reminder reminder),
    @required TResult reminderRemoved(Reminder reminder),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return startDateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Event> initialEventOption),
    TResult titleChanged(String titleStr),
    TResult bodyChanged(String bodyStr),
    TResult isAllDayChanged(bool isAllDay),
    TResult startDateChanged(DateTime date),
    TResult startTimeChanged(TimeOfDay start),
    TResult endDateChanged(DateTime date),
    TResult endTimeChanged(TimeOfDay end),
    TResult reminderAdded(Reminder reminder),
    TResult reminderRemoved(Reminder reminder),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startDateChanged != null) {
      return startDateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult isAllDayChanged(_IsAllDayChanged value),
    @required TResult startDateChanged(_StartDateChanged value),
    @required TResult startTimeChanged(_StartTimeChanged value),
    @required TResult endDateChanged(_EndDateChanged value),
    @required TResult endTimeChanged(_EndTimeChanged value),
    @required TResult reminderAdded(_ReminderAdded value),
    @required TResult reminderRemoved(_ReminderRemoved value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return startDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult isAllDayChanged(_IsAllDayChanged value),
    TResult startDateChanged(_StartDateChanged value),
    TResult startTimeChanged(_StartTimeChanged value),
    TResult endDateChanged(_EndDateChanged value),
    TResult endTimeChanged(_EndTimeChanged value),
    TResult reminderAdded(_ReminderAdded value),
    TResult reminderRemoved(_ReminderRemoved value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startDateChanged != null) {
      return startDateChanged(this);
    }
    return orElse();
  }
}

abstract class _StartDateChanged implements EventFormEvent {
  const factory _StartDateChanged(DateTime date) = _$_StartDateChanged;

  DateTime get date;
  _$StartDateChangedCopyWith<_StartDateChanged> get copyWith;
}

/// @nodoc
abstract class _$StartTimeChangedCopyWith<$Res> {
  factory _$StartTimeChangedCopyWith(
          _StartTimeChanged value, $Res Function(_StartTimeChanged) then) =
      __$StartTimeChangedCopyWithImpl<$Res>;
  $Res call({TimeOfDay start});
}

/// @nodoc
class __$StartTimeChangedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$StartTimeChangedCopyWith<$Res> {
  __$StartTimeChangedCopyWithImpl(
      _StartTimeChanged _value, $Res Function(_StartTimeChanged) _then)
      : super(_value, (v) => _then(v as _StartTimeChanged));

  @override
  _StartTimeChanged get _value => super._value as _StartTimeChanged;

  @override
  $Res call({
    Object start = freezed,
  }) {
    return _then(_StartTimeChanged(
      start == freezed ? _value.start : start as TimeOfDay,
    ));
  }
}

/// @nodoc
class _$_StartTimeChanged implements _StartTimeChanged {
  const _$_StartTimeChanged(this.start) : assert(start != null);

  @override
  final TimeOfDay start;

  @override
  String toString() {
    return 'EventFormEvent.startTimeChanged(start: $start)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartTimeChanged &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(start);

  @override
  _$StartTimeChangedCopyWith<_StartTimeChanged> get copyWith =>
      __$StartTimeChangedCopyWithImpl<_StartTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Event> initialEventOption),
    @required TResult titleChanged(String titleStr),
    @required TResult bodyChanged(String bodyStr),
    @required TResult isAllDayChanged(bool isAllDay),
    @required TResult startDateChanged(DateTime date),
    @required TResult startTimeChanged(TimeOfDay start),
    @required TResult endDateChanged(DateTime date),
    @required TResult endTimeChanged(TimeOfDay end),
    @required TResult reminderAdded(Reminder reminder),
    @required TResult reminderRemoved(Reminder reminder),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return startTimeChanged(start);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Event> initialEventOption),
    TResult titleChanged(String titleStr),
    TResult bodyChanged(String bodyStr),
    TResult isAllDayChanged(bool isAllDay),
    TResult startDateChanged(DateTime date),
    TResult startTimeChanged(TimeOfDay start),
    TResult endDateChanged(DateTime date),
    TResult endTimeChanged(TimeOfDay end),
    TResult reminderAdded(Reminder reminder),
    TResult reminderRemoved(Reminder reminder),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startTimeChanged != null) {
      return startTimeChanged(start);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult isAllDayChanged(_IsAllDayChanged value),
    @required TResult startDateChanged(_StartDateChanged value),
    @required TResult startTimeChanged(_StartTimeChanged value),
    @required TResult endDateChanged(_EndDateChanged value),
    @required TResult endTimeChanged(_EndTimeChanged value),
    @required TResult reminderAdded(_ReminderAdded value),
    @required TResult reminderRemoved(_ReminderRemoved value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return startTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult isAllDayChanged(_IsAllDayChanged value),
    TResult startDateChanged(_StartDateChanged value),
    TResult startTimeChanged(_StartTimeChanged value),
    TResult endDateChanged(_EndDateChanged value),
    TResult endTimeChanged(_EndTimeChanged value),
    TResult reminderAdded(_ReminderAdded value),
    TResult reminderRemoved(_ReminderRemoved value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startTimeChanged != null) {
      return startTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _StartTimeChanged implements EventFormEvent {
  const factory _StartTimeChanged(TimeOfDay start) = _$_StartTimeChanged;

  TimeOfDay get start;
  _$StartTimeChangedCopyWith<_StartTimeChanged> get copyWith;
}

/// @nodoc
abstract class _$EndDateChangedCopyWith<$Res> {
  factory _$EndDateChangedCopyWith(
          _EndDateChanged value, $Res Function(_EndDateChanged) then) =
      __$EndDateChangedCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class __$EndDateChangedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$EndDateChangedCopyWith<$Res> {
  __$EndDateChangedCopyWithImpl(
      _EndDateChanged _value, $Res Function(_EndDateChanged) _then)
      : super(_value, (v) => _then(v as _EndDateChanged));

  @override
  _EndDateChanged get _value => super._value as _EndDateChanged;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(_EndDateChanged(
      date == freezed ? _value.date : date as DateTime,
    ));
  }
}

/// @nodoc
class _$_EndDateChanged implements _EndDateChanged {
  const _$_EndDateChanged(this.date) : assert(date != null);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'EventFormEvent.endDateChanged(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EndDateChanged &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @override
  _$EndDateChangedCopyWith<_EndDateChanged> get copyWith =>
      __$EndDateChangedCopyWithImpl<_EndDateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Event> initialEventOption),
    @required TResult titleChanged(String titleStr),
    @required TResult bodyChanged(String bodyStr),
    @required TResult isAllDayChanged(bool isAllDay),
    @required TResult startDateChanged(DateTime date),
    @required TResult startTimeChanged(TimeOfDay start),
    @required TResult endDateChanged(DateTime date),
    @required TResult endTimeChanged(TimeOfDay end),
    @required TResult reminderAdded(Reminder reminder),
    @required TResult reminderRemoved(Reminder reminder),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return endDateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Event> initialEventOption),
    TResult titleChanged(String titleStr),
    TResult bodyChanged(String bodyStr),
    TResult isAllDayChanged(bool isAllDay),
    TResult startDateChanged(DateTime date),
    TResult startTimeChanged(TimeOfDay start),
    TResult endDateChanged(DateTime date),
    TResult endTimeChanged(TimeOfDay end),
    TResult reminderAdded(Reminder reminder),
    TResult reminderRemoved(Reminder reminder),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (endDateChanged != null) {
      return endDateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult isAllDayChanged(_IsAllDayChanged value),
    @required TResult startDateChanged(_StartDateChanged value),
    @required TResult startTimeChanged(_StartTimeChanged value),
    @required TResult endDateChanged(_EndDateChanged value),
    @required TResult endTimeChanged(_EndTimeChanged value),
    @required TResult reminderAdded(_ReminderAdded value),
    @required TResult reminderRemoved(_ReminderRemoved value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return endDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult isAllDayChanged(_IsAllDayChanged value),
    TResult startDateChanged(_StartDateChanged value),
    TResult startTimeChanged(_StartTimeChanged value),
    TResult endDateChanged(_EndDateChanged value),
    TResult endTimeChanged(_EndTimeChanged value),
    TResult reminderAdded(_ReminderAdded value),
    TResult reminderRemoved(_ReminderRemoved value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (endDateChanged != null) {
      return endDateChanged(this);
    }
    return orElse();
  }
}

abstract class _EndDateChanged implements EventFormEvent {
  const factory _EndDateChanged(DateTime date) = _$_EndDateChanged;

  DateTime get date;
  _$EndDateChangedCopyWith<_EndDateChanged> get copyWith;
}

/// @nodoc
abstract class _$EndTimeChangedCopyWith<$Res> {
  factory _$EndTimeChangedCopyWith(
          _EndTimeChanged value, $Res Function(_EndTimeChanged) then) =
      __$EndTimeChangedCopyWithImpl<$Res>;
  $Res call({TimeOfDay end});
}

/// @nodoc
class __$EndTimeChangedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$EndTimeChangedCopyWith<$Res> {
  __$EndTimeChangedCopyWithImpl(
      _EndTimeChanged _value, $Res Function(_EndTimeChanged) _then)
      : super(_value, (v) => _then(v as _EndTimeChanged));

  @override
  _EndTimeChanged get _value => super._value as _EndTimeChanged;

  @override
  $Res call({
    Object end = freezed,
  }) {
    return _then(_EndTimeChanged(
      end == freezed ? _value.end : end as TimeOfDay,
    ));
  }
}

/// @nodoc
class _$_EndTimeChanged implements _EndTimeChanged {
  const _$_EndTimeChanged(this.end) : assert(end != null);

  @override
  final TimeOfDay end;

  @override
  String toString() {
    return 'EventFormEvent.endTimeChanged(end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EndTimeChanged &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(end);

  @override
  _$EndTimeChangedCopyWith<_EndTimeChanged> get copyWith =>
      __$EndTimeChangedCopyWithImpl<_EndTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Event> initialEventOption),
    @required TResult titleChanged(String titleStr),
    @required TResult bodyChanged(String bodyStr),
    @required TResult isAllDayChanged(bool isAllDay),
    @required TResult startDateChanged(DateTime date),
    @required TResult startTimeChanged(TimeOfDay start),
    @required TResult endDateChanged(DateTime date),
    @required TResult endTimeChanged(TimeOfDay end),
    @required TResult reminderAdded(Reminder reminder),
    @required TResult reminderRemoved(Reminder reminder),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return endTimeChanged(end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Event> initialEventOption),
    TResult titleChanged(String titleStr),
    TResult bodyChanged(String bodyStr),
    TResult isAllDayChanged(bool isAllDay),
    TResult startDateChanged(DateTime date),
    TResult startTimeChanged(TimeOfDay start),
    TResult endDateChanged(DateTime date),
    TResult endTimeChanged(TimeOfDay end),
    TResult reminderAdded(Reminder reminder),
    TResult reminderRemoved(Reminder reminder),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (endTimeChanged != null) {
      return endTimeChanged(end);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult isAllDayChanged(_IsAllDayChanged value),
    @required TResult startDateChanged(_StartDateChanged value),
    @required TResult startTimeChanged(_StartTimeChanged value),
    @required TResult endDateChanged(_EndDateChanged value),
    @required TResult endTimeChanged(_EndTimeChanged value),
    @required TResult reminderAdded(_ReminderAdded value),
    @required TResult reminderRemoved(_ReminderRemoved value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return endTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult isAllDayChanged(_IsAllDayChanged value),
    TResult startDateChanged(_StartDateChanged value),
    TResult startTimeChanged(_StartTimeChanged value),
    TResult endDateChanged(_EndDateChanged value),
    TResult endTimeChanged(_EndTimeChanged value),
    TResult reminderAdded(_ReminderAdded value),
    TResult reminderRemoved(_ReminderRemoved value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (endTimeChanged != null) {
      return endTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _EndTimeChanged implements EventFormEvent {
  const factory _EndTimeChanged(TimeOfDay end) = _$_EndTimeChanged;

  TimeOfDay get end;
  _$EndTimeChangedCopyWith<_EndTimeChanged> get copyWith;
}

/// @nodoc
abstract class _$ReminderAddedCopyWith<$Res> {
  factory _$ReminderAddedCopyWith(
          _ReminderAdded value, $Res Function(_ReminderAdded) then) =
      __$ReminderAddedCopyWithImpl<$Res>;
  $Res call({Reminder reminder});

  $ReminderCopyWith<$Res> get reminder;
}

/// @nodoc
class __$ReminderAddedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$ReminderAddedCopyWith<$Res> {
  __$ReminderAddedCopyWithImpl(
      _ReminderAdded _value, $Res Function(_ReminderAdded) _then)
      : super(_value, (v) => _then(v as _ReminderAdded));

  @override
  _ReminderAdded get _value => super._value as _ReminderAdded;

  @override
  $Res call({
    Object reminder = freezed,
  }) {
    return _then(_ReminderAdded(
      reminder == freezed ? _value.reminder : reminder as Reminder,
    ));
  }

  @override
  $ReminderCopyWith<$Res> get reminder {
    if (_value.reminder == null) {
      return null;
    }
    return $ReminderCopyWith<$Res>(_value.reminder, (value) {
      return _then(_value.copyWith(reminder: value));
    });
  }
}

/// @nodoc
class _$_ReminderAdded implements _ReminderAdded {
  const _$_ReminderAdded(this.reminder) : assert(reminder != null);

  @override
  final Reminder reminder;

  @override
  String toString() {
    return 'EventFormEvent.reminderAdded(reminder: $reminder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReminderAdded &&
            (identical(other.reminder, reminder) ||
                const DeepCollectionEquality()
                    .equals(other.reminder, reminder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reminder);

  @override
  _$ReminderAddedCopyWith<_ReminderAdded> get copyWith =>
      __$ReminderAddedCopyWithImpl<_ReminderAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Event> initialEventOption),
    @required TResult titleChanged(String titleStr),
    @required TResult bodyChanged(String bodyStr),
    @required TResult isAllDayChanged(bool isAllDay),
    @required TResult startDateChanged(DateTime date),
    @required TResult startTimeChanged(TimeOfDay start),
    @required TResult endDateChanged(DateTime date),
    @required TResult endTimeChanged(TimeOfDay end),
    @required TResult reminderAdded(Reminder reminder),
    @required TResult reminderRemoved(Reminder reminder),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return reminderAdded(reminder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Event> initialEventOption),
    TResult titleChanged(String titleStr),
    TResult bodyChanged(String bodyStr),
    TResult isAllDayChanged(bool isAllDay),
    TResult startDateChanged(DateTime date),
    TResult startTimeChanged(TimeOfDay start),
    TResult endDateChanged(DateTime date),
    TResult endTimeChanged(TimeOfDay end),
    TResult reminderAdded(Reminder reminder),
    TResult reminderRemoved(Reminder reminder),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reminderAdded != null) {
      return reminderAdded(reminder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult isAllDayChanged(_IsAllDayChanged value),
    @required TResult startDateChanged(_StartDateChanged value),
    @required TResult startTimeChanged(_StartTimeChanged value),
    @required TResult endDateChanged(_EndDateChanged value),
    @required TResult endTimeChanged(_EndTimeChanged value),
    @required TResult reminderAdded(_ReminderAdded value),
    @required TResult reminderRemoved(_ReminderRemoved value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return reminderAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult isAllDayChanged(_IsAllDayChanged value),
    TResult startDateChanged(_StartDateChanged value),
    TResult startTimeChanged(_StartTimeChanged value),
    TResult endDateChanged(_EndDateChanged value),
    TResult endTimeChanged(_EndTimeChanged value),
    TResult reminderAdded(_ReminderAdded value),
    TResult reminderRemoved(_ReminderRemoved value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reminderAdded != null) {
      return reminderAdded(this);
    }
    return orElse();
  }
}

abstract class _ReminderAdded implements EventFormEvent {
  const factory _ReminderAdded(Reminder reminder) = _$_ReminderAdded;

  Reminder get reminder;
  _$ReminderAddedCopyWith<_ReminderAdded> get copyWith;
}

/// @nodoc
abstract class _$ReminderRemovedCopyWith<$Res> {
  factory _$ReminderRemovedCopyWith(
          _ReminderRemoved value, $Res Function(_ReminderRemoved) then) =
      __$ReminderRemovedCopyWithImpl<$Res>;
  $Res call({Reminder reminder});

  $ReminderCopyWith<$Res> get reminder;
}

/// @nodoc
class __$ReminderRemovedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$ReminderRemovedCopyWith<$Res> {
  __$ReminderRemovedCopyWithImpl(
      _ReminderRemoved _value, $Res Function(_ReminderRemoved) _then)
      : super(_value, (v) => _then(v as _ReminderRemoved));

  @override
  _ReminderRemoved get _value => super._value as _ReminderRemoved;

  @override
  $Res call({
    Object reminder = freezed,
  }) {
    return _then(_ReminderRemoved(
      reminder == freezed ? _value.reminder : reminder as Reminder,
    ));
  }

  @override
  $ReminderCopyWith<$Res> get reminder {
    if (_value.reminder == null) {
      return null;
    }
    return $ReminderCopyWith<$Res>(_value.reminder, (value) {
      return _then(_value.copyWith(reminder: value));
    });
  }
}

/// @nodoc
class _$_ReminderRemoved implements _ReminderRemoved {
  const _$_ReminderRemoved(this.reminder) : assert(reminder != null);

  @override
  final Reminder reminder;

  @override
  String toString() {
    return 'EventFormEvent.reminderRemoved(reminder: $reminder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReminderRemoved &&
            (identical(other.reminder, reminder) ||
                const DeepCollectionEquality()
                    .equals(other.reminder, reminder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reminder);

  @override
  _$ReminderRemovedCopyWith<_ReminderRemoved> get copyWith =>
      __$ReminderRemovedCopyWithImpl<_ReminderRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Event> initialEventOption),
    @required TResult titleChanged(String titleStr),
    @required TResult bodyChanged(String bodyStr),
    @required TResult isAllDayChanged(bool isAllDay),
    @required TResult startDateChanged(DateTime date),
    @required TResult startTimeChanged(TimeOfDay start),
    @required TResult endDateChanged(DateTime date),
    @required TResult endTimeChanged(TimeOfDay end),
    @required TResult reminderAdded(Reminder reminder),
    @required TResult reminderRemoved(Reminder reminder),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return reminderRemoved(reminder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Event> initialEventOption),
    TResult titleChanged(String titleStr),
    TResult bodyChanged(String bodyStr),
    TResult isAllDayChanged(bool isAllDay),
    TResult startDateChanged(DateTime date),
    TResult startTimeChanged(TimeOfDay start),
    TResult endDateChanged(DateTime date),
    TResult endTimeChanged(TimeOfDay end),
    TResult reminderAdded(Reminder reminder),
    TResult reminderRemoved(Reminder reminder),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reminderRemoved != null) {
      return reminderRemoved(reminder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult isAllDayChanged(_IsAllDayChanged value),
    @required TResult startDateChanged(_StartDateChanged value),
    @required TResult startTimeChanged(_StartTimeChanged value),
    @required TResult endDateChanged(_EndDateChanged value),
    @required TResult endTimeChanged(_EndTimeChanged value),
    @required TResult reminderAdded(_ReminderAdded value),
    @required TResult reminderRemoved(_ReminderRemoved value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return reminderRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult isAllDayChanged(_IsAllDayChanged value),
    TResult startDateChanged(_StartDateChanged value),
    TResult startTimeChanged(_StartTimeChanged value),
    TResult endDateChanged(_EndDateChanged value),
    TResult endTimeChanged(_EndTimeChanged value),
    TResult reminderAdded(_ReminderAdded value),
    TResult reminderRemoved(_ReminderRemoved value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reminderRemoved != null) {
      return reminderRemoved(this);
    }
    return orElse();
  }
}

abstract class _ReminderRemoved implements EventFormEvent {
  const factory _ReminderRemoved(Reminder reminder) = _$_ReminderRemoved;

  Reminder get reminder;
  _$ReminderRemovedCopyWith<_ReminderRemoved> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$EventFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc
class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'EventFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Event> initialEventOption),
    @required TResult titleChanged(String titleStr),
    @required TResult bodyChanged(String bodyStr),
    @required TResult isAllDayChanged(bool isAllDay),
    @required TResult startDateChanged(DateTime date),
    @required TResult startTimeChanged(TimeOfDay start),
    @required TResult endDateChanged(DateTime date),
    @required TResult endTimeChanged(TimeOfDay end),
    @required TResult reminderAdded(Reminder reminder),
    @required TResult reminderRemoved(Reminder reminder),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Event> initialEventOption),
    TResult titleChanged(String titleStr),
    TResult bodyChanged(String bodyStr),
    TResult isAllDayChanged(bool isAllDay),
    TResult startDateChanged(DateTime date),
    TResult startTimeChanged(TimeOfDay start),
    TResult endDateChanged(DateTime date),
    TResult endTimeChanged(TimeOfDay end),
    TResult reminderAdded(Reminder reminder),
    TResult reminderRemoved(Reminder reminder),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult titleChanged(_TitleChanged value),
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult isAllDayChanged(_IsAllDayChanged value),
    @required TResult startDateChanged(_StartDateChanged value),
    @required TResult startTimeChanged(_StartTimeChanged value),
    @required TResult endDateChanged(_EndDateChanged value),
    @required TResult endTimeChanged(_EndTimeChanged value),
    @required TResult reminderAdded(_ReminderAdded value),
    @required TResult reminderRemoved(_ReminderRemoved value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(bodyChanged != null);
    assert(isAllDayChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endTimeChanged != null);
    assert(reminderAdded != null);
    assert(reminderRemoved != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult titleChanged(_TitleChanged value),
    TResult bodyChanged(_BodyChanged value),
    TResult isAllDayChanged(_IsAllDayChanged value),
    TResult startDateChanged(_StartDateChanged value),
    TResult startTimeChanged(_StartTimeChanged value),
    TResult endDateChanged(_EndDateChanged value),
    TResult endTimeChanged(_EndTimeChanged value),
    TResult reminderAdded(_ReminderAdded value),
    TResult reminderRemoved(_ReminderRemoved value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements EventFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$EventFormStateTearOff {
  const _$EventFormStateTearOff();

// ignore: unused_element
  _EventFormState call(
      {@required
          Event event,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<CalendarFailure, Unit>> saveFailureOrSuccessOption}) {
    return _EventFormState(
      event: event,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EventFormState = _$EventFormStateTearOff();

/// @nodoc
mixin _$EventFormState {
  Event get event;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<CalendarFailure, Unit>> get saveFailureOrSuccessOption;

  $EventFormStateCopyWith<EventFormState> get copyWith;
}

/// @nodoc
abstract class $EventFormStateCopyWith<$Res> {
  factory $EventFormStateCopyWith(
          EventFormState value, $Res Function(EventFormState) then) =
      _$EventFormStateCopyWithImpl<$Res>;
  $Res call(
      {Event event,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<CalendarFailure, Unit>> saveFailureOrSuccessOption});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class _$EventFormStateCopyWithImpl<$Res>
    implements $EventFormStateCopyWith<$Res> {
  _$EventFormStateCopyWithImpl(this._value, this._then);

  final EventFormState _value;
  // ignore: unused_field
  final $Res Function(EventFormState) _then;

  @override
  $Res call({
    Object event = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      event: event == freezed ? _value.event : event as Event,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<CalendarFailure, Unit>>,
    ));
  }

  @override
  $EventCopyWith<$Res> get event {
    if (_value.event == null) {
      return null;
    }
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc
abstract class _$EventFormStateCopyWith<$Res>
    implements $EventFormStateCopyWith<$Res> {
  factory _$EventFormStateCopyWith(
          _EventFormState value, $Res Function(_EventFormState) then) =
      __$EventFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Event event,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<CalendarFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$EventFormStateCopyWithImpl<$Res>
    extends _$EventFormStateCopyWithImpl<$Res>
    implements _$EventFormStateCopyWith<$Res> {
  __$EventFormStateCopyWithImpl(
      _EventFormState _value, $Res Function(_EventFormState) _then)
      : super(_value, (v) => _then(v as _EventFormState));

  @override
  _EventFormState get _value => super._value as _EventFormState;

  @override
  $Res call({
    Object event = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_EventFormState(
      event: event == freezed ? _value.event : event as Event,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<CalendarFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_EventFormState implements _EventFormState {
  const _$_EventFormState(
      {@required this.event,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(event != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Event event;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<CalendarFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'EventFormState(event: $event, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventFormState &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(event) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$EventFormStateCopyWith<_EventFormState> get copyWith =>
      __$EventFormStateCopyWithImpl<_EventFormState>(this, _$identity);
}

abstract class _EventFormState implements EventFormState {
  const factory _EventFormState(
      {@required
          Event event,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<CalendarFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_EventFormState;

  @override
  Event get event;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<CalendarFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$EventFormStateCopyWith<_EventFormState> get copyWith;
}
