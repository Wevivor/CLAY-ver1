import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/h_account/models/users/users_dtos.dart';
import 'package:clay/h_board/models/board_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'contents.dart';

part 'content_dtos.freezed.dart';
part 'content_dtos.g.dart';

@freezed
class ContentsDto with _$ContentsDto {
  @JsonSerializable(explicitToJson: true)
  factory ContentsDto({
    @JsonKey(name: 'contents_id') String? contentsId,
    required ContentsInfoDto info,
    @JsonKey(name: 'user_info') required ProfileDto userInfo,
    @JsonKey(name: 'contents_allview_count') required int contentsAllviewCount,
    @JsonKey(name: 'contents_myview_count') required int contentsMyviewCount,
    @JsonKey(name: 'contents_alarm_check') required int contentsAlarmCheck,
    @JsonKey(name: 'board_info') BoardInfoDto? boardInfo,
    @JsonKey(name: 'share') ShareDto? shareInfo,
    @JsonKey(name: 'contents_comment') String? contentsComment,
    @JsonKey(name: 'contents_create_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime contentsCreateDate,
    @JsonKey(name: 'contents_upt_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime contentsUpdateDate,
  }) = _ContentsDto;
  ContentsDto._();

  factory ContentsDto.fromJson(Map<String, dynamic> json) =>
      _$ContentsDtoFromJson(json);

  Contents toDomain() => Contents(
        contentsId: contentsId,
        userInfo: userInfo.toDomain(),
        info: info.toDomain(),
        boardInfo: boardInfo?.toDomain(),
        contentsAllviewCount: contentsAllviewCount,
        contentsMyviewCount: contentsMyviewCount,
        contentsAlarmCheck: contentsAlarmCheck,
        shareInfo: shareInfo,
        contentsComment: contentsComment,
        contentsCreateDate: contentsCreateDate,
        contentsUpdateDate: contentsUpdateDate,
      );
}

@freezed
class ContentsInfoDto with _$ContentsInfoDto {
  @JsonSerializable(explicitToJson: true)
  factory ContentsInfoDto({
    @JsonKey(name: 'contents_id') String? contentsId,
    @JsonKey(name: 'contents_title') String? contentsTitle,
    @JsonKey(name: 'contents_url') String? contentsUrl,
    @JsonKey(name: 'contents_images') String? contentsImages,
    @JsonKey(name: 'contents_description') String? contentsDescription,
    @JsonKey(name: 'contents_comment') String? contentsComment,
    @JsonKey(name: 'contents_unique_link') String? contentsUniqueLink,
    @JsonKey(name: 'contents_fixed') bool? contentsFixed,
    @JsonKey(name: 'contents_type') String? contentsType,
    String? thumbnails,
    @JsonKey(name: 'contents_create_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime contentsCreateDate,
    @JsonKey(name: 'contents_upt_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime contentsUpdateDate,
    // List<Comment>? comments;
  }) = _ContentsInfoDto;
  ContentsInfoDto._();
  factory ContentsInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ContentsInfoDtoFromJson(json);

  ContentsInfo toDomain() => ContentsInfo(
        contentsId: contentsId,
        contentsTitle: contentsTitle,
        contentsUrl: contentsUrl,
        contentsImages: contentsImages,
        contentsDescription: contentsDescription,
        contentsComment: contentsComment,
        thumbnails: thumbnails,
        contentsFixed: contentsFixed,
        contentsType: contentsType,
        contentsUniqueLink: contentsUniqueLink,
        contentsCreateDate: contentsCreateDate,
        contentsUpdateDate: contentsUpdateDate,
      );
}
