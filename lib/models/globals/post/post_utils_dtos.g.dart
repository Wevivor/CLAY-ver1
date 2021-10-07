// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_utils_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentDto _$_$_CommentDtoFromJson(Map<String, dynamic> json) {
  return _$_CommentDto(
    profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    info: CommnetInfoDto.fromJson(json['info'] as Map<String, dynamic>),
    postId: json['postId'] as String,
    thumnail: json['thumnail'] as String?,
    treeIndex: json['treeIndex'] as int,
    kind: json['kind'] as String?,
  );
}

Map<String, dynamic> _$_$_CommentDtoToJson(_$_CommentDto instance) =>
    <String, dynamic>{
      'profile': instance.profile.toJson(),
      'info': instance.info.toJson(),
      'postId': instance.postId,
      'thumnail': instance.thumnail,
      'treeIndex': instance.treeIndex,
      'kind': instance.kind,
    };

_$_CommnetInfoDto _$_$_CommnetInfoDtoFromJson(Map<String, dynamic> json) {
  return _$_CommnetInfoDto(
    title: json['title'] as String,
    subject: json['subject'] as String,
    cntVisit: json['cntVisit'] as int,
    dtCreated: Fbconverter.fromJson(json['dtCreated']),
    dtUpdated: Fbconverter.fromJson(json['dtUpdated']),
  );
}

Map<String, dynamic> _$_$_CommnetInfoDtoToJson(_$_CommnetInfoDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subject': instance.subject,
      'cntVisit': instance.cntVisit,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
      'dtUpdated': Fbconverter.toJson(instance.dtUpdated),
    };

_$_FollowDto _$_$_FollowDtoFromJson(Map<String, dynamic> json) {
  return _$_FollowDto(
    id: json['id'] as String?,
    source: ProfileDto.fromJson(json['source'] as Map<String, dynamic>),
    target: ProfileDto.fromJson(json['target'] as Map<String, dynamic>),
    dtCreated: Fbconverter.fromJson(json['dtCreated']),
  );
}

Map<String, dynamic> _$_$_FollowDtoToJson(_$_FollowDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source': instance.source.toJson(),
      'target': instance.target.toJson(),
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
    };

_$_BookmarkDto _$_$_BookmarkDtoFromJson(Map<String, dynamic> json) {
  return _$_BookmarkDto(
    id: json['id'] as String?,
    owner: ProfileShortDto.fromJson(json['owner'] as Map<String, dynamic>),
    profile: ProfileShortDto.fromJson(json['profile'] as Map<String, dynamic>),
    info: PostSummaryDto.fromJson(json['info'] as Map<String, dynamic>),
    postId: json['postId'] as String,
    thumnail: json['thumnail'] as String?,
    kind: json['kind'] as String?,
    dtCreated: Fbconverter.fromJson(json['dtCreated']),
  );
}

Map<String, dynamic> _$_$_BookmarkDtoToJson(_$_BookmarkDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner.toJson(),
      'profile': instance.profile.toJson(),
      'info': instance.info.toJson(),
      'postId': instance.postId,
      'thumnail': instance.thumnail,
      'kind': instance.kind,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
    };

_$_FavorDto _$_$_FavorDtoFromJson(Map<String, dynamic> json) {
  return _$_FavorDto(
    id: json['id'] as String?,
    owner: ProfileShortDto.fromJson(json['owner'] as Map<String, dynamic>),
    profile: ProfileShortDto.fromJson(json['profile'] as Map<String, dynamic>),
    info: PostSummaryDto.fromJson(json['info'] as Map<String, dynamic>),
    postId: json['postId'] as String,
    thumnail: json['thumnail'] as String?,
    kind: json['kind'] as String?,
    dtCreated: Fbconverter.fromJson(json['dtCreated']),
  );
}

Map<String, dynamic> _$_$_FavorDtoToJson(_$_FavorDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner.toJson(),
      'profile': instance.profile.toJson(),
      'info': instance.info.toJson(),
      'postId': instance.postId,
      'thumnail': instance.thumnail,
      'kind': instance.kind,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
    };
