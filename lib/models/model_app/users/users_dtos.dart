import 'package:clay/c_globals/utils/utils.dart';
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
    bool? isDisabled,
    int? level,
    String? phone,
    String? intro,
    required int cntVisit,
    String? token,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
  }) = _HanUserInfoDto;

  factory HanUserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$HanUserInfoDtoFromJson(json);

  const HanUserInfoDto._();
  HanUserInfo toDomain() => HanUserInfo(
        uid: uid,
        profile: profile.toDomain(),
        cntVisit: cntVisit,
        isDisabled: isDisabled,
        level: level,
        token: token,
        dtCreated: dtCreated,
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
    int? level,
    // bool? isPush,
    // String? token,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
  }) = _ProfileDto;
  const ProfileDto._();
  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
  Profile toDomain() => Profile(
        uid: uid,
        email: email,
        displayName: displayName,
        level: level,
        dtCreated: dtCreated,
      );
}
