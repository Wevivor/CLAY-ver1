import 'package:clay/c_globals/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'users.dart';

part 'users_dtos.freezed.dart';
part 'users_dtos.g.dart';

@freezed
class HanUserInfoDto with _$HanUserInfoDto {
  @JsonSerializable(explicitToJson: true)
  factory HanUserInfoDto({
    @JsonKey(name: 'user_id') String? userId,
    required ProfileDto profile,
    @JsonKey(name: 'is_disabled') bool? isDisabled,
    int? level,
    @JsonKey(name: 'user_phone') String? userPhone,
    String? intro,
    @JsonKey(name: 'sns_loging') String? snsLogin,
    @JsonKey(name: 'cnt_visit') required int cntVisit,
    @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime registerDate,
  }) = _HanUserInfoDto;

  factory HanUserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$HanUserInfoDtoFromJson(json);

  const HanUserInfoDto._();
  HanUserInfo toDomain() => HanUserInfo(
        userId: userId,
        profile: profile.toDomain(),
        cntVisit: cntVisit,
        isDisabled: isDisabled,
        level: level,
        snsLogin: snsLogin,
        registerDate: registerDate,
      );
}

@freezed
class ProfileDto with _$ProfileDto {
  //사용자 아바타 정보
  @JsonSerializable(explicitToJson: true)
  factory ProfileDto({
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'user_email') required String userEmail,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'profile_img') String? profileImg,
    int? level,
    String? token,
    // bool? isPush,
    // String? token,
    @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime registerDate,
  }) = _ProfileDto;
  const ProfileDto._();
  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
  Profile toDomain() => Profile(
        userId: userId,
        userEmail: userEmail,
        userName: userName,
        profileImg: profileImg,
        level: level,
        token: token,
        registerDate: registerDate,
      );
}
