import 'package:freezed_annotation/freezed_annotation.dart';

import 'users_dtos.dart';

part 'users.freezed.dart';

@freezed
abstract class HanUserInfo with _$HanUserInfo {
  const factory HanUserInfo({
    String? uid,
    required Profile profile,
    bool? isDisabled,
    int? level,
    required int cntVisit,
    String? phone,
    String? intro,
    String? token,
    required DateTime dtCreated,
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
    required DateTime dtCreated,
    int? level,
  }) = _Profile;
  Profile._();

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      uid: json['uid'] as String?,
      email: json['email'] as String,
      displayName: json['displayName'] as String?,
      photoURL: json['photoURL'] as String?,
      // isPush: json['isPush'] as bool?,
      // token: json['token'] as String?,
      level: json['level'] as int?,
      dtCreated: DateTime.parse(json['dtCreated']),
    );
  }
  ProfileDto toDto() => ProfileDto(
        uid: uid,
        email: email,
        displayName: displayName,
        photoURL: photoURL,
        dtCreated: dtCreated,
        level: level,
      );
}
