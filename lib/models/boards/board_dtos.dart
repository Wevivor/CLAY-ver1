import 'package:clay/c_globals/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';
import 'boards.dart';

part 'board_dtos.freezed.dart';
part 'board_dtos.g.dart';

@freezed
class BoardDto with _$BoardDto {
  @JsonSerializable(explicitToJson: true)
  factory BoardDto({
    String? id,
    required BoardInfoDto info,
    required ProfileDto creator,
    ShareDto? shareInfo,
    required bool isShare,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
  }) = _BoardDto;
  BoardDto._();

  factory BoardDto.fromJson(Map<String, dynamic> json) =>
      _$BoardDtoFromJson(json);
  Board toDomain() => Board(
        id: id,
        info: info.toDomain(),
        creator: creator.toDomain(),
        shareInfo: shareInfo?.toDomain(),
        isShare: isShare,
        dtCreated: dtCreated,
      );
}

@freezed
class BoardInfoDto with _$BoardInfoDto {
  @JsonSerializable(explicitToJson: true)
  factory BoardInfoDto({
    required String id,
    required String name,
    required String color,
    required String badge,
    required String link,
    List<dynamic>? comment,
    required int cntContent,
    required bool isShare,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
    // List<Comment>? comments;
  }) = _BoardInfoDto;
  BoardInfoDto._();
  factory BoardInfoDto.fromJson(Map<String, dynamic> json) =>
      _$BoardInfoDtoFromJson(json);

  BoardInfo toDomain() => BoardInfo(
        id: id,
        name: name,
        color: color,
        badge: badge,
        link: link,
        comment: comment,
        cntContent: cntContent,
        isShare: isShare,
        dtCreated: dtCreated,
      );
}

@freezed
class ShareDto with _$ShareDto {
  @JsonSerializable(explicitToJson: true)
  factory ShareDto({
    required ProfileDto sharer,
    required int shareLevel,
  }) = _ShareDto;
  ShareDto._();
  factory ShareDto.fromJson(Map<String, dynamic> json) =>
      _$ShareDtoFromJson(json);

  Share toDomain() => Share(
        sharer: sharer.toDomain(),
        shareLevel: shareLevel,
      );
}
