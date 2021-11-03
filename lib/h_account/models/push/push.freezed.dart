// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'push.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PushTearOff {
  const _$PushTearOff();

  _Push call(
      {String? id,
      required String kind,
      String? contentsId,
      Profile? from,
      Profile? to,
      PushMessage? message,
      required DateTime dtCreated}) {
    return _Push(
      id: id,
      kind: kind,
      contentsId: contentsId,
      from: from,
      to: to,
      message: message,
      dtCreated: dtCreated,
    );
  }
}

/// @nodoc
const $Push = _$PushTearOff();

/// @nodoc
mixin _$Push {
  String? get id => throw _privateConstructorUsedError;
  String get kind => throw _privateConstructorUsedError;
  String? get contentsId => throw _privateConstructorUsedError;
  Profile? get from => throw _privateConstructorUsedError;
  Profile? get to => throw _privateConstructorUsedError;
  PushMessage? get message => throw _privateConstructorUsedError;
  DateTime get dtCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PushCopyWith<Push> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushCopyWith<$Res> {
  factory $PushCopyWith(Push value, $Res Function(Push) then) =
      _$PushCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String kind,
      String? contentsId,
      Profile? from,
      Profile? to,
      PushMessage? message,
      DateTime dtCreated});

  $ProfileCopyWith<$Res>? get from;
  $ProfileCopyWith<$Res>? get to;
  $PushMessageCopyWith<$Res>? get message;
}

/// @nodoc
class _$PushCopyWithImpl<$Res> implements $PushCopyWith<$Res> {
  _$PushCopyWithImpl(this._value, this._then);

  final Push _value;
  // ignore: unused_field
  final $Res Function(Push) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? kind = freezed,
    Object? contentsId = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? message = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      contentsId: contentsId == freezed
          ? _value.contentsId
          : contentsId // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Profile?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Profile?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as PushMessage?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ProfileCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $ProfileCopyWith<$Res>(_value.from!, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $ProfileCopyWith<$Res>? get to {
    if (_value.to == null) {
      return null;
    }

    return $ProfileCopyWith<$Res>(_value.to!, (value) {
      return _then(_value.copyWith(to: value));
    });
  }

  @override
  $PushMessageCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $PushMessageCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc
abstract class _$PushCopyWith<$Res> implements $PushCopyWith<$Res> {
  factory _$PushCopyWith(_Push value, $Res Function(_Push) then) =
      __$PushCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String kind,
      String? contentsId,
      Profile? from,
      Profile? to,
      PushMessage? message,
      DateTime dtCreated});

  @override
  $ProfileCopyWith<$Res>? get from;
  @override
  $ProfileCopyWith<$Res>? get to;
  @override
  $PushMessageCopyWith<$Res>? get message;
}

/// @nodoc
class __$PushCopyWithImpl<$Res> extends _$PushCopyWithImpl<$Res>
    implements _$PushCopyWith<$Res> {
  __$PushCopyWithImpl(_Push _value, $Res Function(_Push) _then)
      : super(_value, (v) => _then(v as _Push));

  @override
  _Push get _value => super._value as _Push;

  @override
  $Res call({
    Object? id = freezed,
    Object? kind = freezed,
    Object? contentsId = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? message = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_Push(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      contentsId: contentsId == freezed
          ? _value.contentsId
          : contentsId // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Profile?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Profile?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as PushMessage?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Push extends _Push {
  _$_Push(
      {this.id,
      required this.kind,
      this.contentsId,
      this.from,
      this.to,
      this.message,
      required this.dtCreated})
      : super._();

  @override
  final String? id;
  @override
  final String kind;
  @override
  final String? contentsId;
  @override
  final Profile? from;
  @override
  final Profile? to;
  @override
  final PushMessage? message;
  @override
  final DateTime dtCreated;

  @override
  String toString() {
    return 'Push(id: $id, kind: $kind, contentsId: $contentsId, from: $from, to: $to, message: $message, dtCreated: $dtCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Push &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.contentsId, contentsId) ||
                const DeepCollectionEquality()
                    .equals(other.contentsId, contentsId)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(contentsId) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(dtCreated);

  @JsonKey(ignore: true)
  @override
  _$PushCopyWith<_Push> get copyWith =>
      __$PushCopyWithImpl<_Push>(this, _$identity);
}

abstract class _Push extends Push {
  factory _Push(
      {String? id,
      required String kind,
      String? contentsId,
      Profile? from,
      Profile? to,
      PushMessage? message,
      required DateTime dtCreated}) = _$_Push;
  _Push._() : super._();

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get kind => throw _privateConstructorUsedError;
  @override
  String? get contentsId => throw _privateConstructorUsedError;
  @override
  Profile? get from => throw _privateConstructorUsedError;
  @override
  Profile? get to => throw _privateConstructorUsedError;
  @override
  PushMessage? get message => throw _privateConstructorUsedError;
  @override
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PushCopyWith<_Push> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$PushMessageTearOff {
  const _$PushMessageTearOff();

  _PushMessage call(
      {int? cnt,
      String? content,
      String? imageUrl,
      String? title,
      required DateTime dtCreated}) {
    return _PushMessage(
      cnt: cnt,
      content: content,
      imageUrl: imageUrl,
      title: title,
      dtCreated: dtCreated,
    );
  }
}

/// @nodoc
const $PushMessage = _$PushMessageTearOff();

/// @nodoc
mixin _$PushMessage {
  int? get cnt => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  DateTime get dtCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PushMessageCopyWith<PushMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushMessageCopyWith<$Res> {
  factory $PushMessageCopyWith(
          PushMessage value, $Res Function(PushMessage) then) =
      _$PushMessageCopyWithImpl<$Res>;
  $Res call(
      {int? cnt,
      String? content,
      String? imageUrl,
      String? title,
      DateTime dtCreated});
}

/// @nodoc
class _$PushMessageCopyWithImpl<$Res> implements $PushMessageCopyWith<$Res> {
  _$PushMessageCopyWithImpl(this._value, this._then);

  final PushMessage _value;
  // ignore: unused_field
  final $Res Function(PushMessage) _then;

  @override
  $Res call({
    Object? cnt = freezed,
    Object? content = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_value.copyWith(
      cnt: cnt == freezed
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$PushMessageCopyWith<$Res>
    implements $PushMessageCopyWith<$Res> {
  factory _$PushMessageCopyWith(
          _PushMessage value, $Res Function(_PushMessage) then) =
      __$PushMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? cnt,
      String? content,
      String? imageUrl,
      String? title,
      DateTime dtCreated});
}

/// @nodoc
class __$PushMessageCopyWithImpl<$Res> extends _$PushMessageCopyWithImpl<$Res>
    implements _$PushMessageCopyWith<$Res> {
  __$PushMessageCopyWithImpl(
      _PushMessage _value, $Res Function(_PushMessage) _then)
      : super(_value, (v) => _then(v as _PushMessage));

  @override
  _PushMessage get _value => super._value as _PushMessage;

  @override
  $Res call({
    Object? cnt = freezed,
    Object? content = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_PushMessage(
      cnt: cnt == freezed
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_PushMessage extends _PushMessage {
  _$_PushMessage(
      {this.cnt,
      this.content,
      this.imageUrl,
      this.title,
      required this.dtCreated})
      : super._();

  @override
  final int? cnt;
  @override
  final String? content;
  @override
  final String? imageUrl;
  @override
  final String? title;
  @override
  final DateTime dtCreated;

  @override
  String toString() {
    return 'PushMessage(cnt: $cnt, content: $content, imageUrl: $imageUrl, title: $title, dtCreated: $dtCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PushMessage &&
            (identical(other.cnt, cnt) ||
                const DeepCollectionEquality().equals(other.cnt, cnt)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cnt) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(dtCreated);

  @JsonKey(ignore: true)
  @override
  _$PushMessageCopyWith<_PushMessage> get copyWith =>
      __$PushMessageCopyWithImpl<_PushMessage>(this, _$identity);
}

abstract class _PushMessage extends PushMessage {
  factory _PushMessage(
      {int? cnt,
      String? content,
      String? imageUrl,
      String? title,
      required DateTime dtCreated}) = _$_PushMessage;
  _PushMessage._() : super._();

  @override
  int? get cnt => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PushMessageCopyWith<_PushMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
