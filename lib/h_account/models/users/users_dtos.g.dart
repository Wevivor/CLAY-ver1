// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HanUserInfoDto _$$_HanUserInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_HanUserInfoDto(
      userId: json['user_id'] as String?,
      profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
      isDisabled: json['is_disabled'] as bool?,
      level: json['level'] as int?,
      userPhone: json['user_phone'] as String?,
      intro: json['intro'] as String?,
      snsLogin: json['sns_loging'] as String?,
      cntVisit: json['cnt_visit'] as int,
      registerDate: Fbconverter.fromJson(json['register_date']),
    );

Map<String, dynamic> _$$_HanUserInfoDtoToJson(_$_HanUserInfoDto instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'profile': instance.profile.toJson(),
      'is_disabled': instance.isDisabled,
      'level': instance.level,
      'user_phone': instance.userPhone,
      'intro': instance.intro,
      'sns_loging': instance.snsLogin,
      'cnt_visit': instance.cntVisit,
      'register_date': Fbconverter.toJson(instance.registerDate),
    };

_$_ProfileDto _$$_ProfileDtoFromJson(Map<String, dynamic> json) =>
    _$_ProfileDto(
      userId: json['user_id'] as String?,
      userEmail: json['user_email'] as String,
      userName: json['user_name'] as String?,
      profileImg: json['profile_img'] as String?,
      level: json['level'] as int?,
      token: json['token'] as String?,
      registerDate: Fbconverter.fromJson(json['register_date']),
    );

Map<String, dynamic> _$$_ProfileDtoToJson(_$_ProfileDto instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_email': instance.userEmail,
      'user_name': instance.userName,
      'profile_img': instance.profileImg,
      'level': instance.level,
      'token': instance.token,
      'register_date': Fbconverter.toJson(instance.registerDate),
    };
