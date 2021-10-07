import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/models/globals/globals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'users.dart';

part 'users_dtos.freezed.dart';
part 'users_dtos.g.dart';

@freezed
class HanUserInfoDto with _$HanUserInfoDto {
  @JsonSerializable(explicitToJson: true)
  factory HanUserInfoDto({
    String? uid,
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
        required DateTime dtUpdated,
  }) = _HanUserInfoDto;

  factory HanUserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$HanUserInfoDtoFromJson(json);

  const HanUserInfoDto._();
  HanUserInfo toDomain() => HanUserInfo(
        uid: uid,
        profile: profile.toDomain(),
        info: info?.toDomain(),
        regiInfo: regiInfo?.toDomain(),
        following: following.toDomain(),
        cntVisit: cntVisit,
        isDisabled: isDisabled,
        level: level,
        isPush: isPush,
        token: token,
        dtCreated: dtCreated,
        dtUpdated: dtUpdated,
      );
}

@freezed
class UserRegiInfoDto with _$UserRegiInfoDto {
  //사용자 아바타 정보
  @JsonSerializable(explicitToJson: true)
  factory UserRegiInfoDto({
    bool? isProvision,
    bool? isPersonInfo,
    bool? isReceive,
  }) = _UserRegiInfoDto;
  factory UserRegiInfoDto.fromJson(Map<String, dynamic> json) =>
      _$UserRegiInfoDtoFromJson(json);
  const UserRegiInfoDto._();

  UserRegiInfo toDomain() => UserRegiInfo(
        isProvision: isProvision,
        isPersonInfo: isPersonInfo,
        isReceive: isReceive,
      );
}

@freezed
class UserDetailDto with _$UserDetailDto {
  //사용자 아바타 정보
  @JsonSerializable(explicitToJson: true)
  factory UserDetailDto({
    String? phone,
    String? intro,
  }) = _UserDetailDto;
  const UserDetailDto._();
  factory UserDetailDto.fromJson(Map<String, dynamic> json) =>
      _$UserDetailDtoFromJson(json);
  UserDetail toDomain() => UserDetail(
        phone: phone,
        intro: intro,
        // isPush: isPush,
        // token: token,
      );
}

@freezed
class ProfileDto with _$ProfileDto {
  //사용자 아바타 정보
  @JsonSerializable(explicitToJson: true)
  factory ProfileDto({
    String? uid,
    required String email,
    String? displayName,
    String? photoURL,
    String? blandName,
    String? homeURL,
    String? snsURL,
    int? level,
    // bool? isPush,
    // String? token,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtUpdated,
  }) = _ProfileDto;
  const ProfileDto._();
  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
  Profile toDomain() => Profile(
      uid: uid,
      email: email,
      displayName: displayName,
      photoURL: photoURL,
      blandName: blandName,
      homeURL: homeURL,
      snsURL: snsURL,
      level: level,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated);
}

@freezed
class ProfileShortDto with _$ProfileShortDto {
  //사용자 아바타 정보
  @JsonSerializable(explicitToJson: true)
  factory ProfileShortDto({
    String? uid,
    // required String email,
    String? displayName,
    String? photoURL,
    String? blandName,
  }) = _ProfileShortDto;
  const ProfileShortDto._();
  factory ProfileShortDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileShortDtoFromJson(json);
  ProfileShort toDomain() => ProfileShort(
        uid: uid,
        // email: email,
        displayName: displayName,
        photoURL: photoURL,
      );
}
