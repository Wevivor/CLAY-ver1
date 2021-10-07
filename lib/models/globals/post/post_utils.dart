import 'package:clay/models/globals/globals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_utils.freezed.dart';

@freezed
class CommentInfo with _$CommentInfo {
  factory CommentInfo({
    required String title,
    required String subject,
    required int cntVisit,
    required DateTime dtCreated,
    required DateTime dtUpdated,
  }) = _CommentInfo;

  CommentInfo._();
}

@freezed
class Comment with _$Comment {
  factory Comment({
    required ProfileDto profile, //작성자
    required CommentInfo info, //기본정보

    required String postId,
    String? thumnail,
    required int treeIndex,
    String? kind, //종류
  }) = _Comment;

  Comment._();
}

@freezed
class Bookmark with _$Bookmark {
  factory Bookmark({
    String? id,
    required ProfileShort owner, //작성자
    required ProfileShort profile, //작성자
    required PostSummary info, //기본정보

    required String postId,
    String? thumnail,
    String? kind,
    required DateTime dtCreated, //종류
  }) = _Bookmark;

  Bookmark._();
  BookmarkDto toDto() => BookmarkDto(
      id: id,
      owner: owner.toDto(),
      profile: profile.toDto(),
      info: info.toDto(),
      postId: postId,
      thumnail: thumnail,
      kind: kind,
      dtCreated: dtCreated);
}

@freezed
class Favor with _$Favor {
  factory Favor({
    String? id,
    required ProfileShort owner, //작성자
    required ProfileShort profile, //작성자
    required PostSummary info, //기본정보

    required String postId,
    String? thumnail,
    String? kind,
    required DateTime dtCreated, //종류
  }) = _Favor;

  Favor._();
  FavorDto toDto() => FavorDto(
      id: id,
      owner: owner.toDto(),
      profile: profile.toDto(),
      info: info.toDto(),
      postId: postId,
      thumnail: thumnail,
      kind: kind,
      dtCreated: dtCreated);
}

@freezed
class Follow with _$Follow {
  factory Follow({
    String? id,
    required Profile source,
    required Profile target,
    // required bool? isFollow,
    required DateTime dtCreated,

    ///북마크
  }) = _Follow;
  Follow._();
  FollowDto toDto() => FollowDto(
        id: id,
        source: source.toDto(),
        target: target.toDto(),
        dtCreated: dtCreated,
      );
}
