// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentDto _$ContentDtoFromJson(Map<String, dynamic> json) {
  return _ContentDto.fromJson(json);
}

/// @nodoc
class _$ContentDtoTearOff {
  const _$ContentDtoTearOff();

  _ContentDto call(
      {String? id,
      required ContentInfoDto info,
      required ProfileDto profile,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated,
      String? kind}) {
    return _ContentDto(
      id: id,
      info: info,
      profile: profile,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
      kind: kind,
    );
  }

  ContentDto fromJson(Map<String, Object> json) {
    return ContentDto.fromJson(json);
  }
}

/// @nodoc
const $ContentDto = _$ContentDtoTearOff();

/// @nodoc
mixin _$ContentDto {
  String? get id => throw _privateConstructorUsedError;
  ContentInfoDto get info => throw _privateConstructorUsedError;
  ProfileDto get profile => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentDtoCopyWith<ContentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDtoCopyWith<$Res> {
  factory $ContentDtoCopyWith(
          ContentDto value, $Res Function(ContentDto) then) =
      _$ContentDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      ContentInfoDto info,
      ProfileDto profile,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated,
      String? kind});

  $ContentInfoDtoCopyWith<$Res> get info;
  $ProfileDtoCopyWith<$Res> get profile;
}

/// @nodoc
class _$ContentDtoCopyWithImpl<$Res> implements $ContentDtoCopyWith<$Res> {
  _$ContentDtoCopyWithImpl(this._value, this._then);

  final ContentDto _value;
  // ignore: unused_field
  final $Res Function(ContentDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? info = freezed,
    Object? profile = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
    Object? kind = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ContentInfoDto,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dtUpdated: dtUpdated == freezed
          ? _value.dtUpdated
          : dtUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ContentInfoDtoCopyWith<$Res> get info {
    return $ContentInfoDtoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $ProfileDtoCopyWith<$Res> get profile {
    return $ProfileDtoCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
abstract class _$ContentDtoCopyWith<$Res> implements $ContentDtoCopyWith<$Res> {
  factory _$ContentDtoCopyWith(
          _ContentDto value, $Res Function(_ContentDto) then) =
      __$ContentDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      ContentInfoDto info,
      ProfileDto profile,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated,
      String? kind});

  @override
  $ContentInfoDtoCopyWith<$Res> get info;
  @override
  $ProfileDtoCopyWith<$Res> get profile;
}

/// @nodoc
class __$ContentDtoCopyWithImpl<$Res> extends _$ContentDtoCopyWithImpl<$Res>
    implements _$ContentDtoCopyWith<$Res> {
  __$ContentDtoCopyWithImpl(
      _ContentDto _value, $Res Function(_ContentDto) _then)
      : super(_value, (v) => _then(v as _ContentDto));

  @override
  _ContentDto get _value => super._value as _ContentDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? info = freezed,
    Object? profile = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
    Object? kind = freezed,
  }) {
    return _then(_ContentDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ContentInfoDto,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dtUpdated: dtUpdated == freezed
          ? _value.dtUpdated
          : dtUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ContentDto extends _ContentDto {
  _$_ContentDto(
      {this.id,
      required this.info,
      required this.profile,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtUpdated,
      this.kind})
      : super._();

  factory _$_ContentDto.fromJson(Map<String, dynamic> json) =>
      _$$_ContentDtoFromJson(json);

  @override
  final String? id;
  @override
  final ContentInfoDto info;
  @override
  final ProfileDto profile;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtUpdated;
  @override
  final String? kind;

  @override
  String toString() {
    return 'ContentDto(id: $id, info: $info, profile: $profile, dtCreated: $dtCreated, dtUpdated: $dtUpdated, kind: $kind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContentDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)) &&
            (identical(other.dtUpdated, dtUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.dtUpdated, dtUpdated)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated) ^
      const DeepCollectionEquality().hash(kind);

  @JsonKey(ignore: true)
  @override
  _$ContentDtoCopyWith<_ContentDto> get copyWith =>
      __$ContentDtoCopyWithImpl<_ContentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentDtoToJson(this);
  }
}

abstract class _ContentDto extends ContentDto {
  factory _ContentDto(
      {String? id,
      required ContentInfoDto info,
      required ProfileDto profile,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated,
      String? kind}) = _$_ContentDto;
  _ContentDto._() : super._();

  factory _ContentDto.fromJson(Map<String, dynamic> json) =
      _$_ContentDto.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  ContentInfoDto get info => throw _privateConstructorUsedError;
  @override
  ProfileDto get profile => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  String? get kind => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContentDtoCopyWith<_ContentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ContentInfoDto _$ContentInfoDtoFromJson(Map<String, dynamic> json) {
  return _ContentInfoDto.fromJson(json);
}

/// @nodoc
class _$ContentInfoDtoTearOff {
  const _$ContentInfoDtoTearOff();

  _ContentInfoDto call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      required int cntView,
      required int contentKind,
      List<String?>? thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated}) {
    return _ContentInfoDto(
      id: id,
      imgUrl: imgUrl,
      uid: uid,
      title: title,
      content: content,
      cntView: cntView,
      contentKind: contentKind,
      thumbnails: thumbnails,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
    );
  }

  ContentInfoDto fromJson(Map<String, Object> json) {
    return ContentInfoDto.fromJson(json);
  }
}

/// @nodoc
const $ContentInfoDto = _$ContentInfoDtoTearOff();

/// @nodoc
mixin _$ContentInfoDto {
  String? get id => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  int get cntView => throw _privateConstructorUsedError;
  int get contentKind => throw _privateConstructorUsedError;
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentInfoDtoCopyWith<ContentInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentInfoDtoCopyWith<$Res> {
  factory $ContentInfoDtoCopyWith(
          ContentInfoDto value, $Res Function(ContentInfoDto) then) =
      _$ContentInfoDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      int cntView,
      int contentKind,
      List<String?>? thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated});
}

/// @nodoc
class _$ContentInfoDtoCopyWithImpl<$Res>
    implements $ContentInfoDtoCopyWith<$Res> {
  _$ContentInfoDtoCopyWithImpl(this._value, this._then);

  final ContentInfoDto _value;
  // ignore: unused_field
  final $Res Function(ContentInfoDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? uid = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? cntView = freezed,
    Object? contentKind = freezed,
    Object? thumbnails = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      cntView: cntView == freezed
          ? _value.cntView
          : cntView // ignore: cast_nullable_to_non_nullable
              as int,
      contentKind: contentKind == freezed
          ? _value.contentKind
          : contentKind // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dtUpdated: dtUpdated == freezed
          ? _value.dtUpdated
          : dtUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ContentInfoDtoCopyWith<$Res>
    implements $ContentInfoDtoCopyWith<$Res> {
  factory _$ContentInfoDtoCopyWith(
          _ContentInfoDto value, $Res Function(_ContentInfoDto) then) =
      __$ContentInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      int cntView,
      int contentKind,
      List<String?>? thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated});
}

/// @nodoc
class __$ContentInfoDtoCopyWithImpl<$Res>
    extends _$ContentInfoDtoCopyWithImpl<$Res>
    implements _$ContentInfoDtoCopyWith<$Res> {
  __$ContentInfoDtoCopyWithImpl(
      _ContentInfoDto _value, $Res Function(_ContentInfoDto) _then)
      : super(_value, (v) => _then(v as _ContentInfoDto));

  @override
  _ContentInfoDto get _value => super._value as _ContentInfoDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? uid = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? cntView = freezed,
    Object? contentKind = freezed,
    Object? thumbnails = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_ContentInfoDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      cntView: cntView == freezed
          ? _value.cntView
          : cntView // ignore: cast_nullable_to_non_nullable
              as int,
      contentKind: contentKind == freezed
          ? _value.contentKind
          : contentKind // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dtUpdated: dtUpdated == freezed
          ? _value.dtUpdated
          : dtUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ContentInfoDto extends _ContentInfoDto {
  _$_ContentInfoDto(
      {this.id,
      this.imgUrl,
      this.uid,
      this.title,
      this.content,
      required this.cntView,
      required this.contentKind,
      this.thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtUpdated})
      : super._();

  factory _$_ContentInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_ContentInfoDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? imgUrl;
  @override
  final String? uid;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final int cntView;
  @override
  final int contentKind;
  @override
  final List<String?>? thumbnails;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtUpdated;

  @override
  String toString() {
    return 'ContentInfoDto(id: $id, imgUrl: $imgUrl, uid: $uid, title: $title, content: $content, cntView: $cntView, contentKind: $contentKind, thumbnails: $thumbnails, dtCreated: $dtCreated, dtUpdated: $dtUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContentInfoDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imgUrl, imgUrl) ||
                const DeepCollectionEquality().equals(other.imgUrl, imgUrl)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.cntView, cntView) ||
                const DeepCollectionEquality()
                    .equals(other.cntView, cntView)) &&
            (identical(other.contentKind, contentKind) ||
                const DeepCollectionEquality()
                    .equals(other.contentKind, contentKind)) &&
            (identical(other.thumbnails, thumbnails) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnails, thumbnails)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)) &&
            (identical(other.dtUpdated, dtUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.dtUpdated, dtUpdated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imgUrl) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(cntView) ^
      const DeepCollectionEquality().hash(contentKind) ^
      const DeepCollectionEquality().hash(thumbnails) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated);

  @JsonKey(ignore: true)
  @override
  _$ContentInfoDtoCopyWith<_ContentInfoDto> get copyWith =>
      __$ContentInfoDtoCopyWithImpl<_ContentInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentInfoDtoToJson(this);
  }
}

abstract class _ContentInfoDto extends ContentInfoDto {
  factory _ContentInfoDto(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      required int cntView,
      required int contentKind,
      List<String?>? thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated}) = _$_ContentInfoDto;
  _ContentInfoDto._() : super._();

  factory _ContentInfoDto.fromJson(Map<String, dynamic> json) =
      _$_ContentInfoDto.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get imgUrl => throw _privateConstructorUsedError;
  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  int get cntView => throw _privateConstructorUsedError;
  @override
  int get contentKind => throw _privateConstructorUsedError;
  @override
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContentInfoDtoCopyWith<_ContentInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
