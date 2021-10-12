// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HanUserInfoDto _$$_HanUserInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_HanUserInfoDto(
      uid: json['uid'] as String?,
      profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
      isDisabled: json['isDisabled'] as bool?,
      level: json['level'] as int?,
      phone: json['phone'] as String?,
      intro: json['intro'] as String?,
      cntVisit: json['cntVisit'] as int,
      token: json['token'] as String?,
      dtCreated: Fbconverter.fromJson(json['dtCreated']),
    );

Map<String, dynamic> _$$_HanUserInfoDtoToJson(_$_HanUserInfoDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'profile': instance.profile.toJson(),
      'isDisabled': instance.isDisabled,
      'level': instance.level,
      'phone': instance.phone,
      'intro': instance.intro,
      'cntVisit': instance.cntVisit,
      'token': instance.token,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
    };

_$_ProfileDto _$$_ProfileDtoFromJson(Map<String, dynamic> json) =>
    _$_ProfileDto(
      uid: json['uid'] as String?,
      email: json['email'] as String,
      displayName: json['displayName'] as String?,
      photoURL: json['photoURL'] as String?,
      level: json['level'] as int?,
      dtCreated: Fbconverter.fromJson(json['dtCreated']),
    );

Map<String, dynamic> _$$_ProfileDtoToJson(_$_ProfileDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'photoURL': instance.photoURL,
      'level': instance.level,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
    };
