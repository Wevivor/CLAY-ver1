import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/models/users/users_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'boards.freezed.dart';

@freezed
class Board with _$Board {
  factory Board({
    String? id,
    required BoardInfo info,
    required Profile creator,
    Share? shareInfo,
    required bool isShare,
    required DateTime dtCreated,
  }) = _Board;
  Board._();

  BoardDto toDto() => BoardDto(
        id: id,
        info: info.toDto(),
        creator: creator.toDto(),
        shareInfo: shareInfo?.toDto(),
        isShare: isShare,
        dtCreated: dtCreated,
      );
}

@freezed
class BoardInfo with _$BoardInfo {
  factory BoardInfo({
    required String id,
    required String name,
    required String color,
    required String badge,
    required String link,
    List<dynamic>? comment,
    required int cntContent,
    required bool isShare,
    required DateTime dtCreated,
    // List<Comment>? comments;
  }) = _BoardInfo;
  BoardInfo._();

  BoardInfoDto toDto() => BoardInfoDto(
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
class Share with _$Share {
  factory Share({
    required Profile sharer,
    required int level,
  }) = _Share;
  Share._();

  ShareDto toDto() => ShareDto(
        sharer: sharer.toDto(),
        level: level,
      );
}
