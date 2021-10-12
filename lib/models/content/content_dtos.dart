import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/models/users/users_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'contents.dart';

part 'content_dtos.freezed.dart';
part 'content_dtos.g.dart';

@freezed
class ContentDto with _$ContentDto {
  @JsonSerializable(explicitToJson: true)
  factory ContentDto({
    String? id,
    required ContentInfoDto info,
    required ProfileDto profile,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtUpdated,
    String? kind,
  }) = _ContentDto;
  ContentDto._();

  factory ContentDto.fromJson(Map<String, dynamic> json) =>
      _$ContentDtoFromJson(json);
  Content toDomain() => Content(
        id: id,
        profile: profile.toDomain(),
        info: info.toDomain(),
        dtCreated: dtCreated,
        dtUpdated: dtUpdated,
        kind: kind,
      );
}

@freezed
class ContentInfoDto with _$ContentInfoDto {
  @JsonSerializable(explicitToJson: true)
  factory ContentInfoDto({
    String? id,
    String? imgUrl,
    String? uid,
    String? title,
    String? content,
    required int cntView,
    required int contentKind,
    List<String?>? thumbnails,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtUpdated,

    // List<Comment>? comments;
  }) = _ContentInfoDto;
  ContentInfoDto._();
  factory ContentInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ContentInfoDtoFromJson(json);

  ContentInfo toDomain() => ContentInfo(
        id: id,
        imgUrl: imgUrl,
        uid: uid,
        title: title,
        contentKind: contentKind,
        content: content,
        cntView: cntView,
        thumbnails: thumbnails,
        dtCreated: dtCreated,
        dtUpdated: dtUpdated,
      );
}
