// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContentTearOff {
  const _$ContentTearOff();

  _Content call(
      {String? id,
      required ContentInfo info,
      required Profile profile,
      required DateTime dtCreated,
      required DateTime dtUpdated,
      String? kind}) {
    return _Content(
      id: id,
      info: info,
      profile: profile,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
      kind: kind,
    );
  }
}

/// @nodoc
const $Content = _$ContentTearOff();

/// @nodoc
mixin _$Content {
  String? get id => throw _privateConstructorUsedError;
  ContentInfo get info => throw _privateConstructorUsedError;
  Profile get profile => throw _privateConstructorUsedError;
  DateTime get dtCreated => throw _privateConstructorUsedError;
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      ContentInfo info,
      Profile profile,
      DateTime dtCreated,
      DateTime dtUpdated,
      String? kind});

  $ContentInfoCopyWith<$Res> get info;
  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class _$ContentCopyWithImpl<$Res> implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  final Content _value;
  // ignore: unused_field
  final $Res Function(Content) _then;

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
              as ContentInfo,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
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
  $ContentInfoCopyWith<$Res> get info {
    return $ContentInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
abstract class _$ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$ContentCopyWith(_Content value, $Res Function(_Content) then) =
      __$ContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      ContentInfo info,
      Profile profile,
      DateTime dtCreated,
      DateTime dtUpdated,
      String? kind});

  @override
  $ContentInfoCopyWith<$Res> get info;
  @override
  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$ContentCopyWithImpl<$Res> extends _$ContentCopyWithImpl<$Res>
    implements _$ContentCopyWith<$Res> {
  __$ContentCopyWithImpl(_Content _value, $Res Function(_Content) _then)
      : super(_value, (v) => _then(v as _Content));

  @override
  _Content get _value => super._value as _Content;

  @override
  $Res call({
    Object? id = freezed,
    Object? info = freezed,
    Object? profile = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
    Object? kind = freezed,
  }) {
    return _then(_Content(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ContentInfo,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
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

class _$_Content extends _Content {
  _$_Content(
      {this.id,
      required this.info,
      required this.profile,
      required this.dtCreated,
      required this.dtUpdated,
      this.kind})
      : super._();

  @override
  final String? id;
  @override
  final ContentInfo info;
  @override
  final Profile profile;
  @override
  final DateTime dtCreated;
  @override
  final DateTime dtUpdated;
  @override
  final String? kind;

  @override
  String toString() {
    return 'Content(id: $id, info: $info, profile: $profile, dtCreated: $dtCreated, dtUpdated: $dtUpdated, kind: $kind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Content &&
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
  _$ContentCopyWith<_Content> get copyWith =>
      __$ContentCopyWithImpl<_Content>(this, _$identity);
}

abstract class _Content extends Content {
  factory _Content(
      {String? id,
      required ContentInfo info,
      required Profile profile,
      required DateTime dtCreated,
      required DateTime dtUpdated,
      String? kind}) = _$_Content;
  _Content._() : super._();

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  ContentInfo get info => throw _privateConstructorUsedError;
  @override
  Profile get profile => throw _privateConstructorUsedError;
  @override
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  String? get kind => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContentCopyWith<_Content> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ContentInfoTearOff {
  const _$ContentInfoTearOff();

  _ContentInfo call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      required int contentKind,
      required int cntView,
      List<String?>? thumbnails,
      required DateTime dtCreated,
      required DateTime dtUpdated}) {
    return _ContentInfo(
      id: id,
      imgUrl: imgUrl,
      uid: uid,
      title: title,
      content: content,
      contentKind: contentKind,
      cntView: cntView,
      thumbnails: thumbnails,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
    );
  }
}

/// @nodoc
const $ContentInfo = _$ContentInfoTearOff();

/// @nodoc
mixin _$ContentInfo {
  String? get id => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  int get contentKind => throw _privateConstructorUsedError;
  int get cntView => throw _privateConstructorUsedError;
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  DateTime get dtCreated => throw _privateConstructorUsedError;
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentInfoCopyWith<ContentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentInfoCopyWith<$Res> {
  factory $ContentInfoCopyWith(
          ContentInfo value, $Res Function(ContentInfo) then) =
      _$ContentInfoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      int contentKind,
      int cntView,
      List<String?>? thumbnails,
      DateTime dtCreated,
      DateTime dtUpdated});
}

/// @nodoc
class _$ContentInfoCopyWithImpl<$Res> implements $ContentInfoCopyWith<$Res> {
  _$ContentInfoCopyWithImpl(this._value, this._then);

  final ContentInfo _value;
  // ignore: unused_field
  final $Res Function(ContentInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? uid = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? contentKind = freezed,
    Object? cntView = freezed,
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
      contentKind: contentKind == freezed
          ? _value.contentKind
          : contentKind // ignore: cast_nullable_to_non_nullable
              as int,
      cntView: cntView == freezed
          ? _value.cntView
          : cntView // ignore: cast_nullable_to_non_nullable
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
abstract class _$ContentInfoCopyWith<$Res>
    implements $ContentInfoCopyWith<$Res> {
  factory _$ContentInfoCopyWith(
          _ContentInfo value, $Res Function(_ContentInfo) then) =
      __$ContentInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      int contentKind,
      int cntView,
      List<String?>? thumbnails,
      DateTime dtCreated,
      DateTime dtUpdated});
}

/// @nodoc
class __$ContentInfoCopyWithImpl<$Res> extends _$ContentInfoCopyWithImpl<$Res>
    implements _$ContentInfoCopyWith<$Res> {
  __$ContentInfoCopyWithImpl(
      _ContentInfo _value, $Res Function(_ContentInfo) _then)
      : super(_value, (v) => _then(v as _ContentInfo));

  @override
  _ContentInfo get _value => super._value as _ContentInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? uid = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? contentKind = freezed,
    Object? cntView = freezed,
    Object? thumbnails = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_ContentInfo(
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
      contentKind: contentKind == freezed
          ? _value.contentKind
          : contentKind // ignore: cast_nullable_to_non_nullable
              as int,
      cntView: cntView == freezed
          ? _value.cntView
          : cntView // ignore: cast_nullable_to_non_nullable
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

class _$_ContentInfo extends _ContentInfo {
  _$_ContentInfo(
      {this.id,
      this.imgUrl,
      this.uid,
      this.title,
      this.content,
      required this.contentKind,
      required this.cntView,
      this.thumbnails,
      required this.dtCreated,
      required this.dtUpdated})
      : super._();

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
  final int contentKind;
  @override
  final int cntView;
  @override
  final List<String?>? thumbnails;
  @override
  final DateTime dtCreated;
  @override
  final DateTime dtUpdated;

  @override
  String toString() {
    return 'ContentInfo(id: $id, imgUrl: $imgUrl, uid: $uid, title: $title, content: $content, contentKind: $contentKind, cntView: $cntView, thumbnails: $thumbnails, dtCreated: $dtCreated, dtUpdated: $dtUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContentInfo &&
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
            (identical(other.contentKind, contentKind) ||
                const DeepCollectionEquality()
                    .equals(other.contentKind, contentKind)) &&
            (identical(other.cntView, cntView) ||
                const DeepCollectionEquality()
                    .equals(other.cntView, cntView)) &&
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
      const DeepCollectionEquality().hash(contentKind) ^
      const DeepCollectionEquality().hash(cntView) ^
      const DeepCollectionEquality().hash(thumbnails) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated);

  @JsonKey(ignore: true)
  @override
  _$ContentInfoCopyWith<_ContentInfo> get copyWith =>
      __$ContentInfoCopyWithImpl<_ContentInfo>(this, _$identity);
}

abstract class _ContentInfo extends ContentInfo {
  factory _ContentInfo(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      required int contentKind,
      required int cntView,
      List<String?>? thumbnails,
      required DateTime dtCreated,
      required DateTime dtUpdated}) = _$_ContentInfo;
  _ContentInfo._() : super._();

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
  int get contentKind => throw _privateConstructorUsedError;
  @override
  int get cntView => throw _privateConstructorUsedError;
  @override
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  @override
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContentInfoCopyWith<_ContentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
