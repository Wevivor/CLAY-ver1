// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'push_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PushDto _$PushDtoFromJson(Map<String, dynamic> json) {
  return _PushDto.fromJson(json);
}

/// @nodoc
class _$PushDtoTearOff {
  const _$PushDtoTearOff();

  _PushDto call(
      {required String kind,
      String? postId,
      String? id,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      required ProfileShortDto? from,
      required ProfileShortDto? to,
      PushMessageDto? message}) {
    return _PushDto(
      kind: kind,
      postId: postId,
      id: id,
      dtCreated: dtCreated,
      from: from,
      to: to,
      message: message,
    );
  }

  PushDto fromJson(Map<String, Object> json) {
    return PushDto.fromJson(json);
  }
}

/// @nodoc
const $PushDto = _$PushDtoTearOff();

/// @nodoc
mixin _$PushDto {
  String get kind => throw _privateConstructorUsedError;
  String? get postId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  ProfileShortDto? get from => throw _privateConstructorUsedError;
  ProfileShortDto? get to => throw _privateConstructorUsedError;
  PushMessageDto? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushDtoCopyWith<PushDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushDtoCopyWith<$Res> {
  factory $PushDtoCopyWith(PushDto value, $Res Function(PushDto) then) =
      _$PushDtoCopyWithImpl<$Res>;
  $Res call(
      {String kind,
      String? postId,
      String? id,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      ProfileShortDto? from,
      ProfileShortDto? to,
      PushMessageDto? message});

  $ProfileShortDtoCopyWith<$Res>? get from;
  $ProfileShortDtoCopyWith<$Res>? get to;
  $PushMessageDtoCopyWith<$Res>? get message;
}

/// @nodoc
class _$PushDtoCopyWithImpl<$Res> implements $PushDtoCopyWith<$Res> {
  _$PushDtoCopyWithImpl(this._value, this._then);

  final PushDto _value;
  // ignore: unused_field
  final $Res Function(PushDto) _then;

  @override
  $Res call({
    Object? kind = freezed,
    Object? postId = freezed,
    Object? id = freezed,
    Object? dtCreated = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as ProfileShortDto?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as ProfileShortDto?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as PushMessageDto?,
    ));
  }

  @override
  $ProfileShortDtoCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $ProfileShortDtoCopyWith<$Res>(_value.from!, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $ProfileShortDtoCopyWith<$Res>? get to {
    if (_value.to == null) {
      return null;
    }

    return $ProfileShortDtoCopyWith<$Res>(_value.to!, (value) {
      return _then(_value.copyWith(to: value));
    });
  }

  @override
  $PushMessageDtoCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $PushMessageDtoCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc
abstract class _$PushDtoCopyWith<$Res> implements $PushDtoCopyWith<$Res> {
  factory _$PushDtoCopyWith(_PushDto value, $Res Function(_PushDto) then) =
      __$PushDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String kind,
      String? postId,
      String? id,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      ProfileShortDto? from,
      ProfileShortDto? to,
      PushMessageDto? message});

  @override
  $ProfileShortDtoCopyWith<$Res>? get from;
  @override
  $ProfileShortDtoCopyWith<$Res>? get to;
  @override
  $PushMessageDtoCopyWith<$Res>? get message;
}

/// @nodoc
class __$PushDtoCopyWithImpl<$Res> extends _$PushDtoCopyWithImpl<$Res>
    implements _$PushDtoCopyWith<$Res> {
  __$PushDtoCopyWithImpl(_PushDto _value, $Res Function(_PushDto) _then)
      : super(_value, (v) => _then(v as _PushDto));

  @override
  _PushDto get _value => super._value as _PushDto;

  @override
  $Res call({
    Object? kind = freezed,
    Object? postId = freezed,
    Object? id = freezed,
    Object? dtCreated = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? message = freezed,
  }) {
    return _then(_PushDto(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as ProfileShortDto?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as ProfileShortDto?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as PushMessageDto?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PushDto extends _PushDto {
  _$_PushDto(
      {required this.kind,
      this.postId,
      this.id,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated,
      required this.from,
      required this.to,
      this.message})
      : super._();

  factory _$_PushDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PushDtoFromJson(json);

  @override
  final String kind;
  @override
  final String? postId;
  @override
  final String? id;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;
  @override
  final ProfileShortDto? from;
  @override
  final ProfileShortDto? to;
  @override
  final PushMessageDto? message;

  @override
  String toString() {
    return 'PushDto(kind: $kind, postId: $postId, id: $id, dtCreated: $dtCreated, from: $from, to: $to, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PushDto &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$PushDtoCopyWith<_PushDto> get copyWith =>
      __$PushDtoCopyWithImpl<_PushDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PushDtoToJson(this);
  }
}

abstract class _PushDto extends PushDto {
  factory _PushDto(
      {required String kind,
      String? postId,
      String? id,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      required ProfileShortDto? from,
      required ProfileShortDto? to,
      PushMessageDto? message}) = _$_PushDto;
  _PushDto._() : super._();

  factory _PushDto.fromJson(Map<String, dynamic> json) = _$_PushDto.fromJson;

  @override
  String get kind => throw _privateConstructorUsedError;
  @override
  String? get postId => throw _privateConstructorUsedError;
  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  ProfileShortDto? get from => throw _privateConstructorUsedError;
  @override
  ProfileShortDto? get to => throw _privateConstructorUsedError;
  @override
  PushMessageDto? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PushDtoCopyWith<_PushDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PushMessageDto _$PushMessageDtoFromJson(Map<String, dynamic> json) {
  return _PushMessageDto.fromJson(json);
}

/// @nodoc
class _$PushMessageDtoTearOff {
  const _$PushMessageDtoTearOff();

  _PushMessageDto call(
      {int? cnt,
      String? content,
      String? imageUrl,
      String? title,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) {
    return _PushMessageDto(
      cnt: cnt,
      content: content,
      imageUrl: imageUrl,
      title: title,
      dtCreated: dtCreated,
    );
  }

  PushMessageDto fromJson(Map<String, Object> json) {
    return PushMessageDto.fromJson(json);
  }
}

/// @nodoc
const $PushMessageDto = _$PushMessageDtoTearOff();

/// @nodoc
mixin _$PushMessageDto {
  int? get cnt => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushMessageDtoCopyWith<PushMessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushMessageDtoCopyWith<$Res> {
  factory $PushMessageDtoCopyWith(
          PushMessageDto value, $Res Function(PushMessageDto) then) =
      _$PushMessageDtoCopyWithImpl<$Res>;
  $Res call(
      {int? cnt,
      String? content,
      String? imageUrl,
      String? title,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});
}

/// @nodoc
class _$PushMessageDtoCopyWithImpl<$Res>
    implements $PushMessageDtoCopyWith<$Res> {
  _$PushMessageDtoCopyWithImpl(this._value, this._then);

  final PushMessageDto _value;
  // ignore: unused_field
  final $Res Function(PushMessageDto) _then;

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
abstract class _$PushMessageDtoCopyWith<$Res>
    implements $PushMessageDtoCopyWith<$Res> {
  factory _$PushMessageDtoCopyWith(
          _PushMessageDto value, $Res Function(_PushMessageDto) then) =
      __$PushMessageDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? cnt,
      String? content,
      String? imageUrl,
      String? title,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});
}

/// @nodoc
class __$PushMessageDtoCopyWithImpl<$Res>
    extends _$PushMessageDtoCopyWithImpl<$Res>
    implements _$PushMessageDtoCopyWith<$Res> {
  __$PushMessageDtoCopyWithImpl(
      _PushMessageDto _value, $Res Function(_PushMessageDto) _then)
      : super(_value, (v) => _then(v as _PushMessageDto));

  @override
  _PushMessageDto get _value => super._value as _PushMessageDto;

  @override
  $Res call({
    Object? cnt = freezed,
    Object? content = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_PushMessageDto(
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

@JsonSerializable(explicitToJson: true)
class _$_PushMessageDto extends _PushMessageDto {
  _$_PushMessageDto(
      {this.cnt,
      this.content,
      this.imageUrl,
      this.title,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated})
      : super._();

  factory _$_PushMessageDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PushMessageDtoFromJson(json);

  @override
  final int? cnt;
  @override
  final String? content;
  @override
  final String? imageUrl;
  @override
  final String? title;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;

  @override
  String toString() {
    return 'PushMessageDto(cnt: $cnt, content: $content, imageUrl: $imageUrl, title: $title, dtCreated: $dtCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PushMessageDto &&
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
  _$PushMessageDtoCopyWith<_PushMessageDto> get copyWith =>
      __$PushMessageDtoCopyWithImpl<_PushMessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PushMessageDtoToJson(this);
  }
}

abstract class _PushMessageDto extends PushMessageDto {
  factory _PushMessageDto(
      {int? cnt,
      String? content,
      String? imageUrl,
      String? title,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) = _$_PushMessageDto;
  _PushMessageDto._() : super._();

  factory _PushMessageDto.fromJson(Map<String, dynamic> json) =
      _$_PushMessageDto.fromJson;

  @override
  int? get cnt => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PushMessageDtoCopyWith<_PushMessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}
