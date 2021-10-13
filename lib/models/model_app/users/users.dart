import 'package:freezed_annotation/freezed_annotation.dart';

import 'users_dtos.dart';

part 'users.freezed.dart';

@freezed
abstract class HanUserInfo with _$HanUserInfo {
  const factory HanUserInfo({
    String? userId,
    required Profile profile,
    bool? isDisabled,
    int? level,
    String? userPhone,
    String? intro,
    required int cntVisit,
    String? token,
    required DateTime registerDate,
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
    String? userId,
    required String userEmail,
    String? userName,
    String? profileImg,
    int? level,
    required DateTime registerDate,
  }) = _Profile;
  Profile._();

  ProfileDto toDto() => ProfileDto(
        userId: userId,
        userEmail: userEmail,
        userName: userName,
        profileImg: profileImg,
        registerDate: registerDate,
        level: level,
      );
}
