// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'post_utils.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentInfoTearOff {
  const _$CommentInfoTearOff();

  _CommentInfo call(
      {required String title,
      required String subject,
      required int cntVisit,
      required DateTime dtCreated,
      required DateTime dtUpdated}) {
    return _CommentInfo(
      title: title,
      subject: subject,
      cntVisit: cntVisit,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
    );
  }
}

/// @nodoc
const $CommentInfo = _$CommentInfoTearOff();

/// @nodoc
mixin _$CommentInfo {
  String get title => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  int get cntVisit => throw _privateConstructorUsedError;
  DateTime get dtCreated => throw _privateConstructorUsedError;
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentInfoCopyWith<CommentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentInfoCopyWith<$Res> {
  factory $CommentInfoCopyWith(
          CommentInfo value, $Res Function(CommentInfo) then) =
      _$CommentInfoCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String subject,
      int cntVisit,
      DateTime dtCreated,
      DateTime dtUpdated});
}

/// @nodoc
class _$CommentInfoCopyWithImpl<$Res> implements $CommentInfoCopyWith<$Res> {
  _$CommentInfoCopyWithImpl(this._value, this._then);

  final CommentInfo _value;
  // ignore: unused_field
  final $Res Function(CommentInfo) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subject = freezed,
    Object? cntVisit = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      cntVisit: cntVisit == freezed
          ? _value.cntVisit
          : cntVisit // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$CommentInfoCopyWith<$Res>
    implements $CommentInfoCopyWith<$Res> {
  factory _$CommentInfoCopyWith(
          _CommentInfo value, $Res Function(_CommentInfo) then) =
      __$CommentInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String subject,
      int cntVisit,
      DateTime dtCreated,
      DateTime dtUpdated});
}

/// @nodoc
class __$CommentInfoCopyWithImpl<$Res> extends _$CommentInfoCopyWithImpl<$Res>
    implements _$CommentInfoCopyWith<$Res> {
  __$CommentInfoCopyWithImpl(
      _CommentInfo _value, $Res Function(_CommentInfo) _then)
      : super(_value, (v) => _then(v as _CommentInfo));

  @override
  _CommentInfo get _value => super._value as _CommentInfo;

  @override
  $Res call({
    Object? title = freezed,
    Object? subject = freezed,
    Object? cntVisit = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_CommentInfo(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      cntVisit: cntVisit == freezed
          ? _value.cntVisit
          : cntVisit // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$_CommentInfo extends _CommentInfo {
  _$_CommentInfo(
      {required this.title,
      required this.subject,
      required this.cntVisit,
      required this.dtCreated,
      required this.dtUpdated})
      : super._();

  @override
  final String title;
  @override
  final String subject;
  @override
  final int cntVisit;
  @override
  final DateTime dtCreated;
  @override
  final DateTime dtUpdated;

  @override
  String toString() {
    return 'CommentInfo(title: $title, subject: $subject, cntVisit: $cntVisit, dtCreated: $dtCreated, dtUpdated: $dtUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentInfo &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.cntVisit, cntVisit) ||
                const DeepCollectionEquality()
                    .equals(other.cntVisit, cntVisit)) &&
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
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(cntVisit) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated);

  @JsonKey(ignore: true)
  @override
  _$CommentInfoCopyWith<_CommentInfo> get copyWith =>
      __$CommentInfoCopyWithImpl<_CommentInfo>(this, _$identity);
}

abstract class _CommentInfo extends CommentInfo {
  factory _CommentInfo(
      {required String title,
      required String subject,
      required int cntVisit,
      required DateTime dtCreated,
      required DateTime dtUpdated}) = _$_CommentInfo;
  _CommentInfo._() : super._();

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get subject => throw _privateConstructorUsedError;
  @override
  int get cntVisit => throw _privateConstructorUsedError;
  @override
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommentInfoCopyWith<_CommentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommentTearOff {
  const _$CommentTearOff();

  _Comment call(
      {required ProfileDto profile,
      required CommentInfo info,
      required String postId,
      String? thumnail,
      required int treeIndex,
      String? kind}) {
    return _Comment(
      profile: profile,
      info: info,
      postId: postId,
      thumnail: thumnail,
      treeIndex: treeIndex,
      kind: kind,
    );
  }
}

/// @nodoc
const $Comment = _$CommentTearOff();

/// @nodoc
mixin _$Comment {
  ProfileDto get profile => throw _privateConstructorUsedError; //작성자
  CommentInfo get info => throw _privateConstructorUsedError; //기본정보
  String get postId => throw _privateConstructorUsedError;
  String? get thumnail => throw _privateConstructorUsedError;
  int get treeIndex => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res>;
  $Res call(
      {ProfileDto profile,
      CommentInfo info,
      String postId,
      String? thumnail,
      int treeIndex,
      String? kind});

  $ProfileDtoCopyWith<$Res> get profile;
  $CommentInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res> implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  final Comment _value;
  // ignore: unused_field
  final $Res Function(Comment) _then;

  @override
  $Res call({
    Object? profile = freezed,
    Object? info = freezed,
    Object? postId = freezed,
    Object? thumnail = freezed,
    Object? treeIndex = freezed,
    Object? kind = freezed,
  }) {
    return _then(_value.copyWith(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CommentInfo,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      thumnail: thumnail == freezed
          ? _value.thumnail
          : thumnail // ignore: cast_nullable_to_non_nullable
              as String?,
      treeIndex: treeIndex == freezed
          ? _value.treeIndex
          : treeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ProfileDtoCopyWith<$Res> get profile {
    return $ProfileDtoCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $CommentInfoCopyWith<$Res> get info {
    return $CommentInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$CommentCopyWith(_Comment value, $Res Function(_Comment) then) =
      __$CommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {ProfileDto profile,
      CommentInfo info,
      String postId,
      String? thumnail,
      int treeIndex,
      String? kind});

  @override
  $ProfileDtoCopyWith<$Res> get profile;
  @override
  $CommentInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$CommentCopyWithImpl<$Res> extends _$CommentCopyWithImpl<$Res>
    implements _$CommentCopyWith<$Res> {
  __$CommentCopyWithImpl(_Comment _value, $Res Function(_Comment) _then)
      : super(_value, (v) => _then(v as _Comment));

  @override
  _Comment get _value => super._value as _Comment;

  @override
  $Res call({
    Object? profile = freezed,
    Object? info = freezed,
    Object? postId = freezed,
    Object? thumnail = freezed,
    Object? treeIndex = freezed,
    Object? kind = freezed,
  }) {
    return _then(_Comment(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CommentInfo,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      thumnail: thumnail == freezed
          ? _value.thumnail
          : thumnail // ignore: cast_nullable_to_non_nullable
              as String?,
      treeIndex: treeIndex == freezed
          ? _value.treeIndex
          : treeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Comment extends _Comment {
  _$_Comment(
      {required this.profile,
      required this.info,
      required this.postId,
      this.thumnail,
      required this.treeIndex,
      this.kind})
      : super._();

  @override
  final ProfileDto profile;
  @override //작성자
  final CommentInfo info;
  @override //기본정보
  final String postId;
  @override
  final String? thumnail;
  @override
  final int treeIndex;
  @override
  final String? kind;

  @override
  String toString() {
    return 'Comment(profile: $profile, info: $info, postId: $postId, thumnail: $thumnail, treeIndex: $treeIndex, kind: $kind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Comment &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.thumnail, thumnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumnail, thumnail)) &&
            (identical(other.treeIndex, treeIndex) ||
                const DeepCollectionEquality()
                    .equals(other.treeIndex, treeIndex)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(thumnail) ^
      const DeepCollectionEquality().hash(treeIndex) ^
      const DeepCollectionEquality().hash(kind);

  @JsonKey(ignore: true)
  @override
  _$CommentCopyWith<_Comment> get copyWith =>
      __$CommentCopyWithImpl<_Comment>(this, _$identity);
}

abstract class _Comment extends Comment {
  factory _Comment(
      {required ProfileDto profile,
      required CommentInfo info,
      required String postId,
      String? thumnail,
      required int treeIndex,
      String? kind}) = _$_Comment;
  _Comment._() : super._();

  @override
  ProfileDto get profile => throw _privateConstructorUsedError;
  @override //작성자
  CommentInfo get info => throw _privateConstructorUsedError;
  @override //기본정보
  String get postId => throw _privateConstructorUsedError;
  @override
  String? get thumnail => throw _privateConstructorUsedError;
  @override
  int get treeIndex => throw _privateConstructorUsedError;
  @override
  String? get kind => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommentCopyWith<_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BookmarkTearOff {
  const _$BookmarkTearOff();

  _Bookmark call(
      {String? id,
      required ProfileShort owner,
      required ProfileShort profile,
      required PostSummary info,
      required String postId,
      String? thumnail,
      String? kind,
      required DateTime dtCreated}) {
    return _Bookmark(
      id: id,
      owner: owner,
      profile: profile,
      info: info,
      postId: postId,
      thumnail: thumnail,
      kind: kind,
      dtCreated: dtCreated,
    );
  }
}

/// @nodoc
const $Bookmark = _$BookmarkTearOff();

/// @nodoc
mixin _$Bookmark {
  String? get id => throw _privateConstructorUsedError;
  ProfileShort get owner => throw _privateConstructorUsedError; //작성자
  ProfileShort get profile => throw _privateConstructorUsedError; //작성자
  PostSummary get info => throw _privateConstructorUsedError; //기본정보
  String get postId => throw _privateConstructorUsedError;
  String? get thumnail => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  DateTime get dtCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookmarkCopyWith<Bookmark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkCopyWith<$Res> {
  factory $BookmarkCopyWith(Bookmark value, $Res Function(Bookmark) then) =
      _$BookmarkCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      ProfileShort owner,
      ProfileShort profile,
      PostSummary info,
      String postId,
      String? thumnail,
      String? kind,
      DateTime dtCreated});

  $ProfileShortCopyWith<$Res> get owner;
  $ProfileShortCopyWith<$Res> get profile;
  $PostSummaryCopyWith<$Res> get info;
}

/// @nodoc
class _$BookmarkCopyWithImpl<$Res> implements $BookmarkCopyWith<$Res> {
  _$BookmarkCopyWithImpl(this._value, this._then);

  final Bookmark _value;
  // ignore: unused_field
  final $Res Function(Bookmark) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? owner = freezed,
    Object? profile = freezed,
    Object? info = freezed,
    Object? postId = freezed,
    Object? thumnail = freezed,
    Object? kind = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileShort,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileShort,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PostSummary,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      thumnail: thumnail == freezed
          ? _value.thumnail
          : thumnail // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ProfileShortCopyWith<$Res> get owner {
    return $ProfileShortCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }

  @override
  $ProfileShortCopyWith<$Res> get profile {
    return $ProfileShortCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $PostSummaryCopyWith<$Res> get info {
    return $PostSummaryCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$BookmarkCopyWith<$Res> implements $BookmarkCopyWith<$Res> {
  factory _$BookmarkCopyWith(_Bookmark value, $Res Function(_Bookmark) then) =
      __$BookmarkCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      ProfileShort owner,
      ProfileShort profile,
      PostSummary info,
      String postId,
      String? thumnail,
      String? kind,
      DateTime dtCreated});

  @override
  $ProfileShortCopyWith<$Res> get owner;
  @override
  $ProfileShortCopyWith<$Res> get profile;
  @override
  $PostSummaryCopyWith<$Res> get info;
}

/// @nodoc
class __$BookmarkCopyWithImpl<$Res> extends _$BookmarkCopyWithImpl<$Res>
    implements _$BookmarkCopyWith<$Res> {
  __$BookmarkCopyWithImpl(_Bookmark _value, $Res Function(_Bookmark) _then)
      : super(_value, (v) => _then(v as _Bookmark));

  @override
  _Bookmark get _value => super._value as _Bookmark;

  @override
  $Res call({
    Object? id = freezed,
    Object? owner = freezed,
    Object? profile = freezed,
    Object? info = freezed,
    Object? postId = freezed,
    Object? thumnail = freezed,
    Object? kind = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_Bookmark(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileShort,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileShort,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PostSummary,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      thumnail: thumnail == freezed
          ? _value.thumnail
          : thumnail // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Bookmark extends _Bookmark {
  _$_Bookmark(
      {this.id,
      required this.owner,
      required this.profile,
      required this.info,
      required this.postId,
      this.thumnail,
      this.kind,
      required this.dtCreated})
      : super._();

  @override
  final String? id;
  @override
  final ProfileShort owner;
  @override //작성자
  final ProfileShort profile;
  @override //작성자
  final PostSummary info;
  @override //기본정보
  final String postId;
  @override
  final String? thumnail;
  @override
  final String? kind;
  @override
  final DateTime dtCreated;

  @override
  String toString() {
    return 'Bookmark(id: $id, owner: $owner, profile: $profile, info: $info, postId: $postId, thumnail: $thumnail, kind: $kind, dtCreated: $dtCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Bookmark &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.thumnail, thumnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumnail, thumnail)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(thumnail) ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(dtCreated);

  @JsonKey(ignore: true)
  @override
  _$BookmarkCopyWith<_Bookmark> get copyWith =>
      __$BookmarkCopyWithImpl<_Bookmark>(this, _$identity);
}

abstract class _Bookmark extends Bookmark {
  factory _Bookmark(
      {String? id,
      required ProfileShort owner,
      required ProfileShort profile,
      required PostSummary info,
      required String postId,
      String? thumnail,
      String? kind,
      required DateTime dtCreated}) = _$_Bookmark;
  _Bookmark._() : super._();

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  ProfileShort get owner => throw _privateConstructorUsedError;
  @override //작성자
  ProfileShort get profile => throw _privateConstructorUsedError;
  @override //작성자
  PostSummary get info => throw _privateConstructorUsedError;
  @override //기본정보
  String get postId => throw _privateConstructorUsedError;
  @override
  String? get thumnail => throw _privateConstructorUsedError;
  @override
  String? get kind => throw _privateConstructorUsedError;
  @override
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookmarkCopyWith<_Bookmark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FavorTearOff {
  const _$FavorTearOff();

  _Favor call(
      {String? id,
      required ProfileShort owner,
      required ProfileShort profile,
      required PostSummary info,
      required String postId,
      String? thumnail,
      String? kind,
      required DateTime dtCreated}) {
    return _Favor(
      id: id,
      owner: owner,
      profile: profile,
      info: info,
      postId: postId,
      thumnail: thumnail,
      kind: kind,
      dtCreated: dtCreated,
    );
  }
}

/// @nodoc
const $Favor = _$FavorTearOff();

/// @nodoc
mixin _$Favor {
  String? get id => throw _privateConstructorUsedError;
  ProfileShort get owner => throw _privateConstructorUsedError; //작성자
  ProfileShort get profile => throw _privateConstructorUsedError; //작성자
  PostSummary get info => throw _privateConstructorUsedError; //기본정보
  String get postId => throw _privateConstructorUsedError;
  String? get thumnail => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  DateTime get dtCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavorCopyWith<Favor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavorCopyWith<$Res> {
  factory $FavorCopyWith(Favor value, $Res Function(Favor) then) =
      _$FavorCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      ProfileShort owner,
      ProfileShort profile,
      PostSummary info,
      String postId,
      String? thumnail,
      String? kind,
      DateTime dtCreated});

  $ProfileShortCopyWith<$Res> get owner;
  $ProfileShortCopyWith<$Res> get profile;
  $PostSummaryCopyWith<$Res> get info;
}

/// @nodoc
class _$FavorCopyWithImpl<$Res> implements $FavorCopyWith<$Res> {
  _$FavorCopyWithImpl(this._value, this._then);

  final Favor _value;
  // ignore: unused_field
  final $Res Function(Favor) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? owner = freezed,
    Object? profile = freezed,
    Object? info = freezed,
    Object? postId = freezed,
    Object? thumnail = freezed,
    Object? kind = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileShort,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileShort,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PostSummary,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      thumnail: thumnail == freezed
          ? _value.thumnail
          : thumnail // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ProfileShortCopyWith<$Res> get owner {
    return $ProfileShortCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }

  @override
  $ProfileShortCopyWith<$Res> get profile {
    return $ProfileShortCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $PostSummaryCopyWith<$Res> get info {
    return $PostSummaryCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$FavorCopyWith<$Res> implements $FavorCopyWith<$Res> {
  factory _$FavorCopyWith(_Favor value, $Res Function(_Favor) then) =
      __$FavorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      ProfileShort owner,
      ProfileShort profile,
      PostSummary info,
      String postId,
      String? thumnail,
      String? kind,
      DateTime dtCreated});

  @override
  $ProfileShortCopyWith<$Res> get owner;
  @override
  $ProfileShortCopyWith<$Res> get profile;
  @override
  $PostSummaryCopyWith<$Res> get info;
}

/// @nodoc
class __$FavorCopyWithImpl<$Res> extends _$FavorCopyWithImpl<$Res>
    implements _$FavorCopyWith<$Res> {
  __$FavorCopyWithImpl(_Favor _value, $Res Function(_Favor) _then)
      : super(_value, (v) => _then(v as _Favor));

  @override
  _Favor get _value => super._value as _Favor;

  @override
  $Res call({
    Object? id = freezed,
    Object? owner = freezed,
    Object? profile = freezed,
    Object? info = freezed,
    Object? postId = freezed,
    Object? thumnail = freezed,
    Object? kind = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_Favor(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileShort,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileShort,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PostSummary,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      thumnail: thumnail == freezed
          ? _value.thumnail
          : thumnail // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Favor extends _Favor {
  _$_Favor(
      {this.id,
      required this.owner,
      required this.profile,
      required this.info,
      required this.postId,
      this.thumnail,
      this.kind,
      required this.dtCreated})
      : super._();

  @override
  final String? id;
  @override
  final ProfileShort owner;
  @override //작성자
  final ProfileShort profile;
  @override //작성자
  final PostSummary info;
  @override //기본정보
  final String postId;
  @override
  final String? thumnail;
  @override
  final String? kind;
  @override
  final DateTime dtCreated;

  @override
  String toString() {
    return 'Favor(id: $id, owner: $owner, profile: $profile, info: $info, postId: $postId, thumnail: $thumnail, kind: $kind, dtCreated: $dtCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Favor &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.thumnail, thumnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumnail, thumnail)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(thumnail) ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(dtCreated);

  @JsonKey(ignore: true)
  @override
  _$FavorCopyWith<_Favor> get copyWith =>
      __$FavorCopyWithImpl<_Favor>(this, _$identity);
}

abstract class _Favor extends Favor {
  factory _Favor(
      {String? id,
      required ProfileShort owner,
      required ProfileShort profile,
      required PostSummary info,
      required String postId,
      String? thumnail,
      String? kind,
      required DateTime dtCreated}) = _$_Favor;
  _Favor._() : super._();

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  ProfileShort get owner => throw _privateConstructorUsedError;
  @override //작성자
  ProfileShort get profile => throw _privateConstructorUsedError;
  @override //작성자
  PostSummary get info => throw _privateConstructorUsedError;
  @override //기본정보
  String get postId => throw _privateConstructorUsedError;
  @override
  String? get thumnail => throw _privateConstructorUsedError;
  @override
  String? get kind => throw _privateConstructorUsedError;
  @override
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FavorCopyWith<_Favor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$FollowTearOff {
  const _$FollowTearOff();

  _Follow call(
      {String? id,
      required Profile source,
      required Profile target,
      required DateTime dtCreated}) {
    return _Follow(
      id: id,
      source: source,
      target: target,
      dtCreated: dtCreated,
    );
  }
}

/// @nodoc
const $Follow = _$FollowTearOff();

/// @nodoc
mixin _$Follow {
  String? get id => throw _privateConstructorUsedError;
  Profile get source => throw _privateConstructorUsedError;
  Profile get target =>
      throw _privateConstructorUsedError; // required bool? isFollow,
  DateTime get dtCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowCopyWith<Follow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowCopyWith<$Res> {
  factory $FollowCopyWith(Follow value, $Res Function(Follow) then) =
      _$FollowCopyWithImpl<$Res>;
  $Res call({String? id, Profile source, Profile target, DateTime dtCreated});

  $ProfileCopyWith<$Res> get source;
  $ProfileCopyWith<$Res> get target;
}

/// @nodoc
class _$FollowCopyWithImpl<$Res> implements $FollowCopyWith<$Res> {
  _$FollowCopyWithImpl(this._value, this._then);

  final Follow _value;
  // ignore: unused_field
  final $Res Function(Follow) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? source = freezed,
    Object? target = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Profile,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as Profile,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get source {
    return $ProfileCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value));
    });
  }

  @override
  $ProfileCopyWith<$Res> get target {
    return $ProfileCopyWith<$Res>(_value.target, (value) {
      return _then(_value.copyWith(target: value));
    });
  }
}

/// @nodoc
abstract class _$FollowCopyWith<$Res> implements $FollowCopyWith<$Res> {
  factory _$FollowCopyWith(_Follow value, $Res Function(_Follow) then) =
      __$FollowCopyWithImpl<$Res>;
  @override
  $Res call({String? id, Profile source, Profile target, DateTime dtCreated});

  @override
  $ProfileCopyWith<$Res> get source;
  @override
  $ProfileCopyWith<$Res> get target;
}

/// @nodoc
class __$FollowCopyWithImpl<$Res> extends _$FollowCopyWithImpl<$Res>
    implements _$FollowCopyWith<$Res> {
  __$FollowCopyWithImpl(_Follow _value, $Res Function(_Follow) _then)
      : super(_value, (v) => _then(v as _Follow));

  @override
  _Follow get _value => super._value as _Follow;

  @override
  $Res call({
    Object? id = freezed,
    Object? source = freezed,
    Object? target = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_Follow(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Profile,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as Profile,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Follow extends _Follow {
  _$_Follow(
      {this.id,
      required this.source,
      required this.target,
      required this.dtCreated})
      : super._();

  @override
  final String? id;
  @override
  final Profile source;
  @override
  final Profile target;
  @override // required bool? isFollow,
  final DateTime dtCreated;

  @override
  String toString() {
    return 'Follow(id: $id, source: $source, target: $target, dtCreated: $dtCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Follow &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(target) ^
      const DeepCollectionEquality().hash(dtCreated);

  @JsonKey(ignore: true)
  @override
  _$FollowCopyWith<_Follow> get copyWith =>
      __$FollowCopyWithImpl<_Follow>(this, _$identity);
}

abstract class _Follow extends Follow {
  factory _Follow(
      {String? id,
      required Profile source,
      required Profile target,
      required DateTime dtCreated}) = _$_Follow;
  _Follow._() : super._();

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  Profile get source => throw _privateConstructorUsedError;
  @override
  Profile get target => throw _privateConstructorUsedError;
  @override // required bool? isFollow,
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FollowCopyWith<_Follow> get copyWith => throw _privateConstructorUsedError;
}
