import 'package:clay/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contents.freezed.dart';

@freezed
class Contents with _$Contents {
  factory Contents({
    String? contentsId,
    required ContentsInfo info,
    required Profile userInfo,
    required int contentsAllviewCount,
    required int contentsMyviewCount,
    required int contentsAlarmCheck,
    BoardInfo? boardInfo,
    ShareDto? shareInfo,
    List<dynamic>? contentsComment,
    required DateTime ContentsCreateDate,
    required DateTime ContentsUpdateDate,
  }) = _Contents;
  Contents._();
  ContentsDto toDto() => ContentsDto(
        contentsId: contentsId,
        info: info.toDto(),
        userInfo: userInfo.toDto(),
        contentsAllviewCount: contentsAllviewCount,
        contentsMyviewCount: contentsMyviewCount,
        contentsAlarmCheck: contentsAlarmCheck,
        boardInfo: boardInfo?.toDto(),
        shareInfo: shareInfo,
        contentsComment: contentsComment,
        ContentsCreateDate: ContentsCreateDate,
        ContentsUpdateDate: ContentsUpdateDate,
      );
}

@freezed
class ContentsInfo with _$ContentsInfo {
  factory ContentsInfo({
    String? contentsId,
    String? contentsTitle,
    String? contentsUrl,
    String? contentsImages,
    String? contentsDescription,
    String? contentsComment,
    String? contentsUniqueLink,
    List<String?>? thumbnails,
    required DateTime ContentsCreateDate,
    required DateTime ContentsUpdateDate,

    // List<Comment>? comments;
  }) = _ContentsInfo;
  ContentsInfo._();

  ContentsInfoDto toDto() => ContentsInfoDto(
        contentsId: contentsId,
        contentsTitle: contentsTitle,
        contentsUrl: contentsUrl,
        contentsImages: contentsImages,
        contentsDescription: contentsDescription,
        contentsComment: contentsComment,
        contentsUniqueLink: contentsUniqueLink,
        thumbnails: thumbnails,
        ContentsCreateDate: ContentsCreateDate,
        ContentsUpdateDate: ContentsUpdateDate,
      );
}
