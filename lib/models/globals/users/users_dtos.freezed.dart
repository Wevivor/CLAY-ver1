// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'users_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HanUserInfoDto _$HanUserInfoDtoFromJson(Map<String, dynamic> json) {
  return _HanUserInfoDto.fromJson(json);
}

/// @nodoc
class _$HanUserInfoDtoTearOff {
  const _$HanUserInfoDtoTearOff();

  _HanUserInfoDto call(
      {String? uid,
      required ProfileDto profile,
      UserDetailDto? info,
      UserRegiInfoDto? regiInfo,
      required ListCntDto following,
      bool? isDisabled,
      int? level,
      required int cntVisit,
      bool? isPush,
      String? token,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated}) {
    return _HanUserInfoDto(
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

  HanUserInfoDto fromJson(Map<String, Object> json) {
    return HanUserInfoDto.fromJson(json);
  }
}

/// @nodoc
const $HanUserInfoDto = _$HanUserInfoDtoTearOff();

/// @nodoc
mixin _$HanUserInfoDto {
  String? get uid => throw _privateConstructorUsedError;
  ProfileDto get profile => throw _privateConstructorUsedError;
  UserDetailDto? get info => throw _privateConstructorUsedError;
  UserRegiInfoDto? get regiInfo => throw _privateConstructorUsedError;
  ListCntDto get following => throw _privateConstructorUsedError;
  bool? get isDisabled => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  int get cntVisit => throw _privateConstructorUsedError;
  bool? get isPush => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HanUserInfoDtoCopyWith<HanUserInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HanUserInfoDtoCopyWith<$Res> {
  factory $HanUserInfoDtoCopyWith(
          HanUserInfoDto value, $Res Function(HanUserInfoDto) then) =
      _$HanUserInfoDtoCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      ProfileDto profile,
      UserDetailDto? info,
      UserRegiInfoDto? regiInfo,
      ListCntDto following,
      bool? isDisabled,
      int? level,
      int cntVisit,
      bool? isPush,
      String? token,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated});

  $ProfileDtoCopyWith<$Res> get profile;
  $UserDetailDtoCopyWith<$Res>? get info;
  $UserRegiInfoDtoCopyWith<$Res>? get regiInfo;
  $ListCntDtoCopyWith<$Res> get following;
}

/// @nodoc
class _$HanUserInfoDtoCopyWithImpl<$Res>
    implements $HanUserInfoDtoCopyWith<$Res> {
  _$HanUserInfoDtoCopyWithImpl(this._value, this._then);

  final HanUserInfoDto _value;
  // ignore: unused_field
  final $Res Function(HanUserInfoDto) _then;

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
              as ProfileDto,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as UserDetailDto?,
      regiInfo: regiInfo == freezed
          ? _value.regiInfo
          : regiInfo // ignore: cast_nullable_to_non_nullable
              as UserRegiInfoDto?,
      following: following == freezed
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as ListCntDto,
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
  $ProfileDtoCopyWith<$Res> get profile {
    return $ProfileDtoCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $UserDetailDtoCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $UserDetailDtoCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $UserRegiInfoDtoCopyWith<$Res>? get regiInfo {
    if (_value.regiInfo == null) {
      return null;
    }

    return $UserRegiInfoDtoCopyWith<$Res>(_value.regiInfo!, (value) {
      return _then(_value.copyWith(regiInfo: value));
    });
  }

  @override
  $ListCntDtoCopyWith<$Res> get following {
    return $ListCntDtoCopyWith<$Res>(_value.following, (value) {
      return _then(_value.copyWith(following: value));
    });
  }
}

/// @nodoc
abstract class _$HanUserInfoDtoCopyWith<$Res>
    implements $HanUserInfoDtoCopyWith<$Res> {
  factory _$HanUserInfoDtoCopyWith(
          _HanUserInfoDto value, $Res Function(_HanUserInfoDto) then) =
      __$HanUserInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid,
      ProfileDto profile,
      UserDetailDto? info,
      UserRegiInfoDto? regiInfo,
      ListCntDto following,
      bool? isDisabled,
      int? level,
      int cntVisit,
      bool? isPush,
      String? token,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated});

  @override
  $ProfileDtoCopyWith<$Res> get profile;
  @override
  $UserDetailDtoCopyWith<$Res>? get info;
  @override
  $UserRegiInfoDtoCopyWith<$Res>? get regiInfo;
  @override
  $ListCntDtoCopyWith<$Res> get following;
}

/// @nodoc
class __$HanUserInfoDtoCopyWithImpl<$Res>
    extends _$HanUserInfoDtoCopyWithImpl<$Res>
    implements _$HanUserInfoDtoCopyWith<$Res> {
  __$HanUserInfoDtoCopyWithImpl(
      _HanUserInfoDto _value, $Res Function(_HanUserInfoDto) _then)
      : super(_value, (v) => _then(v as _HanUserInfoDto));

  @override
  _HanUserInfoDto get _value => super._value as _HanUserInfoDto;

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
    return _then(_HanUserInfoDto(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as UserDetailDto?,
      regiInfo: regiInfo == freezed
          ? _value.regiInfo
          : regiInfo // ignore: cast_nullable_to_non_nullable
              as UserRegiInfoDto?,
      following: following == freezed
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as ListCntDto,
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

@JsonSerializable(explicitToJson: true)
class _$_HanUserInfoDto extends _HanUserInfoDto {
  _$_HanUserInfoDto(
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
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtUpdated})
      : super._();

  factory _$_HanUserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$_$_HanUserInfoDtoFromJson(json);

  @override
  final String? uid;
  @override
  final ProfileDto profile;
  @override
  final UserDetailDto? info;
  @override
  final UserRegiInfoDto? regiInfo;
  @override
  final ListCntDto following;
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
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtUpdated;

  @override
  String toString() {
    return 'HanUserInfoDto(uid: $uid, profile: $profile, info: $info, regiInfo: $regiInfo, following: $following, isDisabled: $isDisabled, level: $level, cntVisit: $cntVisit, isPush: $isPush, token: $token, dtCreated: $dtCreated, dtUpdated: $dtUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HanUserInfoDto &&
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
  _$HanUserInfoDtoCopyWith<_HanUserInfoDto> get copyWith =>
      __$HanUserInfoDtoCopyWithImpl<_HanUserInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HanUserInfoDtoToJson(this);
  }
}

abstract class _HanUserInfoDto extends HanUserInfoDto {
  factory _HanUserInfoDto(
      {String? uid,
      required ProfileDto profile,
      UserDetailDto? info,
      UserRegiInfoDto? regiInfo,
      required ListCntDto following,
      bool? isDisabled,
      int? level,
      required int cntVisit,
      bool? isPush,
      String? token,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated}) = _$_HanUserInfoDto;
  _HanUserInfoDto._() : super._();

  factory _HanUserInfoDto.fromJson(Map<String, dynamic> json) =
      _$_HanUserInfoDto.fromJson;

  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  ProfileDto get profile => throw _privateConstructorUsedError;
  @override
  UserDetailDto? get info => throw _privateConstructorUsedError;
  @override
  UserRegiInfoDto? get regiInfo => throw _privateConstructorUsedError;
  @override
  ListCntDto get following => throw _privateConstructorUsedError;
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
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HanUserInfoDtoCopyWith<_HanUserInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRegiInfoDto _$UserRegiInfoDtoFromJson(Map<String, dynamic> json) {
  return _UserRegiInfoDto.fromJson(json);
}

/// @nodoc
class _$UserRegiInfoDtoTearOff {
  const _$UserRegiInfoDtoTearOff();

  _UserRegiInfoDto call(
      {bool? isProvision, bool? isPersonInfo, bool? isReceive}) {
    return _UserRegiInfoDto(
      isProvision: isProvision,
      isPersonInfo: isPersonInfo,
      isReceive: isReceive,
    );
  }

  UserRegiInfoDto fromJson(Map<String, Object> json) {
    return UserRegiInfoDto.fromJson(json);
  }
}

/// @nodoc
const $UserRegiInfoDto = _$UserRegiInfoDtoTearOff();

/// @nodoc
mixin _$UserRegiInfoDto {
  bool? get isProvision => throw _privateConstructorUsedError;
  bool? get isPersonInfo => throw _privateConstructorUsedError;
  bool? get isReceive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegiInfoDtoCopyWith<UserRegiInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegiInfoDtoCopyWith<$Res> {
  factory $UserRegiInfoDtoCopyWith(
          UserRegiInfoDto value, $Res Function(UserRegiInfoDto) then) =
      _$UserRegiInfoDtoCopyWithImpl<$Res>;
  $Res call({bool? isProvision, bool? isPersonInfo, bool? isReceive});
}

/// @nodoc
class _$UserRegiInfoDtoCopyWithImpl<$Res>
    implements $UserRegiInfoDtoCopyWith<$Res> {
  _$UserRegiInfoDtoCopyWithImpl(this._value, this._then);

  final UserRegiInfoDto _value;
  // ignore: unused_field
  final $Res Function(UserRegiInfoDto) _then;

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
abstract class _$UserRegiInfoDtoCopyWith<$Res>
    implements $UserRegiInfoDtoCopyWith<$Res> {
  factory _$UserRegiInfoDtoCopyWith(
          _UserRegiInfoDto value, $Res Function(_UserRegiInfoDto) then) =
      __$UserRegiInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call({bool? isProvision, bool? isPersonInfo, bool? isReceive});
}

/// @nodoc
class __$UserRegiInfoDtoCopyWithImpl<$Res>
    extends _$UserRegiInfoDtoCopyWithImpl<$Res>
    implements _$UserRegiInfoDtoCopyWith<$Res> {
  __$UserRegiInfoDtoCopyWithImpl(
      _UserRegiInfoDto _value, $Res Function(_UserRegiInfoDto) _then)
      : super(_value, (v) => _then(v as _UserRegiInfoDto));

  @override
  _UserRegiInfoDto get _value => super._value as _UserRegiInfoDto;

  @override
  $Res call({
    Object? isProvision = freezed,
    Object? isPersonInfo = freezed,
    Object? isReceive = freezed,
  }) {
    return _then(_UserRegiInfoDto(
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

@JsonSerializable(explicitToJson: true)
class _$_UserRegiInfoDto extends _UserRegiInfoDto {
  _$_UserRegiInfoDto({this.isProvision, this.isPersonInfo, this.isReceive})
      : super._();

  factory _$_UserRegiInfoDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserRegiInfoDtoFromJson(json);

  @override
  final bool? isProvision;
  @override
  final bool? isPersonInfo;
  @override
  final bool? isReceive;

  @override
  String toString() {
    return 'UserRegiInfoDto(isProvision: $isProvision, isPersonInfo: $isPersonInfo, isReceive: $isReceive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserRegiInfoDto &&
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
  _$UserRegiInfoDtoCopyWith<_UserRegiInfoDto> get copyWith =>
      __$UserRegiInfoDtoCopyWithImpl<_UserRegiInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserRegiInfoDtoToJson(this);
  }
}

abstract class _UserRegiInfoDto extends UserRegiInfoDto {
  factory _UserRegiInfoDto(
      {bool? isProvision,
      bool? isPersonInfo,
      bool? isReceive}) = _$_UserRegiInfoDto;
  _UserRegiInfoDto._() : super._();

  factory _UserRegiInfoDto.fromJson(Map<String, dynamic> json) =
      _$_UserRegiInfoDto.fromJson;

  @override
  bool? get isProvision => throw _privateConstructorUsedError;
  @override
  bool? get isPersonInfo => throw _privateConstructorUsedError;
  @override
  bool? get isReceive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserRegiInfoDtoCopyWith<_UserRegiInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetailDto _$UserDetailDtoFromJson(Map<String, dynamic> json) {
  return _UserDetailDto.fromJson(json);
}

/// @nodoc
class _$UserDetailDtoTearOff {
  const _$UserDetailDtoTearOff();

  _UserDetailDto call({String? phone, String? intro}) {
    return _UserDetailDto(
      phone: phone,
      intro: intro,
    );
  }

  UserDetailDto fromJson(Map<String, Object> json) {
    return UserDetailDto.fromJson(json);
  }
}

/// @nodoc
const $UserDetailDto = _$UserDetailDtoTearOff();

/// @nodoc
mixin _$UserDetailDto {
  String? get phone => throw _privateConstructorUsedError;
  String? get intro => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailDtoCopyWith<UserDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailDtoCopyWith<$Res> {
  factory $UserDetailDtoCopyWith(
          UserDetailDto value, $Res Function(UserDetailDto) then) =
      _$UserDetailDtoCopyWithImpl<$Res>;
  $Res call({String? phone, String? intro});
}

/// @nodoc
class _$UserDetailDtoCopyWithImpl<$Res>
    implements $UserDetailDtoCopyWith<$Res> {
  _$UserDetailDtoCopyWithImpl(this._value, this._then);

  final UserDetailDto _value;
  // ignore: unused_field
  final $Res Function(UserDetailDto) _then;

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
abstract class _$UserDetailDtoCopyWith<$Res>
    implements $UserDetailDtoCopyWith<$Res> {
  factory _$UserDetailDtoCopyWith(
          _UserDetailDto value, $Res Function(_UserDetailDto) then) =
      __$UserDetailDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? phone, String? intro});
}

/// @nodoc
class __$UserDetailDtoCopyWithImpl<$Res>
    extends _$UserDetailDtoCopyWithImpl<$Res>
    implements _$UserDetailDtoCopyWith<$Res> {
  __$UserDetailDtoCopyWithImpl(
      _UserDetailDto _value, $Res Function(_UserDetailDto) _then)
      : super(_value, (v) => _then(v as _UserDetailDto));

  @override
  _UserDetailDto get _value => super._value as _UserDetailDto;

  @override
  $Res call({
    Object? phone = freezed,
    Object? intro = freezed,
  }) {
    return _then(_UserDetailDto(
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

@JsonSerializable(explicitToJson: true)
class _$_UserDetailDto extends _UserDetailDto {
  _$_UserDetailDto({this.phone, this.intro}) : super._();

  factory _$_UserDetailDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDetailDtoFromJson(json);

  @override
  final String? phone;
  @override
  final String? intro;

  @override
  String toString() {
    return 'UserDetailDto(phone: $phone, intro: $intro)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDetailDto &&
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
  _$UserDetailDtoCopyWith<_UserDetailDto> get copyWith =>
      __$UserDetailDtoCopyWithImpl<_UserDetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDetailDtoToJson(this);
  }
}

abstract class _UserDetailDto extends UserDetailDto {
  factory _UserDetailDto({String? phone, String? intro}) = _$_UserDetailDto;
  _UserDetailDto._() : super._();

  factory _UserDetailDto.fromJson(Map<String, dynamic> json) =
      _$_UserDetailDto.fromJson;

  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  String? get intro => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDetailDtoCopyWith<_UserDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) {
  return _ProfileDto.fromJson(json);
}

/// @nodoc
class _$ProfileDtoTearOff {
  const _$ProfileDtoTearOff();

  _ProfileDto call(
      {String? uid,
      required String email,
      String? displayName,
      String? photoURL,
      String? blandName,
      String? homeURL,
      String? snsURL,
      int? level,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated}) {
    return _ProfileDto(
      uid: uid,
      email: email,
      displayName: displayName,
      photoURL: photoURL,
      blandName: blandName,
      homeURL: homeURL,
      snsURL: snsURL,
      level: level,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
    );
  }

  ProfileDto fromJson(Map<String, Object> json) {
    return ProfileDto.fromJson(json);
  }
}

/// @nodoc
const $ProfileDto = _$ProfileDtoTearOff();

/// @nodoc
mixin _$ProfileDto {
  String? get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;
  String? get blandName => throw _privateConstructorUsedError;
  String? get homeURL => throw _privateConstructorUsedError;
  String? get snsURL => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError; // bool? isPush,
// String? token,
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDtoCopyWith<ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDtoCopyWith<$Res> {
  factory $ProfileDtoCopyWith(
          ProfileDto value, $Res Function(ProfileDto) then) =
      _$ProfileDtoCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      String email,
      String? displayName,
      String? photoURL,
      String? blandName,
      String? homeURL,
      String? snsURL,
      int? level,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated});
}

/// @nodoc
class _$ProfileDtoCopyWithImpl<$Res> implements $ProfileDtoCopyWith<$Res> {
  _$ProfileDtoCopyWithImpl(this._value, this._then);

  final ProfileDto _value;
  // ignore: unused_field
  final $Res Function(ProfileDto) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
    Object? blandName = freezed,
    Object? homeURL = freezed,
    Object? snsURL = freezed,
    Object? level = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
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
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$ProfileDtoCopyWith<$Res> implements $ProfileDtoCopyWith<$Res> {
  factory _$ProfileDtoCopyWith(
          _ProfileDto value, $Res Function(_ProfileDto) then) =
      __$ProfileDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid,
      String email,
      String? displayName,
      String? photoURL,
      String? blandName,
      String? homeURL,
      String? snsURL,
      int? level,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated});
}

/// @nodoc
class __$ProfileDtoCopyWithImpl<$Res> extends _$ProfileDtoCopyWithImpl<$Res>
    implements _$ProfileDtoCopyWith<$Res> {
  __$ProfileDtoCopyWithImpl(
      _ProfileDto _value, $Res Function(_ProfileDto) _then)
      : super(_value, (v) => _then(v as _ProfileDto));

  @override
  _ProfileDto get _value => super._value as _ProfileDto;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
    Object? blandName = freezed,
    Object? homeURL = freezed,
    Object? snsURL = freezed,
    Object? level = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_ProfileDto(
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
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_ProfileDto extends _ProfileDto {
  _$_ProfileDto(
      {this.uid,
      required this.email,
      this.displayName,
      this.photoURL,
      this.blandName,
      this.homeURL,
      this.snsURL,
      this.level,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtUpdated})
      : super._();

  factory _$_ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileDtoFromJson(json);

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
  final int? level;
  @override // bool? isPush,
// String? token,
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtUpdated;

  @override
  String toString() {
    return 'ProfileDto(uid: $uid, email: $email, displayName: $displayName, photoURL: $photoURL, blandName: $blandName, homeURL: $homeURL, snsURL: $snsURL, level: $level, dtCreated: $dtCreated, dtUpdated: $dtUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileDto &&
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
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
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
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(blandName) ^
      const DeepCollectionEquality().hash(homeURL) ^
      const DeepCollectionEquality().hash(snsURL) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated);

  @JsonKey(ignore: true)
  @override
  _$ProfileDtoCopyWith<_ProfileDto> get copyWith =>
      __$ProfileDtoCopyWithImpl<_ProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileDtoToJson(this);
  }
}

abstract class _ProfileDto extends ProfileDto {
  factory _ProfileDto(
      {String? uid,
      required String email,
      String? displayName,
      String? photoURL,
      String? blandName,
      String? homeURL,
      String? snsURL,
      int? level,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated}) = _$_ProfileDto;
  _ProfileDto._() : super._();

  factory _ProfileDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileDto.fromJson;

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
  int? get level => throw _privateConstructorUsedError;
  @override // bool? isPush,
// String? token,
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileDtoCopyWith<_ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileShortDto _$ProfileShortDtoFromJson(Map<String, dynamic> json) {
  return _ProfileShortDto.fromJson(json);
}

/// @nodoc
class _$ProfileShortDtoTearOff {
  const _$ProfileShortDtoTearOff();

  _ProfileShortDto call(
      {String? uid, String? displayName, String? photoURL, String? blandName}) {
    return _ProfileShortDto(
      uid: uid,
      displayName: displayName,
      photoURL: photoURL,
      blandName: blandName,
    );
  }

  ProfileShortDto fromJson(Map<String, Object> json) {
    return ProfileShortDto.fromJson(json);
  }
}

/// @nodoc
const $ProfileShortDto = _$ProfileShortDtoTearOff();

/// @nodoc
mixin _$ProfileShortDto {
  String? get uid =>
      throw _privateConstructorUsedError; // required String email,
  String? get displayName => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;
  String? get blandName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileShortDtoCopyWith<ProfileShortDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileShortDtoCopyWith<$Res> {
  factory $ProfileShortDtoCopyWith(
          ProfileShortDto value, $Res Function(ProfileShortDto) then) =
      _$ProfileShortDtoCopyWithImpl<$Res>;
  $Res call(
      {String? uid, String? displayName, String? photoURL, String? blandName});
}

/// @nodoc
class _$ProfileShortDtoCopyWithImpl<$Res>
    implements $ProfileShortDtoCopyWith<$Res> {
  _$ProfileShortDtoCopyWithImpl(this._value, this._then);

  final ProfileShortDto _value;
  // ignore: unused_field
  final $Res Function(ProfileShortDto) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
    Object? blandName = freezed,
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
      blandName: blandName == freezed
          ? _value.blandName
          : blandName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProfileShortDtoCopyWith<$Res>
    implements $ProfileShortDtoCopyWith<$Res> {
  factory _$ProfileShortDtoCopyWith(
          _ProfileShortDto value, $Res Function(_ProfileShortDto) then) =
      __$ProfileShortDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid, String? displayName, String? photoURL, String? blandName});
}

/// @nodoc
class __$ProfileShortDtoCopyWithImpl<$Res>
    extends _$ProfileShortDtoCopyWithImpl<$Res>
    implements _$ProfileShortDtoCopyWith<$Res> {
  __$ProfileShortDtoCopyWithImpl(
      _ProfileShortDto _value, $Res Function(_ProfileShortDto) _then)
      : super(_value, (v) => _then(v as _ProfileShortDto));

  @override
  _ProfileShortDto get _value => super._value as _ProfileShortDto;

  @override
  $Res call({
    Object? uid = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
    Object? blandName = freezed,
  }) {
    return _then(_ProfileShortDto(
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
      blandName: blandName == freezed
          ? _value.blandName
          : blandName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProfileShortDto extends _ProfileShortDto {
  _$_ProfileShortDto(
      {this.uid, this.displayName, this.photoURL, this.blandName})
      : super._();

  factory _$_ProfileShortDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileShortDtoFromJson(json);

  @override
  final String? uid;
  @override // required String email,
  final String? displayName;
  @override
  final String? photoURL;
  @override
  final String? blandName;

  @override
  String toString() {
    return 'ProfileShortDto(uid: $uid, displayName: $displayName, photoURL: $photoURL, blandName: $blandName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileShortDto &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)) &&
            (identical(other.blandName, blandName) ||
                const DeepCollectionEquality()
                    .equals(other.blandName, blandName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(blandName);

  @JsonKey(ignore: true)
  @override
  _$ProfileShortDtoCopyWith<_ProfileShortDto> get copyWith =>
      __$ProfileShortDtoCopyWithImpl<_ProfileShortDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileShortDtoToJson(this);
  }
}

abstract class _ProfileShortDto extends ProfileShortDto {
  factory _ProfileShortDto(
      {String? uid,
      String? displayName,
      String? photoURL,
      String? blandName}) = _$_ProfileShortDto;
  _ProfileShortDto._() : super._();

  factory _ProfileShortDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileShortDto.fromJson;

  @override
  String? get uid => throw _privateConstructorUsedError;
  @override // required String email,
  String? get displayName => throw _privateConstructorUsedError;
  @override
  String? get photoURL => throw _privateConstructorUsedError;
  @override
  String? get blandName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileShortDtoCopyWith<_ProfileShortDto> get copyWith =>
      throw _privateConstructorUsedError;
}
