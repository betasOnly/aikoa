// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  ExceedingLength<T> exceedingLength<T>(
      {@required T failedValue, @required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  Multiline<T> multiline<T>({@required T failedValue}) {
    return Multiline<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  NumberTooLarge<T> numberTooLarge<T>(
      {@required T failedValue, @required num max}) {
    return NumberTooLarge<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  ListTooLong<T> listTooLong<T>({@required T failedValue, @required int max}) {
    return ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  IntNegative<T> intNegative<T>({@required T failedValue}) {
    return IntNegative<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  EndBeforeStart<T> endBeforeStart<T>({@required T failedValue}) {
    return EndBeforeStart<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  IsDueToday<T> isDueToday<T>({@required T failedValue}) {
    return IsDueToday<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  IsOverdue<T> isOverdue<T>({@required T failedValue}) {
    return IsOverdue<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult numberTooLarge(T failedValue, num max),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult intNegative(T failedValue),
    @required TResult endBeforeStart(T failedValue),
    @required TResult isDueToday(T failedValue),
    @required TResult isOverdue(T failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult numberTooLarge(T failedValue, num max),
    TResult listTooLong(T failedValue, int max),
    TResult intNegative(T failedValue),
    TResult endBeforeStart(T failedValue),
    TResult isDueToday(T failedValue),
    TResult isOverdue(T failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult numberTooLarge(NumberTooLarge<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult intNegative(IntNegative<T> value),
    @required TResult endBeforeStart(EndBeforeStart<T> value),
    @required TResult isDueToday(IsDueToday<T> value),
    @required TResult isOverdue(IsOverdue<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult numberTooLarge(NumberTooLarge<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult intNegative(IntNegative<T> value),
    TResult endBeforeStart(EndBeforeStart<T> value),
    TResult isDueToday(IsDueToday<T> value),
    TResult isOverdue(IsOverdue<T> value),
    @required TResult orElse(),
  });

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ExceedingLength<T>
    with DiagnosticableTreeMixin
    implements ExceedingLength<T> {
  const _$ExceedingLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.exceedingLength'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult numberTooLarge(T failedValue, num max),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult intNegative(T failedValue),
    @required TResult endBeforeStart(T failedValue),
    @required TResult isDueToday(T failedValue),
    @required TResult isOverdue(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult numberTooLarge(T failedValue, num max),
    TResult listTooLong(T failedValue, int max),
    TResult intNegative(T failedValue),
    TResult endBeforeStart(T failedValue),
    TResult isDueToday(T failedValue),
    TResult isOverdue(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult numberTooLarge(NumberTooLarge<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult intNegative(IntNegative<T> value),
    @required TResult endBeforeStart(EndBeforeStart<T> value),
    @required TResult isDueToday(IsDueToday<T> value),
    @required TResult isOverdue(IsOverdue<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult numberTooLarge(NumberTooLarge<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult intNegative(IntNegative<T> value),
    TResult endBeforeStart(EndBeforeStart<T> value),
    TResult isDueToday(IsDueToday<T> value),
    TResult isOverdue(IsOverdue<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({@required T failedValue, @required int max}) =
      _$ExceedingLength<T>;

  @override
  T get failedValue;
  int get max;
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Empty<T> with DiagnosticableTreeMixin implements Empty<T> {
  const _$Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.empty'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult numberTooLarge(T failedValue, num max),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult intNegative(T failedValue),
    @required TResult endBeforeStart(T failedValue),
    @required TResult isDueToday(T failedValue),
    @required TResult isOverdue(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult numberTooLarge(T failedValue, num max),
    TResult listTooLong(T failedValue, int max),
    TResult intNegative(T failedValue),
    TResult endBeforeStart(T failedValue),
    TResult isDueToday(T failedValue),
    TResult isOverdue(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult numberTooLarge(NumberTooLarge<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult intNegative(IntNegative<T> value),
    @required TResult endBeforeStart(EndBeforeStart<T> value),
    @required TResult isDueToday(IsDueToday<T> value),
    @required TResult isOverdue(IsOverdue<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult numberTooLarge(NumberTooLarge<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult intNegative(IntNegative<T> value),
    TResult endBeforeStart(EndBeforeStart<T> value),
    TResult isDueToday(IsDueToday<T> value),
    TResult isOverdue(IsOverdue<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({@required T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

/// @nodoc
abstract class $MultilineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $MultilineCopyWith(
          Multiline<T> value, $Res Function(Multiline<T>) then) =
      _$MultilineCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$MultilineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MultilineCopyWith<T, $Res> {
  _$MultilineCopyWithImpl(
      Multiline<T> _value, $Res Function(Multiline<T>) _then)
      : super(_value, (v) => _then(v as Multiline<T>));

  @override
  Multiline<T> get _value => super._value as Multiline<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Multiline<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Multiline<T> with DiagnosticableTreeMixin implements Multiline<T> {
  const _$Multiline({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.multiline'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Multiline<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      _$MultilineCopyWithImpl<T, Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult numberTooLarge(T failedValue, num max),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult intNegative(T failedValue),
    @required TResult endBeforeStart(T failedValue),
    @required TResult isDueToday(T failedValue),
    @required TResult isOverdue(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult numberTooLarge(T failedValue, num max),
    TResult listTooLong(T failedValue, int max),
    TResult intNegative(T failedValue),
    TResult endBeforeStart(T failedValue),
    TResult isDueToday(T failedValue),
    TResult isOverdue(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult numberTooLarge(NumberTooLarge<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult intNegative(IntNegative<T> value),
    @required TResult endBeforeStart(EndBeforeStart<T> value),
    @required TResult isDueToday(IsDueToday<T> value),
    @required TResult isOverdue(IsOverdue<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult numberTooLarge(NumberTooLarge<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult intNegative(IntNegative<T> value),
    TResult endBeforeStart(EndBeforeStart<T> value),
    TResult isDueToday(IsDueToday<T> value),
    TResult isOverdue(IsOverdue<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  const factory Multiline({@required T failedValue}) = _$Multiline<T>;

  @override
  T get failedValue;
  @override
  $MultilineCopyWith<T, Multiline<T>> get copyWith;
}

/// @nodoc
abstract class $NumberTooLargeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $NumberTooLargeCopyWith(
          NumberTooLarge<T> value, $Res Function(NumberTooLarge<T>) then) =
      _$NumberTooLargeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, num max});
}

/// @nodoc
class _$NumberTooLargeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NumberTooLargeCopyWith<T, $Res> {
  _$NumberTooLargeCopyWithImpl(
      NumberTooLarge<T> _value, $Res Function(NumberTooLarge<T>) _then)
      : super(_value, (v) => _then(v as NumberTooLarge<T>));

  @override
  NumberTooLarge<T> get _value => super._value as NumberTooLarge<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(NumberTooLarge<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as num,
    ));
  }
}

/// @nodoc
class _$NumberTooLarge<T>
    with DiagnosticableTreeMixin
    implements NumberTooLarge<T> {
  const _$NumberTooLarge({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final num max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.numberTooLarge(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.numberTooLarge'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NumberTooLarge<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $NumberTooLargeCopyWith<T, NumberTooLarge<T>> get copyWith =>
      _$NumberTooLargeCopyWithImpl<T, NumberTooLarge<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult numberTooLarge(T failedValue, num max),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult intNegative(T failedValue),
    @required TResult endBeforeStart(T failedValue),
    @required TResult isDueToday(T failedValue),
    @required TResult isOverdue(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return numberTooLarge(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult numberTooLarge(T failedValue, num max),
    TResult listTooLong(T failedValue, int max),
    TResult intNegative(T failedValue),
    TResult endBeforeStart(T failedValue),
    TResult isDueToday(T failedValue),
    TResult isOverdue(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (numberTooLarge != null) {
      return numberTooLarge(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult numberTooLarge(NumberTooLarge<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult intNegative(IntNegative<T> value),
    @required TResult endBeforeStart(EndBeforeStart<T> value),
    @required TResult isDueToday(IsDueToday<T> value),
    @required TResult isOverdue(IsOverdue<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return numberTooLarge(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult numberTooLarge(NumberTooLarge<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult intNegative(IntNegative<T> value),
    TResult endBeforeStart(EndBeforeStart<T> value),
    TResult isDueToday(IsDueToday<T> value),
    TResult isOverdue(IsOverdue<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (numberTooLarge != null) {
      return numberTooLarge(this);
    }
    return orElse();
  }
}

abstract class NumberTooLarge<T> implements ValueFailure<T> {
  const factory NumberTooLarge({@required T failedValue, @required num max}) =
      _$NumberTooLarge<T>;

  @override
  T get failedValue;
  num get max;
  @override
  $NumberTooLargeCopyWith<T, NumberTooLarge<T>> get copyWith;
}

/// @nodoc
abstract class $ListTooLongCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ListTooLongCopyWith(
          ListTooLong<T> value, $Res Function(ListTooLong<T>) then) =
      _$ListTooLongCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ListTooLongCopyWith<T, $Res> {
  _$ListTooLongCopyWithImpl(
      ListTooLong<T> _value, $Res Function(ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as ListTooLong<T>));

  @override
  ListTooLong<T> get _value => super._value as ListTooLong<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ListTooLong<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ListTooLong<T> with DiagnosticableTreeMixin implements ListTooLong<T> {
  const _$ListTooLong({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.listTooLong'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListTooLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      _$ListTooLongCopyWithImpl<T, ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult numberTooLarge(T failedValue, num max),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult intNegative(T failedValue),
    @required TResult endBeforeStart(T failedValue),
    @required TResult isDueToday(T failedValue),
    @required TResult isOverdue(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult numberTooLarge(T failedValue, num max),
    TResult listTooLong(T failedValue, int max),
    TResult intNegative(T failedValue),
    TResult endBeforeStart(T failedValue),
    TResult isDueToday(T failedValue),
    TResult isOverdue(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult numberTooLarge(NumberTooLarge<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult intNegative(IntNegative<T> value),
    @required TResult endBeforeStart(EndBeforeStart<T> value),
    @required TResult isDueToday(IsDueToday<T> value),
    @required TResult isOverdue(IsOverdue<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult numberTooLarge(NumberTooLarge<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult intNegative(IntNegative<T> value),
    TResult endBeforeStart(EndBeforeStart<T> value),
    TResult isDueToday(IsDueToday<T> value),
    TResult isOverdue(IsOverdue<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  const factory ListTooLong({@required T failedValue, @required int max}) =
      _$ListTooLong<T>;

  @override
  T get failedValue;
  int get max;
  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith;
}

/// @nodoc
abstract class $IntNegativeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $IntNegativeCopyWith(
          IntNegative<T> value, $Res Function(IntNegative<T>) then) =
      _$IntNegativeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$IntNegativeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $IntNegativeCopyWith<T, $Res> {
  _$IntNegativeCopyWithImpl(
      IntNegative<T> _value, $Res Function(IntNegative<T>) _then)
      : super(_value, (v) => _then(v as IntNegative<T>));

  @override
  IntNegative<T> get _value => super._value as IntNegative<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(IntNegative<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$IntNegative<T> with DiagnosticableTreeMixin implements IntNegative<T> {
  const _$IntNegative({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.intNegative(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.intNegative'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IntNegative<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $IntNegativeCopyWith<T, IntNegative<T>> get copyWith =>
      _$IntNegativeCopyWithImpl<T, IntNegative<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult numberTooLarge(T failedValue, num max),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult intNegative(T failedValue),
    @required TResult endBeforeStart(T failedValue),
    @required TResult isDueToday(T failedValue),
    @required TResult isOverdue(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return intNegative(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult numberTooLarge(T failedValue, num max),
    TResult listTooLong(T failedValue, int max),
    TResult intNegative(T failedValue),
    TResult endBeforeStart(T failedValue),
    TResult isDueToday(T failedValue),
    TResult isOverdue(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (intNegative != null) {
      return intNegative(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult numberTooLarge(NumberTooLarge<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult intNegative(IntNegative<T> value),
    @required TResult endBeforeStart(EndBeforeStart<T> value),
    @required TResult isDueToday(IsDueToday<T> value),
    @required TResult isOverdue(IsOverdue<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return intNegative(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult numberTooLarge(NumberTooLarge<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult intNegative(IntNegative<T> value),
    TResult endBeforeStart(EndBeforeStart<T> value),
    TResult isDueToday(IsDueToday<T> value),
    TResult isOverdue(IsOverdue<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (intNegative != null) {
      return intNegative(this);
    }
    return orElse();
  }
}

abstract class IntNegative<T> implements ValueFailure<T> {
  const factory IntNegative({@required T failedValue}) = _$IntNegative<T>;

  @override
  T get failedValue;
  @override
  $IntNegativeCopyWith<T, IntNegative<T>> get copyWith;
}

/// @nodoc
abstract class $EndBeforeStartCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EndBeforeStartCopyWith(
          EndBeforeStart<T> value, $Res Function(EndBeforeStart<T>) then) =
      _$EndBeforeStartCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EndBeforeStartCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EndBeforeStartCopyWith<T, $Res> {
  _$EndBeforeStartCopyWithImpl(
      EndBeforeStart<T> _value, $Res Function(EndBeforeStart<T>) _then)
      : super(_value, (v) => _then(v as EndBeforeStart<T>));

  @override
  EndBeforeStart<T> get _value => super._value as EndBeforeStart<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(EndBeforeStart<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$EndBeforeStart<T>
    with DiagnosticableTreeMixin
    implements EndBeforeStart<T> {
  const _$EndBeforeStart({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.endBeforeStart(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.endBeforeStart'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EndBeforeStart<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $EndBeforeStartCopyWith<T, EndBeforeStart<T>> get copyWith =>
      _$EndBeforeStartCopyWithImpl<T, EndBeforeStart<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult numberTooLarge(T failedValue, num max),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult intNegative(T failedValue),
    @required TResult endBeforeStart(T failedValue),
    @required TResult isDueToday(T failedValue),
    @required TResult isOverdue(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return endBeforeStart(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult numberTooLarge(T failedValue, num max),
    TResult listTooLong(T failedValue, int max),
    TResult intNegative(T failedValue),
    TResult endBeforeStart(T failedValue),
    TResult isDueToday(T failedValue),
    TResult isOverdue(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (endBeforeStart != null) {
      return endBeforeStart(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult numberTooLarge(NumberTooLarge<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult intNegative(IntNegative<T> value),
    @required TResult endBeforeStart(EndBeforeStart<T> value),
    @required TResult isDueToday(IsDueToday<T> value),
    @required TResult isOverdue(IsOverdue<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return endBeforeStart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult numberTooLarge(NumberTooLarge<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult intNegative(IntNegative<T> value),
    TResult endBeforeStart(EndBeforeStart<T> value),
    TResult isDueToday(IsDueToday<T> value),
    TResult isOverdue(IsOverdue<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (endBeforeStart != null) {
      return endBeforeStart(this);
    }
    return orElse();
  }
}

abstract class EndBeforeStart<T> implements ValueFailure<T> {
  const factory EndBeforeStart({@required T failedValue}) = _$EndBeforeStart<T>;

  @override
  T get failedValue;
  @override
  $EndBeforeStartCopyWith<T, EndBeforeStart<T>> get copyWith;
}

/// @nodoc
abstract class $IsDueTodayCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $IsDueTodayCopyWith(
          IsDueToday<T> value, $Res Function(IsDueToday<T>) then) =
      _$IsDueTodayCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$IsDueTodayCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $IsDueTodayCopyWith<T, $Res> {
  _$IsDueTodayCopyWithImpl(
      IsDueToday<T> _value, $Res Function(IsDueToday<T>) _then)
      : super(_value, (v) => _then(v as IsDueToday<T>));

  @override
  IsDueToday<T> get _value => super._value as IsDueToday<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(IsDueToday<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$IsDueToday<T> with DiagnosticableTreeMixin implements IsDueToday<T> {
  const _$IsDueToday({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.isDueToday(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.isDueToday'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsDueToday<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $IsDueTodayCopyWith<T, IsDueToday<T>> get copyWith =>
      _$IsDueTodayCopyWithImpl<T, IsDueToday<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult numberTooLarge(T failedValue, num max),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult intNegative(T failedValue),
    @required TResult endBeforeStart(T failedValue),
    @required TResult isDueToday(T failedValue),
    @required TResult isOverdue(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return isDueToday(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult numberTooLarge(T failedValue, num max),
    TResult listTooLong(T failedValue, int max),
    TResult intNegative(T failedValue),
    TResult endBeforeStart(T failedValue),
    TResult isDueToday(T failedValue),
    TResult isOverdue(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isDueToday != null) {
      return isDueToday(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult numberTooLarge(NumberTooLarge<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult intNegative(IntNegative<T> value),
    @required TResult endBeforeStart(EndBeforeStart<T> value),
    @required TResult isDueToday(IsDueToday<T> value),
    @required TResult isOverdue(IsOverdue<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return isDueToday(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult numberTooLarge(NumberTooLarge<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult intNegative(IntNegative<T> value),
    TResult endBeforeStart(EndBeforeStart<T> value),
    TResult isDueToday(IsDueToday<T> value),
    TResult isOverdue(IsOverdue<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isDueToday != null) {
      return isDueToday(this);
    }
    return orElse();
  }
}

abstract class IsDueToday<T> implements ValueFailure<T> {
  const factory IsDueToday({@required T failedValue}) = _$IsDueToday<T>;

  @override
  T get failedValue;
  @override
  $IsDueTodayCopyWith<T, IsDueToday<T>> get copyWith;
}

/// @nodoc
abstract class $IsOverdueCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $IsOverdueCopyWith(
          IsOverdue<T> value, $Res Function(IsOverdue<T>) then) =
      _$IsOverdueCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$IsOverdueCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $IsOverdueCopyWith<T, $Res> {
  _$IsOverdueCopyWithImpl(
      IsOverdue<T> _value, $Res Function(IsOverdue<T>) _then)
      : super(_value, (v) => _then(v as IsOverdue<T>));

  @override
  IsOverdue<T> get _value => super._value as IsOverdue<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(IsOverdue<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$IsOverdue<T> with DiagnosticableTreeMixin implements IsOverdue<T> {
  const _$IsOverdue({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.isOverdue(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.isOverdue'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsOverdue<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $IsOverdueCopyWith<T, IsOverdue<T>> get copyWith =>
      _$IsOverdueCopyWithImpl<T, IsOverdue<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult numberTooLarge(T failedValue, num max),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult intNegative(T failedValue),
    @required TResult endBeforeStart(T failedValue),
    @required TResult isDueToday(T failedValue),
    @required TResult isOverdue(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return isOverdue(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult numberTooLarge(T failedValue, num max),
    TResult listTooLong(T failedValue, int max),
    TResult intNegative(T failedValue),
    TResult endBeforeStart(T failedValue),
    TResult isDueToday(T failedValue),
    TResult isOverdue(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isOverdue != null) {
      return isOverdue(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult numberTooLarge(NumberTooLarge<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult intNegative(IntNegative<T> value),
    @required TResult endBeforeStart(EndBeforeStart<T> value),
    @required TResult isDueToday(IsDueToday<T> value),
    @required TResult isOverdue(IsOverdue<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(intNegative != null);
    assert(endBeforeStart != null);
    assert(isDueToday != null);
    assert(isOverdue != null);
    return isOverdue(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult numberTooLarge(NumberTooLarge<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult intNegative(IntNegative<T> value),
    TResult endBeforeStart(EndBeforeStart<T> value),
    TResult isDueToday(IsDueToday<T> value),
    TResult isOverdue(IsOverdue<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isOverdue != null) {
      return isOverdue(this);
    }
    return orElse();
  }
}

abstract class IsOverdue<T> implements ValueFailure<T> {
  const factory IsOverdue({@required T failedValue}) = _$IsOverdue<T>;

  @override
  T get failedValue;
  @override
  $IsOverdueCopyWith<T, IsOverdue<T>> get copyWith;
}
