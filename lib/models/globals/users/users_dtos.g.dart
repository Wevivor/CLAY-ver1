// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HanUserInfoDto _$_$_HanUserInfoDtoFromJson(Map<String, dynamic> json) {
  return _$_HanUserInfoDto(
    uid: json['uid'] as String?,
    profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    info: json['info'] == null
        ? null
        : UserDetailDto.fromJson(json['info'] as Map<String, dynamic>),
    regiInfo: json['regiInfo'] == null
        ? null
        : UserRegiInfoDto.fromJson(json['regiInfo'] as Map<String, dynamic>),
    following: ListCntDto.fromJson(json['following'] as Map<String, dynamic>),
    isDisabled: json['isDisabled'] as bool?,
    level: json['level'] as int?,
    cntVisit: json['cntVisit'] as int,
    isPush: json['isPush'] as bool?,
    token: json['token'] as String?,
    dtCreated: Fbconverter.fromJson(json['dtCreated']),
    dtUpdated: Fbconverter.fromJson(json['dtUpdated']),
  );
}

Map<String, dynamic> _$_$_HanUserInfoDtoToJson(_$_HanUserInfoDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'profile': instance.profile.toJson(),
      'info': instance.info?.toJson(),
      'regiInfo': instance.regiInfo?.toJson(),
      'following': instance.following.toJson(),
      'isDisabled': instance.isDisabled,
      'level': instance.level,
      'cntVisit': instance.cntVisit,
      'isPush': instance.isPush,
      'token': instance.token,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
      'dtUpdated': Fbconverter.toJson(instance.dtUpdated),
    };

_$_UserRegiInfoDto _$_$_UserRegiInfoDtoFromJson(Map<String, dynamic> json) {
  return _$_UserRegiInfoDto(
    isProvision: json['isProvision'] as bool?,
    isPersonInfo: json['isPersonInfo'] as bool?,
    isReceive: json['isReceive'] as bool?,
  );
}

Map<String, dynamic> _$_$_UserRegiInfoDtoToJson(_$_UserRegiInfoDto instance) =>
    <String, dynamic>{
      'isProvision': instance.isProvision,
      'isPersonInfo': instance.isPersonInfo,
      'isReceive': instance.isReceive,
    };

_$_UserDetailDto _$_$_UserDetailDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDetailDto(
    phone: json['phone'] as String?,
    intro: json['intro'] as String?,
  );
}

Map<String, dynamic> _$_$_UserDetailDtoToJson(_$_UserDetailDto instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'intro': instance.intro,
    };

_$_ProfileDto _$_$_ProfileDtoFromJson(Map<String, dynamic> json) {
  return _$_ProfileDto(
    uid: json['uid'] as String?,
    email: json['email'] as String,
    displayName: json['displayName'] as String?,
    photoURL: json['photoURL'] as String?,
    blandName: json['blandName'] as String?,
    homeURL: json['homeURL'] as String?,
    snsURL: json['snsURL'] as String?,
    level: json['level'] as int?,
    dtCreated: Fbconverter.fromJson(json['dtCreated']),
    dtUpdated: Fbconverter.fromJson(json['dtUpdated']),
  );
}

Map<String, dynamic> _$_$_ProfileDtoToJson(_$_ProfileDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'photoURL': instance.photoURL,
      'blandName': instance.blandName,
      'homeURL': instance.homeURL,
      'snsURL': instance.snsURL,
      'level': instance.level,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
      'dtUpdated': Fbconverter.toJson(instance.dtUpdated),
    };

_$_ProfileShortDto _$_$_ProfileShortDtoFromJson(Map<String, dynamic> json) {
  return _$_ProfileShortDto(
    uid: json['uid'] as String?,
    displayName: json['displayName'] as String?,
    photoURL: json['photoURL'] as String?,
    blandName: json['blandName'] as String?,
  );
}

Map<String, dynamic> _$_$_ProfileShortDtoToJson(_$_ProfileShortDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'displayName': instance.displayName,
      'photoURL': instance.photoURL,
      'blandName': instance.blandName,
    };
