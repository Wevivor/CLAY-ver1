import 'package:freezed_annotation/freezed_annotation.dart';

import 'users_dtos.dart';

part 'users.freezed.dart';

@freezed
class HanUserInfo with _$HanUserInfo {
  factory HanUserInfo({
    String? userId,
    required Profile profile,
    bool? isDisabled,
    int? level,
    String? userPhone,
    String? intro,
    String? snsLogin,
    required int cntVisit,
    String? token,
    required DateTime registerDate,
  }) = _HanUserInfo;
  HanUserInfo._();
  HanUserInfoDto toDto() => HanUserInfoDto(
        userId: userId,
        profile: profile.toDto(),
        isDisabled: isDisabled,
        level: level,
        userPhone: userPhone,
        intro: intro,
        snsLogin: snsLogin,
        cntVisit: cntVisit,
        token: token,
        registerDate: registerDate,
      );
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
