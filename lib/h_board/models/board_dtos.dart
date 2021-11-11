import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/h_account/models/users/users_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'boards.dart';

part 'board_dtos.freezed.dart';
part 'board_dtos.g.dart';

@freezed
class BoardDto with _$BoardDto {
  @JsonSerializable(explicitToJson: true)
  factory BoardDto({
    @JsonKey(name: 'board_id') String? boardId,
    required BoardInfoDto info,
    @JsonKey(name: 'board_creator') required ProfileDto boardCreator,
    @JsonKey(name: 'share') ShareDto? shareInfo,
    @JsonKey(name: 'share_check') required int shareCheck,
    @JsonKey(name: 'contents_count') required int? contentsCount,
    @JsonKey(name: 'board_comment') List<dynamic>? boardComment,
    @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime registerDate,
    @JsonKey(name: 'list_date') DateTime? listDate,
  }) = _BoardDto;
  BoardDto._();

  factory BoardDto.fromJson(Map<String, dynamic> json) =>
      _$BoardDtoFromJson(json);
  Board toDomain() => Board(
        boardId: boardId,
        info: info.toDomain(),
        boardCreator: boardCreator.toDomain(),
        shareInfo: shareInfo?.toDomain(),
        shareCheck: shareCheck,
        contentsCount: contentsCount,
        boardComment: boardComment,
        registerDate: registerDate,
        listDate: listDate,
      );
}

@freezed
class BoardInfoDto with _$BoardInfoDto {
  @JsonSerializable(explicitToJson: true)
  factory BoardInfoDto({
    @JsonKey(name: 'board_id') String? boardId,
    @JsonKey(name: 'is_fixed') @Default(false) bool isFixed,
    @JsonKey(name: 'board_name') required String boardName,
    @JsonKey(name: 'board_color') required String boardColor,
    @JsonKey(name: 'board_badge') required String boardBadge,
    @JsonKey(name: 'board_unique_link') String? boardUnquieLink,
    @JsonKey(name: 'share_check') required int shareCheck,
    @JsonKey(name: 'share_count') int? shareCount,
    @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime registerDate,
    // List<Comment>? comments;
  }) = _BoardInfoDto;
  BoardInfoDto._();
  factory BoardInfoDto.fromJson(Map<String, dynamic> json) =>
      _$BoardInfoDtoFromJson(json);

  BoardInfo toDomain() => BoardInfo(
        boardId: boardId,
        isFixed: isFixed,
        boardName: boardName,
        boardColor: boardColor,
        boardBadge: boardBadge,
        boardUnquieLink: boardUnquieLink,
        shareCheck: shareCheck,
        shareCount: shareCount,
        registerDate: registerDate,
      );
}

@freezed
class ShareDto with _$ShareDto {
  @JsonSerializable(explicitToJson: true)
  factory ShareDto({
    required ProfileDto sharer,
    @JsonKey(name: 'share_level') required int shareLevel,
  }) = _ShareDto;
  ShareDto._();
  factory ShareDto.fromJson(Map<String, dynamic> json) =>
      _$ShareDtoFromJson(json);

  Share toDomain() => Share(
        sharer: sharer.toDomain(),
        shareLevel: shareLevel,
      );
}
