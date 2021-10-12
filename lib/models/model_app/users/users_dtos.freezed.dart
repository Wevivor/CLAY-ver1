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
      {String? uid,
      required ProfileDto profile,
      bool? isDisabled,
      int? level,
      String? phone,
      String? intro,
      required int cntVisit,
      String? token,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) {
    return _HanUserInfoDto(
      uid: uid,
      profile: profile,
      isDisabled: isDisabled,
      level: level,
      phone: phone,
      intro: intro,
      cntVisit: cntVisit,
      token: token,
      dtCreated: dtCreated,
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
  bool? get isDisabled => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get intro => throw _privateConstructorUsedError;
  int get cntVisit => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;

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
      bool? isDisabled,
      int? level,
      String? phone,
      String? intro,
      int cntVisit,
      String? token,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});

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
    Object? uid = freezed,
    Object? profile = freezed,
    Object? isDisabled = freezed,
    Object? level = freezed,
    Object? phone = freezed,
    Object? intro = freezed,
    Object? cntVisit = freezed,
    Object? token = freezed,
    Object? dtCreated = freezed,
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
      isDisabled: isDisabled == freezed
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      intro: intro == freezed
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      cntVisit: cntVisit == freezed
          ? _value.cntVisit
          : cntVisit // ignore: cast_nullable_to_non_nullable
              as int,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
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
      {String? uid,
      ProfileDto profile,
      bool? isDisabled,
      int? level,
      String? phone,
      String? intro,
      int cntVisit,
      String? token,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});

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
    Object? uid = freezed,
    Object? profile = freezed,
    Object? isDisabled = freezed,
    Object? level = freezed,
    Object? phone = freezed,
    Object? intro = freezed,
    Object? cntVisit = freezed,
    Object? token = freezed,
    Object? dtCreated = freezed,
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
      isDisabled: isDisabled == freezed
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      intro: intro == freezed
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      cntVisit: cntVisit == freezed
          ? _value.cntVisit
          : cntVisit // ignore: cast_nullable_to_non_nullable
              as int,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
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
class _$_HanUserInfoDto extends _HanUserInfoDto {
  _$_HanUserInfoDto(
      {this.uid,
      required this.profile,
      this.isDisabled,
      this.level,
      this.phone,
      this.intro,
      required this.cntVisit,
      this.token,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated})
      : super._();

  factory _$_HanUserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_HanUserInfoDtoFromJson(json);

  @override
  final String? uid;
  @override
  final ProfileDto profile;
  @override
  final bool? isDisabled;
  @override
  final int? level;
  @override
  final String? phone;
  @override
  final String? intro;
  @override
  final int cntVisit;
  @override
  final String? token;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;

  @override
  String toString() {
    return 'HanUserInfoDto(uid: $uid, profile: $profile, isDisabled: $isDisabled, level: $level, phone: $phone, intro: $intro, cntVisit: $cntVisit, token: $token, dtCreated: $dtCreated)';
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
            (identical(other.isDisabled, isDisabled) ||
                const DeepCollectionEquality()
                    .equals(other.isDisabled, isDisabled)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.intro, intro) ||
                const DeepCollectionEquality().equals(other.intro, intro)) &&
            (identical(other.cntVisit, cntVisit) ||
                const DeepCollectionEquality()
                    .equals(other.cntVisit, cntVisit)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(isDisabled) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(intro) ^
      const DeepCollectionEquality().hash(cntVisit) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(dtCreated);

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
      {String? uid,
      required ProfileDto profile,
      bool? isDisabled,
      int? level,
      String? phone,
      String? intro,
      required int cntVisit,
      String? token,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) = _$_HanUserInfoDto;
  _HanUserInfoDto._() : super._();

  factory _HanUserInfoDto.fromJson(Map<String, dynamic> json) =
      _$_HanUserInfoDto.fromJson;

  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  ProfileDto get profile => throw _privateConstructorUsedError;
  @override
  bool? get isDisabled => throw _privateConstructorUsedError;
  @override
  int? get level => throw _privateConstructorUsedError;
  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  String? get intro => throw _privateConstructorUsedError;
  @override
  int get cntVisit => throw _privateConstructorUsedError;
  @override
  String? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
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
      {String? uid,
      required String email,
      String? displayName,
      String? photoURL,
      int? level,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) {
    return _ProfileDto(
      uid: uid,
      email: email,
      displayName: displayName,
      photoURL: photoURL,
      level: level,
      dtCreated: dtCreated,
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
  int? get level => throw _privateConstructorUsedError; // bool? isPush,
// String? token,
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;

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
      int? level,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});
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
    Object? level = freezed,
    Object? dtCreated = freezed,
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
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
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
      int? level,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});
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
    Object? level = freezed,
    Object? dtCreated = freezed,
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
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
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
      this.level,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated})
      : super._();

  factory _$_ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileDtoFromJson(json);

  @override
  final String? uid;
  @override
  final String email;
  @override
  final String? displayName;
  @override
  final String? photoURL;
  @override
  final int? level;
  @override // bool? isPush,
// String? token,
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;

  @override
  String toString() {
    return 'ProfileDto(uid: $uid, email: $email, displayName: $displayName, photoURL: $photoURL, level: $level, dtCreated: $dtCreated)';
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
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(dtCreated);

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
      {String? uid,
      required String email,
      String? displayName,
      String? photoURL,
      int? level,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) = _$_ProfileDto;
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
  int? get level => throw _privateConstructorUsedError;
  @override // bool? isPush,
// String? token,
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileDtoCopyWith<_ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}
