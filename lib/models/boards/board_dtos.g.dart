// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BoardDto _$$_BoardDtoFromJson(Map<String, dynamic> json) => _$_BoardDto(
      id: json['id'] as String?,
      info: BoardInfoDto.fromJson(json['info'] as Map<String, dynamic>),
      creator: ProfileDto.fromJson(json['creator'] as Map<String, dynamic>),
      shareInfo: json['shareInfo'] == null
          ? null
          : ShareDto.fromJson(json['shareInfo'] as Map<String, dynamic>),
      isShare: json['isShare'] as bool,
      dtCreated: Fbconverter.fromJson(json['dtCreated']),
    );

Map<String, dynamic> _$$_BoardDtoToJson(_$_BoardDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'info': instance.info.toJson(),
      'creator': instance.creator.toJson(),
      'shareInfo': instance.shareInfo?.toJson(),
      'isShare': instance.isShare,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
    };

_$_BoardInfoDto _$$_BoardInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_BoardInfoDto(
      id: json['id'] as String,
      name: json['name'] as String,
      color: json['color'] as String,
      badge: json['badge'] as String,
      link: json['link'] as String,
      comment: json['comment'] as List<dynamic>?,
      cntContent: json['cntContent'] as int,
      isShare: json['isShare'] as bool,
      dtCreated: Fbconverter.fromJson(json['dtCreated']),
    );

Map<String, dynamic> _$$_BoardInfoDtoToJson(_$_BoardInfoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'badge': instance.badge,
      'link': instance.link,
      'comment': instance.comment,
      'cntContent': instance.cntContent,
      'isShare': instance.isShare,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
    };

_$_ShareDto _$$_ShareDtoFromJson(Map<String, dynamic> json) => _$_ShareDto(
      sharer: ProfileDto.fromJson(json['sharer'] as Map<String, dynamic>),
      shareLevel: json['shareLevel'] as int,
    );

Map<String, dynamic> _$$_ShareDtoToJson(_$_ShareDto instance) =>
    <String, dynamic>{
      'sharer': instance.sharer.toJson(),
      'shareLevel': instance.shareLevel,
    };
