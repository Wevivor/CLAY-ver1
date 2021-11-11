import 'package:clay/h_account/models/users/users.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'board_dtos.dart';

part 'boards.freezed.dart';

@freezed
class Board with _$Board {
  factory Board({
    String? boardId,
    required BoardInfo info,
    required Profile boardCreator,
    Share? shareInfo,
    int? contentsCount,
    List<dynamic>? boardComment,
    required int shareCheck,
    required DateTime registerDate,
    DateTime? listDate,
  }) = _Board;
  Board._();

  BoardDto toDto() => BoardDto(
        boardId: boardId,
        info: info.toDto(),
        boardCreator: boardCreator.toDto(),
        shareInfo: shareInfo?.toDto(),
        shareCheck: shareCheck,
        contentsCount: contentsCount,
        boardComment: boardComment,
        registerDate: registerDate,
        listDate: listDate,
      );
}

@freezed
class BoardInfo with _$BoardInfo {
  factory BoardInfo({
    String? boardId,
    @Default(false) bool isFixed,
    required String boardName,
    required String boardColor,
    required String boardBadge,
    String? boardUnquieLink,
    required int shareCheck,
    int? shareCount,
    required DateTime registerDate,
    // List<Comment>? comments;
  }) = _BoardInfo;
  BoardInfo._();

  BoardInfoDto toDto() => BoardInfoDto(
        boardId: boardId,
        boardName: boardName,
        isFixed: isFixed,
        boardColor: boardColor,
        boardBadge: boardBadge,
        boardUnquieLink: boardUnquieLink,
        // comment: comment,
        shareCheck: shareCheck,
        shareCount: shareCount,
        registerDate: registerDate,
      );
}

@freezed
class Share with _$Share {
  factory Share({
    required Profile sharer,
    required int shareLevel,
  }) = _Share;
  Share._();

  ShareDto toDto() => ShareDto(
        sharer: sharer.toDto(),
        shareLevel: shareLevel,
      );
}
