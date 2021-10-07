// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HanUserInfoTearOff {
  const _$HanUserInfoTearOff();

  _HanUserInfo call(
      {String? uid,
      required Profile profile,
      UserDetail? info,
      UserRegiInfo? regiInfo,
      required ListCnt following,
      bool? isDisabled,
      int? level,
      required int cntVisit,
      bool? isPush,
      String? token,
      required DateTime dtCreated,
      required DateTime dtUpdated}) {
    return _HanUserInfo(
      uid: uid,
      profile: profile,
      info: info,
      regiInfo: regiInfo,
      following: following,
      isDisabled: isDisabled,
      level: level,
      cntVisit: cntVisit,
      isPush: isPush,
      token: token,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
    );
  }
}

/// @nodoc
const $HanUserInfo = _$HanUserInfoTearOff();

/// @nodoc
mixin _$HanUserInfo {
  String? get uid => throw _privateConstructorUsedError;
  Profile get profile => throw _privateConstructorUsedError;
  UserDetail? get info => throw _privateConstructorUsedError;
  UserRegiInfo? get regiInfo => throw _privateConstructorUsedError;
  ListCnt get following => throw _privateConstructorUsedError;
  bool? get isDisabled => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  int get cntVisit => throw _privateConstructorUsedError;
  bool? get isPush => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  DateTime get dtCreated => throw _privateConstructorUsedError;
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HanUserInfoCopyWith<HanUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HanUserInfoCopyWith<$Res> {
  factory $HanUserInfoCopyWith(
          HanUserInfo value, $Res Function(HanUserInfo) then) =
      _$HanUserInfoCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      Profile profile,
      UserDetail? info,
      UserRegiInfo? regiInfo,
      ListCnt following,
      bool? isDisabled,
      int? level,
      int cntVisit,
      bool? isPush,
      String? token,
      DateTime dtCreated,
      DateTime dtUpdated});

  $ProfileCopyWith<$Res> get profile;
  $UserDetailCopyWith<$Res>? get info;
  $UserRegiInfoCopyWith<$Res>? get regiInfo;
  $ListCntCopyWith<$Res> get following;
}

/// @nodoc
class _$HanUserInfoCopyWithImpl<$Res> implements $HanUserInfoCopyWith<$Res> {
  _$HanUserInfoCopyWithImpl(this._value, this._then);

  final HanUserInfo _value;
  // ignore: unused_field
  final $Res Function(HanUserInfo) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? profile = freezed,
    Object? info = freezed,
    Object? regiInfo = freezed,
    Object? following = freezed,
    Object? isDisabled = freezed,
    Object? level = freezed,
    Object? cntVisit = freezed,
    Object? isPush = freezed,
    Object? token = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
      regiInfo: regiInfo == freezed
          ? _value.regiInfo
          : regiInfo // ignore: cast_nullable_to_non_nullable
              as UserRegiInfo?,
      following: following == freezed
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as ListCnt,
      isDisabled: isDisabled == freezed
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      cntVisit: cntVisit == freezed
          ? _value.cntVisit
          : cntVisit // ignore: cast_nullable_to_non_nullable
              as int,
      isPush: isPush == freezed
          ? _value.isPush
          : isPush // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
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

  @override
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $UserDetailCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $UserDetailCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $UserRegiInfoCopyWith<$Res>? get regiInfo {
    if (_value.regiInfo == null) {
      return null;
    }

    return $UserRegiInfoCopyWith<$Res>(_value.regiInfo!, (value) {
      return _then(_value.copyWith(regiInfo: value));
    });
  }

  @override
  $ListCntCopyWith<$Res> get following {
    return $ListCntCopyWith<$Res>(_value.following, (value) {
      return _then(_value.copyWith(following: value));
    });
  }
}

/// @nodoc
abstract class _$HanUserInfoCopyWith<$Res>
    implements $HanUserInfoCopyWith<$Res> {
  factory _$HanUserInfoCopyWith(
          _HanUserInfo value, $Res Function(_HanUserInfo) then) =
      __$HanUserInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid,
      Profile profile,
      UserDetail? info,
      UserRegiInfo? regiInfo,
      ListCnt following,
      bool? isDisabled,
      int? level,
      int cntVisit,
      bool? isPush,
      String? token,
      DateTime dtCreated,
      DateTime dtUpdated});

  @override
  $ProfileCopyWith<$Res> get profile;
  @override
  $UserDetailCopyWith<$Res>? get info;
  @override
  $UserRegiInfoCopyWith<$Res>? get regiInfo;
  @override
  $ListCntCopyWith<$Res> get following;
}

/// @nodoc
class __$HanUserInfoCopyWithImpl<$Res> extends _$HanUserInfoCopyWithImpl<$Res>
    implements _$HanUserInfoCopyWith<$Res> {
  __$HanUserInfoCopyWithImpl(
      _HanUserInfo _value, $Res Function(_HanUserInfo) _then)
      : super(_value, (v) => _then(v as _HanUserInfo));

  @override
  _HanUserInfo get _value => super._value as _HanUserInfo;

  @override
  $Res call({
    Object? uid = freezed,
    Object? profile = freezed,
    Object? info = freezed,
    Object? regiInfo = freezed,
    Object? following = freezed,
    Object? isDisabled = freezed,
    Object? level = freezed,
    Object? cntVisit = freezed,
    Object? isPush = freezed,
    Object? token = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_HanUserInfo(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
      regiInfo: regiInfo == freezed
          ? _value.regiInfo
          : regiInfo // ignore: cast_nullable_to_non_nullable
              as UserRegiInfo?,
      following: following == freezed
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as ListCnt,
      isDisabled: isDisabled == freezed
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      cntVisit: cntVisit == freezed
          ? _value.cntVisit
          : cntVisit // ignore: cast_nullable_to_non_nullable
              as int,
      isPush: isPush == freezed
          ? _value.isPush
          : isPush // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$_HanUserInfo implements _HanUserInfo {
  const _$_HanUserInfo(
      {this.uid,
      required this.profile,
      this.info,
      this.regiInfo,
      required this.following,
      this.isDisabled,
      this.level,
      required this.cntVisit,
      this.isPush,
      this.token,
      required this.dtCreated,
      required this.dtUpdated});

  @override
  final String? uid;
  @override
  final Profile profile;
  @override
  final UserDetail? info;
  @override
  final UserRegiInfo? regiInfo;
  @override
  final ListCnt following;
  @override
  final bool? isDisabled;
  @override
  final int? level;
  @override
  final int cntVisit;
  @override
  final bool? isPush;
  @override
  final String? token;
  @override
  final DateTime dtCreated;
  @override
  final DateTime dtUpdated;

  @override
  String toString() {
    return 'HanUserInfo(uid: $uid, profile: $profile, info: $info, regiInfo: $regiInfo, following: $following, isDisabled: $isDisabled, level: $level, cntVisit: $cntVisit, isPush: $isPush, token: $token, dtCreated: $dtCreated, dtUpdated: $dtUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HanUserInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.regiInfo, regiInfo) ||
                const DeepCollectionEquality()
                    .equals(other.regiInfo, regiInfo)) &&
            (identical(other.following, following) ||
                const DeepCollectionEquality()
                    .equals(other.following, following)) &&
            (identical(other.isDisabled, isDisabled) ||
                const DeepCollectionEquality()
                    .equals(other.isDisabled, isDisabled)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.cntVisit, cntVisit) ||
                const DeepCollectionEquality()
                    .equals(other.cntVisit, cntVisit)) &&
            (identical(other.isPush, isPush) ||
                const DeepCollectionEquality().equals(other.isPush, isPush)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
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
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(regiInfo) ^
      const DeepCollectionEquality().hash(following) ^
      const DeepCollectionEquality().hash(isDisabled) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(cntVisit) ^
      const DeepCollectionEquality().hash(isPush) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated);

  @JsonKey(ignore: true)
  @override
  _$HanUserInfoCopyWith<_HanUserInfo> get copyWith =>
      __$HanUserInfoCopyWithImpl<_HanUserInfo>(this, _$identity);
}

abstract class _HanUserInfo implements HanUserInfo {
  const factory _HanUserInfo(
      {String? uid,
      required Profile profile,
      UserDetail? info,
      UserRegiInfo? regiInfo,
      required ListCnt following,
      bool? isDisabled,
      int? level,
      required int cntVisit,
      bool? isPush,
      String? token,
      required DateTime dtCreated,
      required DateTime dtUpdated}) = _$_HanUserInfo;

  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  Profile get profile => throw _privateConstructorUsedError;
  @override
  UserDetail? get info => throw _privateConstructorUsedError;
  @override
  UserRegiInfo? get regiInfo => throw _privateConstructorUsedError;
  @override
  ListCnt get following => throw _privateConstructorUsedError;
  @override
  bool? get isDisabled => throw _privateConstructorUsedError;
  @override
  int? get level => throw _privateConstructorUsedError;
  @override
  int get cntVisit => throw _privateConstructorUsedError;
  @override
  bool? get isPush => throw _privateConstructorUsedError;
  @override
  String? get token => throw _privateConstructorUsedError;
  @override
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HanUserInfoCopyWith<_HanUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileTearOff {
  const _$ProfileTearOff();

  _Profile call(
      {String? uid,
      required String email,
      String? displayName,
      String? photoURL,
      String? blandName,
      String? homeURL,
      String? snsURL,
      required DateTime dtCreated,
      required DateTime dtUpdated,
      int? level}) {
    return _Profile(
      uid: uid,
      email: email,
      displayName: displayName,
      photoURL: photoURL,
      blandName: blandName,
      homeURL: homeURL,
      snsURL: snsURL,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
      level: level,
    );
  }
}

/// @nodoc
const $Profile = _$ProfileTearOff();

/// @nodoc
mixin _$Profile {
  String? get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;
  String? get blandName => throw _privateConstructorUsedError;
  String? get homeURL => throw _privateConstructorUsedError;
  String? get snsURL => throw _privateConstructorUsedError;
  DateTime get dtCreated => throw _privateConstructorUsedError;
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      String email,
      String? displayName,
      String? photoURL,
      String? blandName,
      String? homeURL,
      String? snsURL,
      DateTime dtCreated,
      DateTime dtUpdated,
      int? level});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
    Object? blandName = freezed,
    Object? homeURL = freezed,
    Object? snsURL = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
    Object? level = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
      blandName: blandName == freezed
          ? _value.blandName
          : blandName // ignore: cast_nullable_to_non_nullable
              as String?,
      homeURL: homeURL == freezed
          ? _value.homeURL
          : homeURL // ignore: cast_nullable_to_non_nullable
              as String?,
      snsURL: snsURL == freezed
          ? _value.snsURL
          : snsURL // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dtUpdated: dtUpdated == freezed
          ? _value.dtUpdated
          : dtUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) then) =
      __$ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid,
      String email,
      String? displayName,
      String? photoURL,
      String? blandName,
      String? homeURL,
      String? snsURL,
      DateTime dtCreated,
      DateTime dtUpdated,
      int? level});
}

/// @nodoc
class __$ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(_Profile _value, $Res Function(_Profile) _then)
      : super(_value, (v) => _then(v as _Profile));

  @override
  _Profile get _value => super._value as _Profile;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
    Object? blandName = freezed,
    Object? homeURL = freezed,
    Object? snsURL = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
    Object? level = freezed,
  }) {
    return _then(_Profile(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
      blandName: blandName == freezed
          ? _value.blandName
          : blandName // ignore: cast_nullable_to_non_nullable
              as String?,
      homeURL: homeURL == freezed
          ? _value.homeURL
          : homeURL // ignore: cast_nullable_to_non_nullable
              as String?,
      snsURL: snsURL == freezed
          ? _value.snsURL
          : snsURL // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dtUpdated: dtUpdated == freezed
          ? _value.dtUpdated
          : dtUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Profile extends _Profile {
  _$_Profile(
      {this.uid,
      required this.email,
      this.displayName,
      this.photoURL,
      this.blandName,
      this.homeURL,
      this.snsURL,
      required this.dtCreated,
      required this.dtUpdated,
      this.level})
      : super._();

  @override
  final String? uid;
  @override
  final String email;
  @override
  final String? displayName;
  @override
  final String? photoURL;
  @override
  final String? blandName;
  @override
  final String? homeURL;
  @override
  final String? snsURL;
  @override
  final DateTime dtCreated;
  @override
  final DateTime dtUpdated;
  @override
  final int? level;

  @override
  String toString() {
    return 'Profile(uid: $uid, email: $email, displayName: $displayName, photoURL: $photoURL, blandName: $blandName, homeURL: $homeURL, snsURL: $snsURL, dtCreated: $dtCreated, dtUpdated: $dtUpdated, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Profile &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)) &&
            (identical(other.blandName, blandName) ||
                const DeepCollectionEquality()
                    .equals(other.blandName, blandName)) &&
            (identical(other.homeURL, homeURL) ||
                const DeepCollectionEquality()
                    .equals(other.homeURL, homeURL)) &&
            (identical(other.snsURL, snsURL) ||
                const DeepCollectionEquality().equals(other.snsURL, snsURL)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)) &&
            (identical(other.dtUpdated, dtUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.dtUpdated, dtUpdated)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(blandName) ^
      const DeepCollectionEquality().hash(homeURL) ^
      const DeepCollectionEquality().hash(snsURL) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated) ^
      const DeepCollectionEquality().hash(level);

  @JsonKey(ignore: true)
  @override
  _$ProfileCopyWith<_Profile> get copyWith =>
      __$ProfileCopyWithImpl<_Profile>(this, _$identity);
}

abstract class _Profile extends Profile {
  factory _Profile(
      {String? uid,
      required String email,
      String? displayName,
      String? photoURL,
      String? blandName,
      String? homeURL,
      String? snsURL,
      required DateTime dtCreated,
      required DateTime dtUpdated,
      int? level}) = _$_Profile;
  _Profile._() : super._();

  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String? get displayName => throw _privateConstructorUsedError;
  @override
  String? get photoURL => throw _privateConstructorUsedError;
  @override
  String? get blandName => throw _privateConstructorUsedError;
  @override
  String? get homeURL => throw _privateConstructorUsedError;
  @override
  String? get snsURL => throw _privateConstructorUsedError;
  @override
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  int? get level => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileCopyWith<_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileShortTearOff {
  const _$ProfileShortTearOff();

  _ProfileShort call({String? uid, String? displayName, String? photoURL}) {
    return _ProfileShort(
      uid: uid,
      displayName: displayName,
      photoURL: photoURL,
    );
  }
}

/// @nodoc
const $ProfileShort = _$ProfileShortTearOff();

/// @nodoc
mixin _$ProfileShort {
  String? get uid =>
      throw _privateConstructorUsedError; // required String email,
  String? get displayName => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileShortCopyWith<ProfileShort> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileShortCopyWith<$Res> {
  factory $ProfileShortCopyWith(
          ProfileShort value, $Res Function(ProfileShort) then) =
      _$ProfileShortCopyWithImpl<$Res>;
  $Res call({String? uid, String? displayName, String? photoURL});
}

/// @nodoc
class _$ProfileShortCopyWithImpl<$Res> implements $ProfileShortCopyWith<$Res> {
  _$ProfileShortCopyWithImpl(this._value, this._then);

  final ProfileShort _value;
  // ignore: unused_field
  final $Res Function(ProfileShort) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProfileShortCopyWith<$Res>
    implements $ProfileShortCopyWith<$Res> {
  factory _$ProfileShortCopyWith(
          _ProfileShort value, $Res Function(_ProfileShort) then) =
      __$ProfileShortCopyWithImpl<$Res>;
  @override
  $Res call({String? uid, String? displayName, String? photoURL});
}

/// @nodoc
class __$ProfileShortCopyWithImpl<$Res> extends _$ProfileShortCopyWithImpl<$Res>
    implements _$ProfileShortCopyWith<$Res> {
  __$ProfileShortCopyWithImpl(
      _ProfileShort _value, $Res Function(_ProfileShort) _then)
      : super(_value, (v) => _then(v as _ProfileShort));

  @override
  _ProfileShort get _value => super._value as _ProfileShort;

  @override
  $Res call({
    Object? uid = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_ProfileShort(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProfileShort extends _ProfileShort {
  _$_ProfileShort({this.uid, this.displayName, this.photoURL}) : super._();

  @override
  final String? uid;
  @override // required String email,
  final String? displayName;
  @override
  final String? photoURL;

  @override
  String toString() {
    return 'ProfileShort(uid: $uid, displayName: $displayName, photoURL: $photoURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileShort &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(photoURL);

  @JsonKey(ignore: true)
  @override
  _$ProfileShortCopyWith<_ProfileShort> get copyWith =>
      __$ProfileShortCopyWithImpl<_ProfileShort>(this, _$identity);
}

abstract class _ProfileShort extends ProfileShort {
  factory _ProfileShort({String? uid, String? displayName, String? photoURL}) =
      _$_ProfileShort;
  _ProfileShort._() : super._();

  @override
  String? get uid => throw _privateConstructorUsedError;
  @override // required String email,
  String? get displayName => throw _privateConstructorUsedError;
  @override
  String? get photoURL => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileShortCopyWith<_ProfileShort> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserDetailTearOff {
  const _$UserDetailTearOff();

  _UserDetail call({String? phone, String? intro}) {
    return _UserDetail(
      phone: phone,
      intro: intro,
    );
  }
}

/// @nodoc
const $UserDetail = _$UserDetailTearOff();

/// @nodoc
mixin _$UserDetail {
  String? get phone => throw _privateConstructorUsedError;
  String? get intro => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailCopyWith<UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res>;
  $Res call({String? phone, String? intro});
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res> implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

  final UserDetail _value;
  // ignore: unused_field
  final $Res Function(UserDetail) _then;

  @override
  $Res call({
    Object? phone = freezed,
    Object? intro = freezed,
  }) {
    return _then(_value.copyWith(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      intro: intro == freezed
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserDetailCopyWith<$Res> implements $UserDetailCopyWith<$Res> {
  factory _$UserDetailCopyWith(
          _UserDetail value, $Res Function(_UserDetail) then) =
      __$UserDetailCopyWithImpl<$Res>;
  @override
  $Res call({String? phone, String? intro});
}

/// @nodoc
class __$UserDetailCopyWithImpl<$Res> extends _$UserDetailCopyWithImpl<$Res>
    implements _$UserDetailCopyWith<$Res> {
  __$UserDetailCopyWithImpl(
      _UserDetail _value, $Res Function(_UserDetail) _then)
      : super(_value, (v) => _then(v as _UserDetail));

  @override
  _UserDetail get _value => super._value as _UserDetail;

  @override
  $Res call({
    Object? phone = freezed,
    Object? intro = freezed,
  }) {
    return _then(_UserDetail(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      intro: intro == freezed
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserDetail implements _UserDetail {
  const _$_UserDetail({this.phone, this.intro});

  @override
  final String? phone;
  @override
  final String? intro;

  @override
  String toString() {
    return 'UserDetail(phone: $phone, intro: $intro)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDetail &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.intro, intro) ||
                const DeepCollectionEquality().equals(other.intro, intro)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(intro);

  @JsonKey(ignore: true)
  @override
  _$UserDetailCopyWith<_UserDetail> get copyWith =>
      __$UserDetailCopyWithImpl<_UserDetail>(this, _$identity);
}

abstract class _UserDetail implements UserDetail {
  const factory _UserDetail({String? phone, String? intro}) = _$_UserDetail;

  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  String? get intro => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDetailCopyWith<_UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserRegiInfoTearOff {
  const _$UserRegiInfoTearOff();

  _UserRegiInfo call({bool? isProvision, bool? isPersonInfo, bool? isReceive}) {
    return _UserRegiInfo(
      isProvision: isProvision,
      isPersonInfo: isPersonInfo,
      isReceive: isReceive,
    );
  }
}

/// @nodoc
const $UserRegiInfo = _$UserRegiInfoTearOff();

/// @nodoc
mixin _$UserRegiInfo {
  bool? get isProvision => throw _privateConstructorUsedError;
  bool? get isPersonInfo => throw _privateConstructorUsedError;
  bool? get isReceive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserRegiInfoCopyWith<UserRegiInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegiInfoCopyWith<$Res> {
  factory $UserRegiInfoCopyWith(
          UserRegiInfo value, $Res Function(UserRegiInfo) then) =
      _$UserRegiInfoCopyWithImpl<$Res>;
  $Res call({bool? isProvision, bool? isPersonInfo, bool? isReceive});
}

/// @nodoc
class _$UserRegiInfoCopyWithImpl<$Res> implements $UserRegiInfoCopyWith<$Res> {
  _$UserRegiInfoCopyWithImpl(this._value, this._then);

  final UserRegiInfo _value;
  // ignore: unused_field
  final $Res Function(UserRegiInfo) _then;

  @override
  $Res call({
    Object? isProvision = freezed,
    Object? isPersonInfo = freezed,
    Object? isReceive = freezed,
  }) {
    return _then(_value.copyWith(
      isProvision: isProvision == freezed
          ? _value.isProvision
          : isProvision // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPersonInfo: isPersonInfo == freezed
          ? _value.isPersonInfo
          : isPersonInfo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReceive: isReceive == freezed
          ? _value.isReceive
          : isReceive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$UserRegiInfoCopyWith<$Res>
    implements $UserRegiInfoCopyWith<$Res> {
  factory _$UserRegiInfoCopyWith(
          _UserRegiInfo value, $Res Function(_UserRegiInfo) then) =
      __$UserRegiInfoCopyWithImpl<$Res>;
  @override
  $Res call({bool? isProvision, bool? isPersonInfo, bool? isReceive});
}

/// @nodoc
class __$UserRegiInfoCopyWithImpl<$Res> extends _$UserRegiInfoCopyWithImpl<$Res>
    implements _$UserRegiInfoCopyWith<$Res> {
  __$UserRegiInfoCopyWithImpl(
      _UserRegiInfo _value, $Res Function(_UserRegiInfo) _then)
      : super(_value, (v) => _then(v as _UserRegiInfo));

  @override
  _UserRegiInfo get _value => super._value as _UserRegiInfo;

  @override
  $Res call({
    Object? isProvision = freezed,
    Object? isPersonInfo = freezed,
    Object? isReceive = freezed,
  }) {
    return _then(_UserRegiInfo(
      isProvision: isProvision == freezed
          ? _value.isProvision
          : isProvision // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPersonInfo: isPersonInfo == freezed
          ? _value.isPersonInfo
          : isPersonInfo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReceive: isReceive == freezed
          ? _value.isReceive
          : isReceive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_UserRegiInfo implements _UserRegiInfo {
  const _$_UserRegiInfo({this.isProvision, this.isPersonInfo, this.isReceive});

  @override
  final bool? isProvision;
  @override
  final bool? isPersonInfo;
  @override
  final bool? isReceive;

  @override
  String toString() {
    return 'UserRegiInfo(isProvision: $isProvision, isPersonInfo: $isPersonInfo, isReceive: $isReceive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserRegiInfo &&
            (identical(other.isProvision, isProvision) ||
                const DeepCollectionEquality()
                    .equals(other.isProvision, isProvision)) &&
            (identical(other.isPersonInfo, isPersonInfo) ||
                const DeepCollectionEquality()
                    .equals(other.isPersonInfo, isPersonInfo)) &&
            (identical(other.isReceive, isReceive) ||
                const DeepCollectionEquality()
                    .equals(other.isReceive, isReceive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isProvision) ^
      const DeepCollectionEquality().hash(isPersonInfo) ^
      const DeepCollectionEquality().hash(isReceive);

  @JsonKey(ignore: true)
  @override
  _$UserRegiInfoCopyWith<_UserRegiInfo> get copyWith =>
      __$UserRegiInfoCopyWithImpl<_UserRegiInfo>(this, _$identity);
}

abstract class _UserRegiInfo implements UserRegiInfo {
  const factory _UserRegiInfo(
      {bool? isProvision,
      bool? isPersonInfo,
      bool? isReceive}) = _$_UserRegiInfo;

  @override
  bool? get isProvision => throw _privateConstructorUsedError;
  @override
  bool? get isPersonInfo => throw _privateConstructorUsedError;
  @override
  bool? get isReceive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserRegiInfoCopyWith<_UserRegiInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
