import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/models/models.dart';
import 'package:clay/models/globals/globals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_utils_dtos.freezed.dart';
part 'post_utils_dtos.g.dart';

@freezed
class CommentDto with _$CommentDto {
  @JsonSerializable(explicitToJson: true)
  factory CommentDto({
    required ProfileDto profile, //작성자
    required CommnetInfoDto info, //기본정보

    required String postId,
    String? thumnail,
    required int treeIndex,
    String? kind, //종류
  }) = _CommentDto;
  factory CommentDto.fromJson(Map<String, dynamic> json) =>
      _$CommentDtoFromJson(json);

  CommentDto._();
}

@freezed
class CommnetInfoDto with _$CommnetInfoDto {
  @JsonSerializable(explicitToJson: true)
  factory CommnetInfoDto({
    required String title,
    required String subject,
    required int cntVisit,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtUpdated,
  }) = _CommnetInfoDto;
  factory CommnetInfoDto.fromJson(Map<String, dynamic> json) =>
      _$CommnetInfoDtoFromJson(json);

  CommnetInfoDto._();
}

@freezed
class FollowDto with _$FollowDto {
  @JsonSerializable(explicitToJson: true)
  factory FollowDto({
    String? id,
    required ProfileDto source,
    required ProfileDto target,
    // required bool? isFollow,

    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,

    ///북마크
  }) = _FollowDto;
  FollowDto._();

  factory FollowDto.fromJson(Map<String, dynamic> json) =>
      _$FollowDtoFromJson(json);
  Follow toDomain() => Follow(
        id: id,
        source: source.toDomain(),
        target: target.toDomain(),
        dtCreated: dtCreated,
      );
}

@freezed
class BookmarkDto with _$BookmarkDto {
  @JsonSerializable(explicitToJson: true)
  factory BookmarkDto({
    String? id,
    required ProfileShortDto owner, //작성자
    required ProfileShortDto profile, //북마크 하는 위치
    required PostSummaryDto info, //기본정보

    required String postId,
    String? thumnail,
    String? kind, //종류
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
  }) = _BookmarkDto;

  BookmarkDto._();
  factory BookmarkDto.fromJson(Map<String, dynamic> json) =>
      _$BookmarkDtoFromJson(json);
  Bookmark toDomain() => Bookmark(
        id: id,
        owner: owner.toDomain(),
        profile: profile.toDomain(),
        info: info.toDomain(),
        postId: postId,
        kind: kind,
        thumnail: thumnail,
        dtCreated: dtCreated,
      );
}

@freezed
class FavorDto with _$FavorDto {
  @JsonSerializable(explicitToJson: true)
  factory FavorDto({
    String? id,
    required ProfileShortDto owner, //작성자
    required ProfileShortDto profile, //북마크 하는 위치
    required PostSummaryDto info, //기본정보

    required String postId,
    String? thumnail,
    String? kind, //종류
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
  }) = _FavorDto;

  FavorDto._();
  factory FavorDto.fromJson(Map<String, dynamic> json) =>
      _$FavorDtoFromJson(json);
  Favor toDomain() => Favor(
        id: id,
        owner: owner.toDomain(),
        profile: profile.toDomain(),
        info: info.toDomain(),
        postId: postId,
        kind: kind,
        thumnail: thumnail,
        dtCreated: dtCreated,
      );
}
