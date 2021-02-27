// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ContentItemTearOff {
  const _$ContentItemTearOff();

// ignore: unused_element
  Heading1 heading1({UniqueId id, UniqueId pid, String body}) {
    return Heading1(
      id: id,
      pid: pid,
      body: body,
    );
  }

// ignore: unused_element
  Heading2 heading2({UniqueId id, UniqueId pid, String body}) {
    return Heading2(
      id: id,
      pid: pid,
      body: body,
    );
  }

// ignore: unused_element
  Paragraph paragraph({UniqueId id, UniqueId pid, String body}) {
    return Paragraph(
      id: id,
      pid: pid,
      body: body,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ContentItem = _$ContentItemTearOff();

/// @nodoc
mixin _$ContentItem {
  UniqueId get id;
  UniqueId get pid;
  String get body;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult heading1(UniqueId id, UniqueId pid, String body),
    @required TResult heading2(UniqueId id, UniqueId pid, String body),
    @required TResult paragraph(UniqueId id, UniqueId pid, String body),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult heading1(UniqueId id, UniqueId pid, String body),
    TResult heading2(UniqueId id, UniqueId pid, String body),
    TResult paragraph(UniqueId id, UniqueId pid, String body),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult heading1(Heading1 value),
    @required TResult heading2(Heading2 value),
    @required TResult paragraph(Paragraph value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult heading1(Heading1 value),
    TResult heading2(Heading2 value),
    TResult paragraph(Paragraph value),
    @required TResult orElse(),
  });

  $ContentItemCopyWith<ContentItem> get copyWith;
}

/// @nodoc
abstract class $ContentItemCopyWith<$Res> {
  factory $ContentItemCopyWith(
          ContentItem value, $Res Function(ContentItem) then) =
      _$ContentItemCopyWithImpl<$Res>;
  $Res call({UniqueId id, UniqueId pid, String body});
}

/// @nodoc
class _$ContentItemCopyWithImpl<$Res> implements $ContentItemCopyWith<$Res> {
  _$ContentItemCopyWithImpl(this._value, this._then);

  final ContentItem _value;
  // ignore: unused_field
  final $Res Function(ContentItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object pid = freezed,
    Object body = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      pid: pid == freezed ? _value.pid : pid as UniqueId,
      body: body == freezed ? _value.body : body as String,
    ));
  }
}

/// @nodoc
abstract class $Heading1CopyWith<$Res> implements $ContentItemCopyWith<$Res> {
  factory $Heading1CopyWith(Heading1 value, $Res Function(Heading1) then) =
      _$Heading1CopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, UniqueId pid, String body});
}

/// @nodoc
class _$Heading1CopyWithImpl<$Res> extends _$ContentItemCopyWithImpl<$Res>
    implements $Heading1CopyWith<$Res> {
  _$Heading1CopyWithImpl(Heading1 _value, $Res Function(Heading1) _then)
      : super(_value, (v) => _then(v as Heading1));

  @override
  Heading1 get _value => super._value as Heading1;

  @override
  $Res call({
    Object id = freezed,
    Object pid = freezed,
    Object body = freezed,
  }) {
    return _then(Heading1(
      id: id == freezed ? _value.id : id as UniqueId,
      pid: pid == freezed ? _value.pid : pid as UniqueId,
      body: body == freezed ? _value.body : body as String,
    ));
  }
}

/// @nodoc
class _$Heading1 implements Heading1 {
  const _$Heading1({this.id, this.pid, this.body});

  @override
  final UniqueId id;
  @override
  final UniqueId pid;
  @override
  final String body;

  @override
  String toString() {
    return 'ContentItem.heading1(id: $id, pid: $pid, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Heading1 &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.pid, pid) ||
                const DeepCollectionEquality().equals(other.pid, pid)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(pid) ^
      const DeepCollectionEquality().hash(body);

  @override
  $Heading1CopyWith<Heading1> get copyWith =>
      _$Heading1CopyWithImpl<Heading1>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult heading1(UniqueId id, UniqueId pid, String body),
    @required TResult heading2(UniqueId id, UniqueId pid, String body),
    @required TResult paragraph(UniqueId id, UniqueId pid, String body),
  }) {
    assert(heading1 != null);
    assert(heading2 != null);
    assert(paragraph != null);
    return heading1(id, pid, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult heading1(UniqueId id, UniqueId pid, String body),
    TResult heading2(UniqueId id, UniqueId pid, String body),
    TResult paragraph(UniqueId id, UniqueId pid, String body),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (heading1 != null) {
      return heading1(id, pid, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult heading1(Heading1 value),
    @required TResult heading2(Heading2 value),
    @required TResult paragraph(Paragraph value),
  }) {
    assert(heading1 != null);
    assert(heading2 != null);
    assert(paragraph != null);
    return heading1(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult heading1(Heading1 value),
    TResult heading2(Heading2 value),
    TResult paragraph(Paragraph value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (heading1 != null) {
      return heading1(this);
    }
    return orElse();
  }
}

abstract class Heading1 implements ContentItem {
  const factory Heading1({UniqueId id, UniqueId pid, String body}) = _$Heading1;

  @override
  UniqueId get id;
  @override
  UniqueId get pid;
  @override
  String get body;
  @override
  $Heading1CopyWith<Heading1> get copyWith;
}

/// @nodoc
abstract class $Heading2CopyWith<$Res> implements $ContentItemCopyWith<$Res> {
  factory $Heading2CopyWith(Heading2 value, $Res Function(Heading2) then) =
      _$Heading2CopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, UniqueId pid, String body});
}

/// @nodoc
class _$Heading2CopyWithImpl<$Res> extends _$ContentItemCopyWithImpl<$Res>
    implements $Heading2CopyWith<$Res> {
  _$Heading2CopyWithImpl(Heading2 _value, $Res Function(Heading2) _then)
      : super(_value, (v) => _then(v as Heading2));

  @override
  Heading2 get _value => super._value as Heading2;

  @override
  $Res call({
    Object id = freezed,
    Object pid = freezed,
    Object body = freezed,
  }) {
    return _then(Heading2(
      id: id == freezed ? _value.id : id as UniqueId,
      pid: pid == freezed ? _value.pid : pid as UniqueId,
      body: body == freezed ? _value.body : body as String,
    ));
  }
}

/// @nodoc
class _$Heading2 implements Heading2 {
  const _$Heading2({this.id, this.pid, this.body});

  @override
  final UniqueId id;
  @override
  final UniqueId pid;
  @override
  final String body;

  @override
  String toString() {
    return 'ContentItem.heading2(id: $id, pid: $pid, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Heading2 &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.pid, pid) ||
                const DeepCollectionEquality().equals(other.pid, pid)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(pid) ^
      const DeepCollectionEquality().hash(body);

  @override
  $Heading2CopyWith<Heading2> get copyWith =>
      _$Heading2CopyWithImpl<Heading2>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult heading1(UniqueId id, UniqueId pid, String body),
    @required TResult heading2(UniqueId id, UniqueId pid, String body),
    @required TResult paragraph(UniqueId id, UniqueId pid, String body),
  }) {
    assert(heading1 != null);
    assert(heading2 != null);
    assert(paragraph != null);
    return heading2(id, pid, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult heading1(UniqueId id, UniqueId pid, String body),
    TResult heading2(UniqueId id, UniqueId pid, String body),
    TResult paragraph(UniqueId id, UniqueId pid, String body),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (heading2 != null) {
      return heading2(id, pid, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult heading1(Heading1 value),
    @required TResult heading2(Heading2 value),
    @required TResult paragraph(Paragraph value),
  }) {
    assert(heading1 != null);
    assert(heading2 != null);
    assert(paragraph != null);
    return heading2(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult heading1(Heading1 value),
    TResult heading2(Heading2 value),
    TResult paragraph(Paragraph value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (heading2 != null) {
      return heading2(this);
    }
    return orElse();
  }
}

abstract class Heading2 implements ContentItem {
  const factory Heading2({UniqueId id, UniqueId pid, String body}) = _$Heading2;

  @override
  UniqueId get id;
  @override
  UniqueId get pid;
  @override
  String get body;
  @override
  $Heading2CopyWith<Heading2> get copyWith;
}

/// @nodoc
abstract class $ParagraphCopyWith<$Res> implements $ContentItemCopyWith<$Res> {
  factory $ParagraphCopyWith(Paragraph value, $Res Function(Paragraph) then) =
      _$ParagraphCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, UniqueId pid, String body});
}

/// @nodoc
class _$ParagraphCopyWithImpl<$Res> extends _$ContentItemCopyWithImpl<$Res>
    implements $ParagraphCopyWith<$Res> {
  _$ParagraphCopyWithImpl(Paragraph _value, $Res Function(Paragraph) _then)
      : super(_value, (v) => _then(v as Paragraph));

  @override
  Paragraph get _value => super._value as Paragraph;

  @override
  $Res call({
    Object id = freezed,
    Object pid = freezed,
    Object body = freezed,
  }) {
    return _then(Paragraph(
      id: id == freezed ? _value.id : id as UniqueId,
      pid: pid == freezed ? _value.pid : pid as UniqueId,
      body: body == freezed ? _value.body : body as String,
    ));
  }
}

/// @nodoc
class _$Paragraph implements Paragraph {
  const _$Paragraph({this.id, this.pid, this.body});

  @override
  final UniqueId id;
  @override
  final UniqueId pid;
  @override
  final String body;

  @override
  String toString() {
    return 'ContentItem.paragraph(id: $id, pid: $pid, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Paragraph &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.pid, pid) ||
                const DeepCollectionEquality().equals(other.pid, pid)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(pid) ^
      const DeepCollectionEquality().hash(body);

  @override
  $ParagraphCopyWith<Paragraph> get copyWith =>
      _$ParagraphCopyWithImpl<Paragraph>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult heading1(UniqueId id, UniqueId pid, String body),
    @required TResult heading2(UniqueId id, UniqueId pid, String body),
    @required TResult paragraph(UniqueId id, UniqueId pid, String body),
  }) {
    assert(heading1 != null);
    assert(heading2 != null);
    assert(paragraph != null);
    return paragraph(id, pid, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult heading1(UniqueId id, UniqueId pid, String body),
    TResult heading2(UniqueId id, UniqueId pid, String body),
    TResult paragraph(UniqueId id, UniqueId pid, String body),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paragraph != null) {
      return paragraph(id, pid, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult heading1(Heading1 value),
    @required TResult heading2(Heading2 value),
    @required TResult paragraph(Paragraph value),
  }) {
    assert(heading1 != null);
    assert(heading2 != null);
    assert(paragraph != null);
    return paragraph(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult heading1(Heading1 value),
    TResult heading2(Heading2 value),
    TResult paragraph(Paragraph value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paragraph != null) {
      return paragraph(this);
    }
    return orElse();
  }
}

abstract class Paragraph implements ContentItem {
  const factory Paragraph({UniqueId id, UniqueId pid, String body}) =
      _$Paragraph;

  @override
  UniqueId get id;
  @override
  UniqueId get pid;
  @override
  String get body;
  @override
  $ParagraphCopyWith<Paragraph> get copyWith;
}
