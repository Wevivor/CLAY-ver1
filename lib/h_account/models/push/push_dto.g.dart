// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PushDto _$$_PushDtoFromJson(Map<String, dynamic> json) => _$_PushDto(
      id: json['id'] as String?,
      kind: json['kind'] as String,
      contentsId: json['contents_id'] as String?,
      from: json['from'] == null
          ? null
          : ProfileDto.fromJson(json['from'] as Map<String, dynamic>),
      to: json['to'] == null
          ? null
          : ProfileDto.fromJson(json['to'] as Map<String, dynamic>),
      message: json['message'] == null
          ? null
          : PushMessageDto.fromJson(json['message'] as Map<String, dynamic>),
      registerDate: Fbconverter.fromJson(json['register_date']),
    );

Map<String, dynamic> _$$_PushDtoToJson(_$_PushDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kind': instance.kind,
      'contents_id': instance.contentsId,
      'from': instance.from?.toJson(),
      'to': instance.to?.toJson(),
      'message': instance.message?.toJson(),
      'register_date': Fbconverter.toJson(instance.registerDate),
    };

_$_PushMessageDto _$$_PushMessageDtoFromJson(Map<String, dynamic> json) =>
    _$_PushMessageDto(
      cnt: json['cnt'] as int?,
      content: json['content'] as String?,
      badge: json['board_badge'] as String?,
      imageUrl: json['image_url'] as String?,
      title: json['title'] as String?,
      registerDate: Fbconverter.fromJson(json['register_date']),
    );

Map<String, dynamic> _$$_PushMessageDtoToJson(_$_PushMessageDto instance) =>
    <String, dynamic>{
      'cnt': instance.cnt,
      'content': instance.content,
      'board_badge': instance.badge,
      'image_url': instance.imageUrl,
      'title': instance.title,
      'register_date': Fbconverter.toJson(instance.registerDate),
    };
