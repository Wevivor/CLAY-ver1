import 'package:clay/models/globals/globals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'users_dtos.dart';

part 'users.freezed.dart';

@freezed
abstract class HanUserInfo with _$HanUserInfo {
  const factory HanUserInfo({
    String? uid,
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
    required DateTime dtUpdated,
  }) = _HanUserInfo;

  // HanUserInfoDto toDto() => HanUserInfoDto(
  //       uid: uid,
  //       profile: profile.toDto(),
  //       info: info?.toDto(),
  //       regiInfo: regiInfo?.toDto(),
  //       following: following.toDto(),
  //       isDisabled: isDisabled,
  //       level: level,
  //       cntVisit: cntVisit,
  //       isPush: isPush,
  //       token: token,
  //       dtCreated: dtCreated,
  //       dtUpdated: dtUpdated,
  //     );
}

@freezed
class Profile with _$Profile {
  //사용자 아바타 정보
  factory Profile({
    String? uid,
    required String email,
    String? displayName,
    String? photoURL,
    String? blandName,
    String? homeURL,
    String? snsURL,
    required DateTime dtCreated,
    required DateTime dtUpdated,
    int? level,
  }) = _Profile;
  Profile._();

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      uid: json['uid'] as String?,
      email: json['email'] as String,
      displayName: json['displayName'] as String?,
      photoURL: json['photoURL'] as String?,
      blandName: json['blandName'] as String?,
      homeURL: json['homeURL'] as String?,
      snsURL: json['snsURL'] as String?,
      // isPush: json['isPush'] as bool?,
      // token: json['token'] as String?,
      level: json['level'] as int?,
      dtCreated: DateTime.parse(json['dtCreated']),
      dtUpdated: DateTime.parse(json['dtUpdated']),
    );
  }
  ProfileDto toDto() => ProfileDto(
      uid: uid,
      email: email,
      displayName: displayName,
      photoURL: photoURL,
      blandName: blandName,
      homeURL: homeURL,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
      level: level,
      snsURL: snsURL);
}

@freezed
class ProfileShort with _$ProfileShort {
  //사용자 아바타 정보
  factory ProfileShort({
    String? uid,
    // required String email,
    String? displayName,
    String? photoURL,
  }) = _ProfileShort;
  ProfileShort._();

  factory ProfileShort.fromJson(Map<String, dynamic> json) {
    return ProfileShort(
      uid: json['uid'] as String?,
      // email: json['email'] as String,
      displayName: json['displayName'] as String?,
      photoURL: json['photoURL'] as String?,
    );
  }
  ProfileShortDto toDto() => ProfileShortDto(
        uid: uid,
        // email: email,
        displayName: displayName,
        photoURL: photoURL,
      );
}

@freezed
class UserDetail with _$UserDetail {
  //사용자 아바타 정보
  const factory UserDetail({
    String? phone,
    String? intro,
  }) = _UserDetail;
  // UserDetailDto toDto() => UserDetailDto(
  //       phone: phone,
  //       intro: intro,
  //     );
}

@freezed
class UserRegiInfo with _$UserRegiInfo {
  const factory UserRegiInfo({
    bool? isProvision,
    bool? isPersonInfo,
    bool? isReceive,
  }) = _UserRegiInfo;
  // UserRegiInfoDto toDto() => UserRegiInfoDto(
  //       isProvision: isProvision,
  //       isPersonInfo: isPersonInfo,
  //       isReceive: isReceive,
  //     );
}
