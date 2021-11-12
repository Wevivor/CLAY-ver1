// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      {@JsonKey(name: 'user_id')
          String? userId,
      required ProfileDto profile,
      @JsonKey(name: 'is_disabled')
          bool? isDisabled,
      int? level,
      @JsonKey(name: 'user_phone')
          String? userPhone,
      String? intro,
      @JsonKey(name: 'sns_loging')
          String? snsLogin,
      @JsonKey(name: 'cnt_visit')
          required int cntVisit,
      @JsonKey(name: 'remind_txt')
          String? remindTxt,
      @JsonKey(name: 'locale')
          String? locale,
      @JsonKey(name: 'is_push')
          bool? isPush,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime registerDate}) {
    return _HanUserInfoDto(
      userId: userId,
      profile: profile,
      isDisabled: isDisabled,
      level: level,
      userPhone: userPhone,
      intro: intro,
      snsLogin: snsLogin,
      cntVisit: cntVisit,
      remindTxt: remindTxt,
      locale: locale,
      isPush: isPush,
      registerDate: registerDate,
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
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  ProfileDto get profile => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_disabled')
  bool? get isDisabled => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_phone')
  String? get userPhone => throw _privateConstructorUsedError;
  String? get intro => throw _privateConstructorUsedError;
  @JsonKey(name: 'sns_loging')
  String? get snsLogin => throw _privateConstructorUsedError;
  @JsonKey(name: 'cnt_visit')
  int get cntVisit => throw _privateConstructorUsedError;
  @JsonKey(name: 'remind_txt')
  String? get remindTxt => throw _privateConstructorUsedError;
  @JsonKey(name: 'locale')
  String? get locale => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_push')
  bool? get isPush => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get registerDate => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'user_id')
          String? userId,
      ProfileDto profile,
      @JsonKey(name: 'is_disabled')
          bool? isDisabled,
      int? level,
      @JsonKey(name: 'user_phone')
          String? userPhone,
      String? intro,
      @JsonKey(name: 'sns_loging')
          String? snsLogin,
      @JsonKey(name: 'cnt_visit')
          int cntVisit,
      @JsonKey(name: 'remind_txt')
          String? remindTxt,
      @JsonKey(name: 'locale')
          String? locale,
      @JsonKey(name: 'is_push')
          bool? isPush,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime registerDate});

  $ProfileDtoCopyWith<$Res> get profile;
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
    Object? userId = freezed,
    Object? profile = freezed,
    Object? isDisabled = freezed,
    Object? level = freezed,
    Object? userPhone = freezed,
    Object? intro = freezed,
    Object? snsLogin = freezed,
    Object? cntVisit = freezed,
    Object? remindTxt = freezed,
    Object? locale = freezed,
    Object? isPush = freezed,
    Object? registerDate = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      isDisabled: isDisabled == freezed
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      userPhone: userPhone == freezed
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      intro: intro == freezed
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      snsLogin: snsLogin == freezed
          ? _value.snsLogin
          : snsLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      cntVisit: cntVisit == freezed
          ? _value.cntVisit
          : cntVisit // ignore: cast_nullable_to_non_nullable
              as int,
      remindTxt: remindTxt == freezed
          ? _value.remindTxt
          : remindTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      isPush: isPush == freezed
          ? _value.isPush
          : isPush // ignore: cast_nullable_to_non_nullable
              as bool?,
      registerDate: registerDate == freezed
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ProfileDtoCopyWith<$Res> get profile {
    return $ProfileDtoCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
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
      {@JsonKey(name: 'user_id')
          String? userId,
      ProfileDto profile,
      @JsonKey(name: 'is_disabled')
          bool? isDisabled,
      int? level,
      @JsonKey(name: 'user_phone')
          String? userPhone,
      String? intro,
      @JsonKey(name: 'sns_loging')
          String? snsLogin,
      @JsonKey(name: 'cnt_visit')
          int cntVisit,
      @JsonKey(name: 'remind_txt')
          String? remindTxt,
      @JsonKey(name: 'locale')
          String? locale,
      @JsonKey(name: 'is_push')
          bool? isPush,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime registerDate});

  @override
  $ProfileDtoCopyWith<$Res> get profile;
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
    Object? userId = freezed,
    Object? profile = freezed,
    Object? isDisabled = freezed,
    Object? level = freezed,
    Object? userPhone = freezed,
    Object? intro = freezed,
    Object? snsLogin = freezed,
    Object? cntVisit = freezed,
    Object? remindTxt = freezed,
    Object? locale = freezed,
    Object? isPush = freezed,
    Object? registerDate = freezed,
  }) {
    return _then(_HanUserInfoDto(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      isDisabled: isDisabled == freezed
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      userPhone: userPhone == freezed
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      intro: intro == freezed
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      snsLogin: snsLogin == freezed
          ? _value.snsLogin
          : snsLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      cntVisit: cntVisit == freezed
          ? _value.cntVisit
          : cntVisit // ignore: cast_nullable_to_non_nullable
              as int,
      remindTxt: remindTxt == freezed
          ? _value.remindTxt
          : remindTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      isPush: isPush == freezed
          ? _value.isPush
          : isPush // ignore: cast_nullable_to_non_nullable
              as bool?,
      registerDate: registerDate == freezed
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_HanUserInfoDto extends _HanUserInfoDto {
  _$_HanUserInfoDto(
      {@JsonKey(name: 'user_id')
          this.userId,
      required this.profile,
      @JsonKey(name: 'is_disabled')
          this.isDisabled,
      this.level,
      @JsonKey(name: 'user_phone')
          this.userPhone,
      this.intro,
      @JsonKey(name: 'sns_loging')
          this.snsLogin,
      @JsonKey(name: 'cnt_visit')
          required this.cntVisit,
      @JsonKey(name: 'remind_txt')
          this.remindTxt,
      @JsonKey(name: 'locale')
          this.locale,
      @JsonKey(name: 'is_push')
          this.isPush,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.registerDate})
      : super._();

  factory _$_HanUserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_HanUserInfoDtoFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  final ProfileDto profile;
  @override
  @JsonKey(name: 'is_disabled')
  final bool? isDisabled;
  @override
  final int? level;
  @override
  @JsonKey(name: 'user_phone')
  final String? userPhone;
  @override
  final String? intro;
  @override
  @JsonKey(name: 'sns_loging')
  final String? snsLogin;
  @override
  @JsonKey(name: 'cnt_visit')
  final int cntVisit;
  @override
  @JsonKey(name: 'remind_txt')
  final String? remindTxt;
  @override
  @JsonKey(name: 'locale')
  final String? locale;
  @override
  @JsonKey(name: 'is_push')
  final bool? isPush;
  @override
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  final DateTime registerDate;

  @override
  String toString() {
    return 'HanUserInfoDto(userId: $userId, profile: $profile, isDisabled: $isDisabled, level: $level, userPhone: $userPhone, intro: $intro, snsLogin: $snsLogin, cntVisit: $cntVisit, remindTxt: $remindTxt, locale: $locale, isPush: $isPush, registerDate: $registerDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HanUserInfoDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.isDisabled, isDisabled) ||
                const DeepCollectionEquality()
                    .equals(other.isDisabled, isDisabled)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.userPhone, userPhone) ||
                const DeepCollectionEquality()
                    .equals(other.userPhone, userPhone)) &&
            (identical(other.intro, intro) ||
                const DeepCollectionEquality().equals(other.intro, intro)) &&
            (identical(other.snsLogin, snsLogin) ||
                const DeepCollectionEquality()
                    .equals(other.snsLogin, snsLogin)) &&
            (identical(other.cntVisit, cntVisit) ||
                const DeepCollectionEquality()
                    .equals(other.cntVisit, cntVisit)) &&
            (identical(other.remindTxt, remindTxt) ||
                const DeepCollectionEquality()
                    .equals(other.remindTxt, remindTxt)) &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)) &&
            (identical(other.isPush, isPush) ||
                const DeepCollectionEquality().equals(other.isPush, isPush)) &&
            (identical(other.registerDate, registerDate) ||
                const DeepCollectionEquality()
                    .equals(other.registerDate, registerDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(isDisabled) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(userPhone) ^
      const DeepCollectionEquality().hash(intro) ^
      const DeepCollectionEquality().hash(snsLogin) ^
      const DeepCollectionEquality().hash(cntVisit) ^
      const DeepCollectionEquality().hash(remindTxt) ^
      const DeepCollectionEquality().hash(locale) ^
      const DeepCollectionEquality().hash(isPush) ^
      const DeepCollectionEquality().hash(registerDate);

  @JsonKey(ignore: true)
  @override
  _$HanUserInfoDtoCopyWith<_HanUserInfoDto> get copyWith =>
      __$HanUserInfoDtoCopyWithImpl<_HanUserInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HanUserInfoDtoToJson(this);
  }
}

abstract class _HanUserInfoDto extends HanUserInfoDto {
  factory _HanUserInfoDto(
      {@JsonKey(name: 'user_id')
          String? userId,
      required ProfileDto profile,
      @JsonKey(name: 'is_disabled')
          bool? isDisabled,
      int? level,
      @JsonKey(name: 'user_phone')
          String? userPhone,
      String? intro,
      @JsonKey(name: 'sns_loging')
          String? snsLogin,
      @JsonKey(name: 'cnt_visit')
          required int cntVisit,
      @JsonKey(name: 'remind_txt')
          String? remindTxt,
      @JsonKey(name: 'locale')
          String? locale,
      @JsonKey(name: 'is_push')
          bool? isPush,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime registerDate}) = _$_HanUserInfoDto;
  _HanUserInfoDto._() : super._();

  factory _HanUserInfoDto.fromJson(Map<String, dynamic> json) =
      _$_HanUserInfoDto.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @override
  ProfileDto get profile => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_disabled')
  bool? get isDisabled => throw _privateConstructorUsedError;
  @override
  int? get level => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_phone')
  String? get userPhone => throw _privateConstructorUsedError;
  @override
  String? get intro => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sns_loging')
  String? get snsLogin => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'cnt_visit')
  int get cntVisit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'remind_txt')
  String? get remindTxt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'locale')
  String? get locale => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_push')
  bool? get isPush => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get registerDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HanUserInfoDtoCopyWith<_HanUserInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) {
  return _ProfileDto.fromJson(json);
}

/// @nodoc
class _$ProfileDtoTearOff {
  const _$ProfileDtoTearOff();

  _ProfileDto call(
      {@JsonKey(name: 'user_id')
          String? userId,
      @JsonKey(name: 'user_email')
          required String userEmail,
      @JsonKey(name: 'user_name')
          String? userName,
      @JsonKey(name: 'profile_img')
          String? profileImg,
      int? level,
      String? token,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime registerDate}) {
    return _ProfileDto(
      userId: userId,
      userEmail: userEmail,
      userName: userName,
      profileImg: profileImg,
      level: level,
      token: token,
      registerDate: registerDate,
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
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_email')
  String get userEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_img')
  String? get profileImg => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError; // bool? isPush,
// String? token,
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get registerDate => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'user_id')
          String? userId,
      @JsonKey(name: 'user_email')
          String userEmail,
      @JsonKey(name: 'user_name')
          String? userName,
      @JsonKey(name: 'profile_img')
          String? profileImg,
      int? level,
      String? token,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime registerDate});
}

/// @nodoc
class _$ProfileDtoCopyWithImpl<$Res> implements $ProfileDtoCopyWith<$Res> {
  _$ProfileDtoCopyWithImpl(this._value, this._then);

  final ProfileDto _value;
  // ignore: unused_field
  final $Res Function(ProfileDto) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? userEmail = freezed,
    Object? userName = freezed,
    Object? profileImg = freezed,
    Object? level = freezed,
    Object? token = freezed,
    Object? registerDate = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: userEmail == freezed
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImg: profileImg == freezed
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      registerDate: registerDate == freezed
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'user_id')
          String? userId,
      @JsonKey(name: 'user_email')
          String userEmail,
      @JsonKey(name: 'user_name')
          String? userName,
      @JsonKey(name: 'profile_img')
          String? profileImg,
      int? level,
      String? token,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime registerDate});
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
    Object? userId = freezed,
    Object? userEmail = freezed,
    Object? userName = freezed,
    Object? profileImg = freezed,
    Object? level = freezed,
    Object? token = freezed,
    Object? registerDate = freezed,
  }) {
    return _then(_ProfileDto(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: userEmail == freezed
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImg: profileImg == freezed
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
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
class _$_ProfileDto extends _ProfileDto {
  _$_ProfileDto(
      {@JsonKey(name: 'user_id')
          this.userId,
      @JsonKey(name: 'user_email')
          required this.userEmail,
      @JsonKey(name: 'user_name')
          this.userName,
      @JsonKey(name: 'profile_img')
          this.profileImg,
      this.level,
      this.token,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.registerDate})
      : super._();

  factory _$_ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileDtoFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'user_email')
  final String userEmail;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'profile_img')
  final String? profileImg;
  @override
  final int? level;
  @override
  final String? token;
  @override // bool? isPush,
// String? token,
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  final DateTime registerDate;

  @override
  String toString() {
    return 'ProfileDto(userId: $userId, userEmail: $userEmail, userName: $userName, profileImg: $profileImg, level: $level, token: $token, registerDate: $registerDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.profileImg, profileImg) ||
                const DeepCollectionEquality()
                    .equals(other.profileImg, profileImg)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.registerDate, registerDate) ||
                const DeepCollectionEquality()
                    .equals(other.registerDate, registerDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userEmail) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(profileImg) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(registerDate);

  @JsonKey(ignore: true)
  @override
  _$ProfileDtoCopyWith<_ProfileDto> get copyWith =>
      __$ProfileDtoCopyWithImpl<_ProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileDtoToJson(this);
  }
}

abstract class _ProfileDto extends ProfileDto {
  factory _ProfileDto(
      {@JsonKey(name: 'user_id')
          String? userId,
      @JsonKey(name: 'user_email')
          required String userEmail,
      @JsonKey(name: 'user_name')
          String? userName,
      @JsonKey(name: 'profile_img')
          String? profileImg,
      int? level,
      String? token,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime registerDate}) = _$_ProfileDto;
  _ProfileDto._() : super._();

  factory _ProfileDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileDto.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_email')
  String get userEmail => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'profile_img')
  String? get profileImg => throw _privateConstructorUsedError;
  @override
  int? get level => throw _privateConstructorUsedError;
  @override
  String? get token => throw _privateConstructorUsedError;
  @override // bool? isPush,
// String? token,
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get registerDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileDtoCopyWith<_ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}
