// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      {String? id,
      required String kind,
      @JsonKey(name: 'contents_id')
          String? contentsId,
      required ProfileDto? from,
      required ProfileDto? to,
      PushMessageDto? message,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime registerDate}) {
    return _PushDto(
      id: id,
      kind: kind,
      contentsId: contentsId,
      from: from,
      to: to,
      message: message,
      registerDate: registerDate,
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
  String? get id => throw _privateConstructorUsedError;
  String get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents_id')
  String? get contentsId => throw _privateConstructorUsedError;
  ProfileDto? get from => throw _privateConstructorUsedError;
  ProfileDto? get to => throw _privateConstructorUsedError;
  PushMessageDto? get message => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get registerDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushDtoCopyWith<PushDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushDtoCopyWith<$Res> {
  factory $PushDtoCopyWith(PushDto value, $Res Function(PushDto) then) =
      _$PushDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String kind,
      @JsonKey(name: 'contents_id')
          String? contentsId,
      ProfileDto? from,
      ProfileDto? to,
      PushMessageDto? message,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime registerDate});

  $ProfileDtoCopyWith<$Res>? get from;
  $ProfileDtoCopyWith<$Res>? get to;
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
    Object? id = freezed,
    Object? kind = freezed,
    Object? contentsId = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? message = freezed,
    Object? registerDate = freezed,
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
              as ProfileDto?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as ProfileDto?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as PushMessageDto?,
      registerDate: registerDate == freezed
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ProfileDtoCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $ProfileDtoCopyWith<$Res>(_value.from!, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $ProfileDtoCopyWith<$Res>? get to {
    if (_value.to == null) {
      return null;
    }

    return $ProfileDtoCopyWith<$Res>(_value.to!, (value) {
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
      {String? id,
      String kind,
      @JsonKey(name: 'contents_id')
          String? contentsId,
      ProfileDto? from,
      ProfileDto? to,
      PushMessageDto? message,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime registerDate});

  @override
  $ProfileDtoCopyWith<$Res>? get from;
  @override
  $ProfileDtoCopyWith<$Res>? get to;
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
    Object? id = freezed,
    Object? kind = freezed,
    Object? contentsId = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? message = freezed,
    Object? registerDate = freezed,
  }) {
    return _then(_PushDto(
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
              as ProfileDto?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as ProfileDto?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as PushMessageDto?,
      registerDate: registerDate == freezed
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PushDto extends _PushDto {
  _$_PushDto(
      {this.id,
      required this.kind,
      @JsonKey(name: 'contents_id')
          this.contentsId,
      required this.from,
      required this.to,
      this.message,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.registerDate})
      : super._();

  factory _$_PushDto.fromJson(Map<String, dynamic> json) =>
      _$$_PushDtoFromJson(json);

  @override
  final String? id;
  @override
  final String kind;
  @override
  @JsonKey(name: 'contents_id')
  final String? contentsId;
  @override
  final ProfileDto? from;
  @override
  final ProfileDto? to;
  @override
  final PushMessageDto? message;
  @override
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  final DateTime registerDate;

  @override
  String toString() {
    return 'PushDto(id: $id, kind: $kind, contentsId: $contentsId, from: $from, to: $to, message: $message, registerDate: $registerDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PushDto &&
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
            (identical(other.registerDate, registerDate) ||
                const DeepCollectionEquality()
                    .equals(other.registerDate, registerDate)));
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
      const DeepCollectionEquality().hash(registerDate);

  @JsonKey(ignore: true)
  @override
  _$PushDtoCopyWith<_PushDto> get copyWith =>
      __$PushDtoCopyWithImpl<_PushDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PushDtoToJson(this);
  }
}

abstract class _PushDto extends PushDto {
  factory _PushDto(
      {String? id,
      required String kind,
      @JsonKey(name: 'contents_id')
          String? contentsId,
      required ProfileDto? from,
      required ProfileDto? to,
      PushMessageDto? message,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime registerDate}) = _$_PushDto;
  _PushDto._() : super._();

  factory _PushDto.fromJson(Map<String, dynamic> json) = _$_PushDto.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get kind => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'contents_id')
  String? get contentsId => throw _privateConstructorUsedError;
  @override
  ProfileDto? get from => throw _privateConstructorUsedError;
  @override
  ProfileDto? get to => throw _privateConstructorUsedError;
  @override
  PushMessageDto? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get registerDate => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'board_badge')
          String? badge,
      @JsonKey(name: 'image_url')
          String? imageUrl,
      String? title,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime registerDate}) {
    return _PushMessageDto(
      cnt: cnt,
      content: content,
      badge: badge,
      imageUrl: imageUrl,
      title: title,
      registerDate: registerDate,
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
  @JsonKey(name: 'board_badge')
  String? get badge => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get registerDate => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'board_badge')
          String? badge,
      @JsonKey(name: 'image_url')
          String? imageUrl,
      String? title,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime registerDate});
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
    Object? badge = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? registerDate = freezed,
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
      badge: badge == freezed
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      registerDate: registerDate == freezed
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'board_badge')
          String? badge,
      @JsonKey(name: 'image_url')
          String? imageUrl,
      String? title,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime registerDate});
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
    Object? badge = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? registerDate = freezed,
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
      badge: badge == freezed
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      registerDate: registerDate == freezed
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'board_badge')
          this.badge,
      @JsonKey(name: 'image_url')
          this.imageUrl,
      this.title,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.registerDate})
      : super._();

  factory _$_PushMessageDto.fromJson(Map<String, dynamic> json) =>
      _$$_PushMessageDtoFromJson(json);

  @override
  final int? cnt;
  @override
  final String? content;
  @override
  @JsonKey(name: 'board_badge')
  final String? badge;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  final String? title;
  @override
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  final DateTime registerDate;

  @override
  String toString() {
    return 'PushMessageDto(cnt: $cnt, content: $content, badge: $badge, imageUrl: $imageUrl, title: $title, registerDate: $registerDate)';
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
            (identical(other.badge, badge) ||
                const DeepCollectionEquality().equals(other.badge, badge)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.registerDate, registerDate) ||
                const DeepCollectionEquality()
                    .equals(other.registerDate, registerDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cnt) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(badge) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(registerDate);

  @JsonKey(ignore: true)
  @override
  _$PushMessageDtoCopyWith<_PushMessageDto> get copyWith =>
      __$PushMessageDtoCopyWithImpl<_PushMessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PushMessageDtoToJson(this);
  }
}

abstract class _PushMessageDto extends PushMessageDto {
  factory _PushMessageDto(
      {int? cnt,
      String? content,
      @JsonKey(name: 'board_badge')
          String? badge,
      @JsonKey(name: 'image_url')
          String? imageUrl,
      String? title,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime registerDate}) = _$_PushMessageDto;
  _PushMessageDto._() : super._();

  factory _PushMessageDto.fromJson(Map<String, dynamic> json) =
      _$_PushMessageDto.fromJson;

  @override
  int? get cnt => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'board_badge')
  String? get badge => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get registerDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PushMessageDtoCopyWith<_PushMessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}
