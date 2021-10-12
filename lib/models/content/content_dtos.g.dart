// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContentDto _$$_ContentDtoFromJson(Map<String, dynamic> json) =>
    _$_ContentDto(
      id: json['id'] as String?,
      info: ContentInfoDto.fromJson(json['info'] as Map<String, dynamic>),
      profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
      dtCreated: Fbconverter.fromJson(json['dtCreated']),
      dtUpdated: Fbconverter.fromJson(json['dtUpdated']),
      kind: json['kind'] as String?,
    );

Map<String, dynamic> _$$_ContentDtoToJson(_$_ContentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'info': instance.info.toJson(),
      'profile': instance.profile.toJson(),
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
      'dtUpdated': Fbconverter.toJson(instance.dtUpdated),
      'kind': instance.kind,
    };

_$_ContentInfoDto _$$_ContentInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_ContentInfoDto(
      id: json['id'] as String?,
      imgUrl: json['imgUrl'] as String?,
      uid: json['uid'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      cntView: json['cntView'] as int,
      contentKind: json['contentKind'] as int,
      thumbnails: (json['thumbnails'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      dtCreated: Fbconverter.fromJson(json['dtCreated']),
      dtUpdated: Fbconverter.fromJson(json['dtUpdated']),
    );

Map<String, dynamic> _$$_ContentInfoDtoToJson(_$_ContentInfoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imgUrl': instance.imgUrl,
      'uid': instance.uid,
      'title': instance.title,
      'content': instance.content,
      'cntView': instance.cntView,
      'contentKind': instance.contentKind,
      'thumbnails': instance.thumbnails,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
      'dtUpdated': Fbconverter.toJson(instance.dtUpdated),
    };
