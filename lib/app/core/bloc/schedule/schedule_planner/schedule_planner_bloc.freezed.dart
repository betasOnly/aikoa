// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'schedule_planner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SchedulePlannerEventTearOff {
  const _$SchedulePlannerEventTearOff();

// ignore: unused_element
  _UnSelected unselected() {
    return const _UnSelected();
  }

// ignore: unused_element
  _Selected selected(TimeBox timebox) {
    return _Selected(
      timebox,
    );
  }

// ignore: unused_element
  _Updated updated(TimeBox timebox) {
    return _Updated(
      timebox,
    );
  }

// ignore: unused_element
  _Added added(TimeBox timebox) {
    return _Added(
      timebox,
    );
  }

// ignore: unused_element
  _Deleted deleted() {
    return const _Deleted();
  }

// ignore: unused_element
  _Inserted inserted() {
    return const _Inserted();
  }

// ignore: unused_element
  _MeridiemSwitched meridiemSwitched() {
    return const _MeridiemSwitched();
  }
}

/// @nodoc
// ignore: unused_element
const $SchedulePlannerEvent = _$SchedulePlannerEventTearOff();

/// @nodoc
mixin _$SchedulePlannerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unselected(),
    @required TResult selected(TimeBox timebox),
    @required TResult updated(TimeBox timebox),
    @required TResult added(TimeBox timebox),
    @required TResult deleted(),
    @required TResult inserted(),
    @required TResult meridiemSwitched(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unselected(),
    TResult selected(TimeBox timebox),
    TResult updated(TimeBox timebox),
    TResult added(TimeBox timebox),
    TResult deleted(),
    TResult inserted(),
    TResult meridiemSwitched(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unselected(_UnSelected value),
    @required TResult selected(_Selected value),
    @required TResult updated(_Updated value),
    @required TResult added(_Added value),
    @required TResult deleted(_Deleted value),
    @required TResult inserted(_Inserted value),
    @required TResult meridiemSwitched(_MeridiemSwitched value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unselected(_UnSelected value),
    TResult selected(_Selected value),
    TResult updated(_Updated value),
    TResult added(_Added value),
    TResult deleted(_Deleted value),
    TResult inserted(_Inserted value),
    TResult meridiemSwitched(_MeridiemSwitched value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SchedulePlannerEventCopyWith<$Res> {
  factory $SchedulePlannerEventCopyWith(SchedulePlannerEvent value,
          $Res Function(SchedulePlannerEvent) then) =
      _$SchedulePlannerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SchedulePlannerEventCopyWithImpl<$Res>
    implements $SchedulePlannerEventCopyWith<$Res> {
  _$SchedulePlannerEventCopyWithImpl(this._value, this._then);

  final SchedulePlannerEvent _value;
  // ignore: unused_field
  final $Res Function(SchedulePlannerEvent) _then;
}

/// @nodoc
abstract class _$UnSelectedCopyWith<$Res> {
  factory _$UnSelectedCopyWith(
          _UnSelected value, $Res Function(_UnSelected) then) =
      __$UnSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnSelectedCopyWithImpl<$Res>
    extends _$SchedulePlannerEventCopyWithImpl<$Res>
    implements _$UnSelectedCopyWith<$Res> {
  __$UnSelectedCopyWithImpl(
      _UnSelected _value, $Res Function(_UnSelected) _then)
      : super(_value, (v) => _then(v as _UnSelected));

  @override
  _UnSelected get _value => super._value as _UnSelected;
}

/// @nodoc
class _$_UnSelected implements _UnSelected {
  const _$_UnSelected();

  @override
  String toString() {
    return 'SchedulePlannerEvent.unselected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unselected(),
    @required TResult selected(TimeBox timebox),
    @required TResult updated(TimeBox timebox),
    @required TResult added(TimeBox timebox),
    @required TResult deleted(),
    @required TResult inserted(),
    @required TResult meridiemSwitched(),
  }) {
    assert(unselected != null);
    assert(selected != null);
    assert(updated != null);
    assert(added != null);
    assert(deleted != null);
    assert(inserted != null);
    assert(meridiemSwitched != null);
    return unselected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unselected(),
    TResult selected(TimeBox timebox),
    TResult updated(TimeBox timebox),
    TResult added(TimeBox timebox),
    TResult deleted(),
    TResult inserted(),
    TResult meridiemSwitched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unselected != null) {
      return unselected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unselected(_UnSelected value),
    @required TResult selected(_Selected value),
    @required TResult updated(_Updated value),
    @required TResult added(_Added value),
    @required TResult deleted(_Deleted value),
    @required TResult inserted(_Inserted value),
    @required TResult meridiemSwitched(_MeridiemSwitched value),
  }) {
    assert(unselected != null);
    assert(selected != null);
    assert(updated != null);
    assert(added != null);
    assert(deleted != null);
    assert(inserted != null);
    assert(meridiemSwitched != null);
    return unselected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unselected(_UnSelected value),
    TResult selected(_Selected value),
    TResult updated(_Updated value),
    TResult added(_Added value),
    TResult deleted(_Deleted value),
    TResult inserted(_Inserted value),
    TResult meridiemSwitched(_MeridiemSwitched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unselected != null) {
      return unselected(this);
    }
    return orElse();
  }
}

abstract class _UnSelected implements SchedulePlannerEvent {
  const factory _UnSelected() = _$_UnSelected;
}

/// @nodoc
abstract class _$SelectedCopyWith<$Res> {
  factory _$SelectedCopyWith(_Selected value, $Res Function(_Selected) then) =
      __$SelectedCopyWithImpl<$Res>;
  $Res call({TimeBox timebox});

  $TimeBoxCopyWith<$Res> get timebox;
}

/// @nodoc
class __$SelectedCopyWithImpl<$Res>
    extends _$SchedulePlannerEventCopyWithImpl<$Res>
    implements _$SelectedCopyWith<$Res> {
  __$SelectedCopyWithImpl(_Selected _value, $Res Function(_Selected) _then)
      : super(_value, (v) => _then(v as _Selected));

  @override
  _Selected get _value => super._value as _Selected;

  @override
  $Res call({
    Object timebox = freezed,
  }) {
    return _then(_Selected(
      timebox == freezed ? _value.timebox : timebox as TimeBox,
    ));
  }

  @override
  $TimeBoxCopyWith<$Res> get timebox {
    if (_value.timebox == null) {
      return null;
    }
    return $TimeBoxCopyWith<$Res>(_value.timebox, (value) {
      return _then(_value.copyWith(timebox: value));
    });
  }
}

/// @nodoc
class _$_Selected implements _Selected {
  const _$_Selected(this.timebox) : assert(timebox != null);

  @override
  final TimeBox timebox;

  @override
  String toString() {
    return 'SchedulePlannerEvent.selected(timebox: $timebox)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Selected &&
            (identical(other.timebox, timebox) ||
                const DeepCollectionEquality().equals(other.timebox, timebox)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(timebox);

  @override
  _$SelectedCopyWith<_Selected> get copyWith =>
      __$SelectedCopyWithImpl<_Selected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unselected(),
    @required TResult selected(TimeBox timebox),
    @required TResult updated(TimeBox timebox),
    @required TResult added(TimeBox timebox),
    @required TResult deleted(),
    @required TResult inserted(),
    @required TResult meridiemSwitched(),
  }) {
    assert(unselected != null);
    assert(selected != null);
    assert(updated != null);
    assert(added != null);
    assert(deleted != null);
    assert(inserted != null);
    assert(meridiemSwitched != null);
    return selected(timebox);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unselected(),
    TResult selected(TimeBox timebox),
    TResult updated(TimeBox timebox),
    TResult added(TimeBox timebox),
    TResult deleted(),
    TResult inserted(),
    TResult meridiemSwitched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selected != null) {
      return selected(timebox);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unselected(_UnSelected value),
    @required TResult selected(_Selected value),
    @required TResult updated(_Updated value),
    @required TResult added(_Added value),
    @required TResult deleted(_Deleted value),
    @required TResult inserted(_Inserted value),
    @required TResult meridiemSwitched(_MeridiemSwitched value),
  }) {
    assert(unselected != null);
    assert(selected != null);
    assert(updated != null);
    assert(added != null);
    assert(deleted != null);
    assert(inserted != null);
    assert(meridiemSwitched != null);
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unselected(_UnSelected value),
    TResult selected(_Selected value),
    TResult updated(_Updated value),
    TResult added(_Added value),
    TResult deleted(_Deleted value),
    TResult inserted(_Inserted value),
    TResult meridiemSwitched(_MeridiemSwitched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _Selected implements SchedulePlannerEvent {
  const factory _Selected(TimeBox timebox) = _$_Selected;

  TimeBox get timebox;
  _$SelectedCopyWith<_Selected> get copyWith;
}

/// @nodoc
abstract class _$UpdatedCopyWith<$Res> {
  factory _$UpdatedCopyWith(_Updated value, $Res Function(_Updated) then) =
      __$UpdatedCopyWithImpl<$Res>;
  $Res call({TimeBox timebox});

  $TimeBoxCopyWith<$Res> get timebox;
}

/// @nodoc
class __$UpdatedCopyWithImpl<$Res>
    extends _$SchedulePlannerEventCopyWithImpl<$Res>
    implements _$UpdatedCopyWith<$Res> {
  __$UpdatedCopyWithImpl(_Updated _value, $Res Function(_Updated) _then)
      : super(_value, (v) => _then(v as _Updated));

  @override
  _Updated get _value => super._value as _Updated;

  @override
  $Res call({
    Object timebox = freezed,
  }) {
    return _then(_Updated(
      timebox == freezed ? _value.timebox : timebox as TimeBox,
    ));
  }

  @override
  $TimeBoxCopyWith<$Res> get timebox {
    if (_value.timebox == null) {
      return null;
    }
    return $TimeBoxCopyWith<$Res>(_value.timebox, (value) {
      return _then(_value.copyWith(timebox: value));
    });
  }
}

/// @nodoc
class _$_Updated implements _Updated {
  const _$_Updated(this.timebox) : assert(timebox != null);

  @override
  final TimeBox timebox;

  @override
  String toString() {
    return 'SchedulePlannerEvent.updated(timebox: $timebox)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Updated &&
            (identical(other.timebox, timebox) ||
                const DeepCollectionEquality().equals(other.timebox, timebox)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(timebox);

  @override
  _$UpdatedCopyWith<_Updated> get copyWith =>
      __$UpdatedCopyWithImpl<_Updated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unselected(),
    @required TResult selected(TimeBox timebox),
    @required TResult updated(TimeBox timebox),
    @required TResult added(TimeBox timebox),
    @required TResult deleted(),
    @required TResult inserted(),
    @required TResult meridiemSwitched(),
  }) {
    assert(unselected != null);
    assert(selected != null);
    assert(updated != null);
    assert(added != null);
    assert(deleted != null);
    assert(inserted != null);
    assert(meridiemSwitched != null);
    return updated(timebox);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unselected(),
    TResult selected(TimeBox timebox),
    TResult updated(TimeBox timebox),
    TResult added(TimeBox timebox),
    TResult deleted(),
    TResult inserted(),
    TResult meridiemSwitched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(timebox);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unselected(_UnSelected value),
    @required TResult selected(_Selected value),
    @required TResult updated(_Updated value),
    @required TResult added(_Added value),
    @required TResult deleted(_Deleted value),
    @required TResult inserted(_Inserted value),
    @required TResult meridiemSwitched(_MeridiemSwitched value),
  }) {
    assert(unselected != null);
    assert(selected != null);
    assert(updated != null);
    assert(added != null);
    assert(deleted != null);
    assert(inserted != null);
    assert(meridiemSwitched != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unselected(_UnSelected value),
    TResult selected(_Selected value),
    TResult updated(_Updated value),
    TResult added(_Added value),
    TResult deleted(_Deleted value),
    TResult inserted(_Inserted value),
    TResult meridiemSwitched(_MeridiemSwitched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements SchedulePlannerEvent {
  const factory _Updated(TimeBox timebox) = _$_Updated;

  TimeBox get timebox;
  _$UpdatedCopyWith<_Updated> get copyWith;
}

/// @nodoc
abstract class _$AddedCopyWith<$Res> {
  factory _$AddedCopyWith(_Added value, $Res Function(_Added) then) =
      __$AddedCopyWithImpl<$Res>;
  $Res call({TimeBox timebox});

  $TimeBoxCopyWith<$Res> get timebox;
}

/// @nodoc
class __$AddedCopyWithImpl<$Res>
    extends _$SchedulePlannerEventCopyWithImpl<$Res>
    implements _$AddedCopyWith<$Res> {
  __$AddedCopyWithImpl(_Added _value, $Res Function(_Added) _then)
      : super(_value, (v) => _then(v as _Added));

  @override
  _Added get _value => super._value as _Added;

  @override
  $Res call({
    Object timebox = freezed,
  }) {
    return _then(_Added(
      timebox == freezed ? _value.timebox : timebox as TimeBox,
    ));
  }

  @override
  $TimeBoxCopyWith<$Res> get timebox {
    if (_value.timebox == null) {
      return null;
    }
    return $TimeBoxCopyWith<$Res>(_value.timebox, (value) {
      return _then(_value.copyWith(timebox: value));
    });
  }
}

/// @nodoc
class _$_Added implements _Added {
  const _$_Added(this.timebox) : assert(timebox != null);

  @override
  final TimeBox timebox;

  @override
  String toString() {
    return 'SchedulePlannerEvent.added(timebox: $timebox)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Added &&
            (identical(other.timebox, timebox) ||
                const DeepCollectionEquality().equals(other.timebox, timebox)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(timebox);

  @override
  _$AddedCopyWith<_Added> get copyWith =>
      __$AddedCopyWithImpl<_Added>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unselected(),
    @required TResult selected(TimeBox timebox),
    @required TResult updated(TimeBox timebox),
    @required TResult added(TimeBox timebox),
    @required TResult deleted(),
    @required TResult inserted(),
    @required TResult meridiemSwitched(),
  }) {
    assert(unselected != null);
    assert(selected != null);
    assert(updated != null);
    assert(added != null);
    assert(deleted != null);
    assert(inserted != null);
    assert(meridiemSwitched != null);
    return added(timebox);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unselected(),
    TResult selected(TimeBox timebox),
    TResult updated(TimeBox timebox),
    TResult added(TimeBox timebox),
    TResult deleted(),
    TResult inserted(),
    TResult meridiemSwitched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (added != null) {
      return added(timebox);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unselected(_UnSelected value),
    @required TResult selected(_Selected value),
    @required TResult updated(_Updated value),
    @required TResult added(_Added value),
    @required TResult deleted(_Deleted value),
    @required TResult inserted(_Inserted value),
    @required TResult meridiemSwitched(_MeridiemSwitched value),
  }) {
    assert(unselected != null);
    assert(selected != null);
    assert(updated != null);
    assert(added != null);
    assert(deleted != null);
    assert(inserted != null);
    assert(meridiemSwitched != null);
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unselected(_UnSelected value),
    TResult selected(_Selected value),
    TResult updated(_Updated value),
    TResult added(_Added value),
    TResult deleted(_Deleted value),
    TResult inserted(_Inserted value),
    TResult meridiemSwitched(_MeridiemSwitched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _Added implements SchedulePlannerEvent {
  const factory _Added(TimeBox timebox) = _$_Added;

  TimeBox get timebox;
  _$AddedCopyWith<_Added> get copyWith;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res>
    extends _$SchedulePlannerEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;
}

/// @nodoc
class _$_Deleted implements _Deleted {
  const _$_Deleted();

  @override
  String toString() {
    return 'SchedulePlannerEvent.deleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Deleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unselected(),
    @required TResult selected(TimeBox timebox),
    @required TResult updated(TimeBox timebox),
    @required TResult added(TimeBox timebox),
    @required TResult deleted(),
    @required TResult inserted(),
    @required TResult meridiemSwitched(),
  }) {
    assert(unselected != null);
    assert(selected != null);
    assert(updated != null);
    assert(added != null);
    assert(deleted != null);
    assert(inserted != null);
    assert(meridiemSwitched != null);
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unselected(),
    TResult selected(TimeBox timebox),
    TResult updated(TimeBox timebox),
    TResult added(TimeBox timebox),
    TResult deleted(),
    TResult inserted(),
    TResult meridiemSwitched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unselected(_UnSelected value),
    @required TResult selected(_Selected value),
    @required TResult updated(_Updated value),
    @required TResult added(_Added value),
    @required TResult deleted(_Deleted value),
    @required TResult inserted(_Inserted value),
    @required TResult meridiemSwitched(_MeridiemSwitched value),
  }) {
    assert(unselected != null);
    assert(selected != null);
    assert(updated != null);
    assert(added != null);
    assert(deleted != null);
    assert(inserted != null);
    assert(meridiemSwitched != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unselected(_UnSelected value),
    TResult selected(_Selected value),
    TResult updated(_Updated value),
    TResult added(_Added value),
    TResult deleted(_Deleted value),
    TResult inserted(_Inserted value),
    TResult meridiemSwitched(_MeridiemSwitched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements SchedulePlannerEvent {
  const factory _Deleted() = _$_Deleted;
}

/// @nodoc
abstract class _$InsertedCopyWith<$Res> {
  factory _$InsertedCopyWith(_Inserted value, $Res Function(_Inserted) then) =
      __$InsertedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InsertedCopyWithImpl<$Res>
    extends _$SchedulePlannerEventCopyWithImpl<$Res>
    implements _$InsertedCopyWith<$Res> {
  __$InsertedCopyWithImpl(_Inserted _value, $Res Function(_Inserted) _then)
      : super(_value, (v) => _then(v as _Inserted));

  @override
  _Inserted get _value => super._value as _Inserted;
}

/// @nodoc
class _$_Inserted implements _Inserted {
  const _$_Inserted();

  @override
  String toString() {
    return 'SchedulePlannerEvent.inserted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Inserted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unselected(),
    @required TResult selected(TimeBox timebox),
    @required TResult updated(TimeBox timebox),
    @required TResult added(TimeBox timebox),
    @required TResult deleted(),
    @required TResult inserted(),
    @required TResult meridiemSwitched(),
  }) {
    assert(unselected != null);
    assert(selected != null);
    assert(updated != null);
    assert(added != null);
    assert(deleted != null);
    assert(inserted != null);
    assert(meridiemSwitched != null);
    return inserted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unselected(),
    TResult selected(TimeBox timebox),
    TResult updated(TimeBox timebox),
    TResult added(TimeBox timebox),
    TResult deleted(),
    TResult inserted(),
    TResult meridiemSwitched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inserted != null) {
      return inserted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unselected(_UnSelected value),
    @required TResult selected(_Selected value),
    @required TResult updated(_Updated value),
    @required TResult added(_Added value),
    @required TResult deleted(_Deleted value),
    @required TResult inserted(_Inserted value),
    @required TResult meridiemSwitched(_MeridiemSwitched value),
  }) {
    assert(unselected != null);
    assert(selected != null);
    assert(updated != null);
    assert(added != null);
    assert(deleted != null);
    assert(inserted != null);
    assert(meridiemSwitched != null);
    return inserted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unselected(_UnSelected value),
    TResult selected(_Selected value),
    TResult updated(_Updated value),
    TResult added(_Added value),
    TResult deleted(_Deleted value),
    TResult inserted(_Inserted value),
    TResult meridiemSwitched(_MeridiemSwitched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inserted != null) {
      return inserted(this);
    }
    return orElse();
  }
}

abstract class _Inserted implements SchedulePlannerEvent {
  const factory _Inserted() = _$_Inserted;
}

/// @nodoc
abstract class _$MeridiemSwitchedCopyWith<$Res> {
  factory _$MeridiemSwitchedCopyWith(
          _MeridiemSwitched value, $Res Function(_MeridiemSwitched) then) =
      __$MeridiemSwitchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$MeridiemSwitchedCopyWithImpl<$Res>
    extends _$SchedulePlannerEventCopyWithImpl<$Res>
    implements _$MeridiemSwitchedCopyWith<$Res> {
  __$MeridiemSwitchedCopyWithImpl(
      _MeridiemSwitched _value, $Res Function(_MeridiemSwitched) _then)
      : super(_value, (v) => _then(v as _MeridiemSwitched));

  @override
  _MeridiemSwitched get _value => super._value as _MeridiemSwitched;
}

/// @nodoc
class _$_MeridiemSwitched implements _MeridiemSwitched {
  const _$_MeridiemSwitched();

  @override
  String toString() {
    return 'SchedulePlannerEvent.meridiemSwitched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MeridiemSwitched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unselected(),
    @required TResult selected(TimeBox timebox),
    @required TResult updated(TimeBox timebox),
    @required TResult added(TimeBox timebox),
    @required TResult deleted(),
    @required TResult inserted(),
    @required TResult meridiemSwitched(),
  }) {
    assert(unselected != null);
    assert(selected != null);
    assert(updated != null);
    assert(added != null);
    assert(deleted != null);
    assert(inserted != null);
    assert(meridiemSwitched != null);
    return meridiemSwitched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unselected(),
    TResult selected(TimeBox timebox),
    TResult updated(TimeBox timebox),
    TResult added(TimeBox timebox),
    TResult deleted(),
    TResult inserted(),
    TResult meridiemSwitched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (meridiemSwitched != null) {
      return meridiemSwitched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unselected(_UnSelected value),
    @required TResult selected(_Selected value),
    @required TResult updated(_Updated value),
    @required TResult added(_Added value),
    @required TResult deleted(_Deleted value),
    @required TResult inserted(_Inserted value),
    @required TResult meridiemSwitched(_MeridiemSwitched value),
  }) {
    assert(unselected != null);
    assert(selected != null);
    assert(updated != null);
    assert(added != null);
    assert(deleted != null);
    assert(inserted != null);
    assert(meridiemSwitched != null);
    return meridiemSwitched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unselected(_UnSelected value),
    TResult selected(_Selected value),
    TResult updated(_Updated value),
    TResult added(_Added value),
    TResult deleted(_Deleted value),
    TResult inserted(_Inserted value),
    TResult meridiemSwitched(_MeridiemSwitched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (meridiemSwitched != null) {
      return meridiemSwitched(this);
    }
    return orElse();
  }
}

abstract class _MeridiemSwitched implements SchedulePlannerEvent {
  const factory _MeridiemSwitched() = _$_MeridiemSwitched;
}

/// @nodoc
class _$SchedulePlannerStateTearOff {
  const _$SchedulePlannerStateTearOff();

// ignore: unused_element
  _SchedulePlannerState call(
      {@required
          Option<TimeBox> selected,
      @required
          Option<Either<ScheduleFailure, Unit>>
              scheduleFailureOrSuccessOption}) {
    return _SchedulePlannerState(
      selected: selected,
      scheduleFailureOrSuccessOption: scheduleFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SchedulePlannerState = _$SchedulePlannerStateTearOff();

/// @nodoc
mixin _$SchedulePlannerState {
  Option<TimeBox> get selected;
  Option<Either<ScheduleFailure, Unit>> get scheduleFailureOrSuccessOption;

  $SchedulePlannerStateCopyWith<SchedulePlannerState> get copyWith;
}

/// @nodoc
abstract class $SchedulePlannerStateCopyWith<$Res> {
  factory $SchedulePlannerStateCopyWith(SchedulePlannerState value,
          $Res Function(SchedulePlannerState) then) =
      _$SchedulePlannerStateCopyWithImpl<$Res>;
  $Res call(
      {Option<TimeBox> selected,
      Option<Either<ScheduleFailure, Unit>> scheduleFailureOrSuccessOption});
}

/// @nodoc
class _$SchedulePlannerStateCopyWithImpl<$Res>
    implements $SchedulePlannerStateCopyWith<$Res> {
  _$SchedulePlannerStateCopyWithImpl(this._value, this._then);

  final SchedulePlannerState _value;
  // ignore: unused_field
  final $Res Function(SchedulePlannerState) _then;

  @override
  $Res call({
    Object selected = freezed,
    Object scheduleFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      selected:
          selected == freezed ? _value.selected : selected as Option<TimeBox>,
      scheduleFailureOrSuccessOption: scheduleFailureOrSuccessOption == freezed
          ? _value.scheduleFailureOrSuccessOption
          : scheduleFailureOrSuccessOption
              as Option<Either<ScheduleFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SchedulePlannerStateCopyWith<$Res>
    implements $SchedulePlannerStateCopyWith<$Res> {
  factory _$SchedulePlannerStateCopyWith(_SchedulePlannerState value,
          $Res Function(_SchedulePlannerState) then) =
      __$SchedulePlannerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<TimeBox> selected,
      Option<Either<ScheduleFailure, Unit>> scheduleFailureOrSuccessOption});
}

/// @nodoc
class __$SchedulePlannerStateCopyWithImpl<$Res>
    extends _$SchedulePlannerStateCopyWithImpl<$Res>
    implements _$SchedulePlannerStateCopyWith<$Res> {
  __$SchedulePlannerStateCopyWithImpl(
      _SchedulePlannerState _value, $Res Function(_SchedulePlannerState) _then)
      : super(_value, (v) => _then(v as _SchedulePlannerState));

  @override
  _SchedulePlannerState get _value => super._value as _SchedulePlannerState;

  @override
  $Res call({
    Object selected = freezed,
    Object scheduleFailureOrSuccessOption = freezed,
  }) {
    return _then(_SchedulePlannerState(
      selected:
          selected == freezed ? _value.selected : selected as Option<TimeBox>,
      scheduleFailureOrSuccessOption: scheduleFailureOrSuccessOption == freezed
          ? _value.scheduleFailureOrSuccessOption
          : scheduleFailureOrSuccessOption
              as Option<Either<ScheduleFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_SchedulePlannerState implements _SchedulePlannerState {
  _$_SchedulePlannerState(
      {@required this.selected, @required this.scheduleFailureOrSuccessOption})
      : assert(selected != null),
        assert(scheduleFailureOrSuccessOption != null);

  @override
  final Option<TimeBox> selected;
  @override
  final Option<Either<ScheduleFailure, Unit>> scheduleFailureOrSuccessOption;

  bool _didisAM = false;
  bool _isAM;

  @override
  bool get isAM {
    if (_didisAM == false) {
      _didisAM = true;
      _isAM = selected.fold(
          () => DateTime.now().hour < 12, (timebox) => timebox.start.hour < 12);
    }
    return _isAM;
  }

  @override
  String toString() {
    return 'SchedulePlannerState(selected: $selected, scheduleFailureOrSuccessOption: $scheduleFailureOrSuccessOption, isAM: $isAM)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SchedulePlannerState &&
            (identical(other.selected, selected) ||
                const DeepCollectionEquality()
                    .equals(other.selected, selected)) &&
            (identical(other.scheduleFailureOrSuccessOption,
                    scheduleFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.scheduleFailureOrSuccessOption,
                    scheduleFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selected) ^
      const DeepCollectionEquality().hash(scheduleFailureOrSuccessOption);

  @override
  _$SchedulePlannerStateCopyWith<_SchedulePlannerState> get copyWith =>
      __$SchedulePlannerStateCopyWithImpl<_SchedulePlannerState>(
          this, _$identity);
}

abstract class _SchedulePlannerState implements SchedulePlannerState {
  factory _SchedulePlannerState(
      {@required
          Option<TimeBox> selected,
      @required
          Option<Either<ScheduleFailure, Unit>>
              scheduleFailureOrSuccessOption}) = _$_SchedulePlannerState;

  @override
  Option<TimeBox> get selected;
  @override
  Option<Either<ScheduleFailure, Unit>> get scheduleFailureOrSuccessOption;
  @override
  _$SchedulePlannerStateCopyWith<_SchedulePlannerState> get copyWith;
}
