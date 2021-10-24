// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PushDto _$$_PushDtoFromJson(Map<String, dynamic> json) => _$_PushDto(
      id: json['id'] as String?,
      kind: json['kind'] as String,
      postId: json['postId'] as String?,
      from: json['from'] == null
          ? null
          : ProfileDto.fromJson(json['from'] as Map<String, dynamic>),
      to: json['to'] == null
          ? null
          : ProfileDto.fromJson(json['to'] as Map<String, dynamic>),
      message: json['message'] == null
          ? null
          : PushMessageDto.fromJson(json['message'] as Map<String, dynamic>),
      dtCreated: Fbconverter.fromJson(json['dtCreated']),
    );

Map<String, dynamic> _$$_PushDtoToJson(_$_PushDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kind': instance.kind,
      'postId': instance.postId,
      'from': instance.from?.toJson(),
      'to': instance.to?.toJson(),
      'message': instance.message?.toJson(),
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
    };

_$_PushMessageDto _$$_PushMessageDtoFromJson(Map<String, dynamic> json) =>
    _$_PushMessageDto(
      cnt: json['cnt'] as int?,
      content: json['content'] as String?,
      imageUrl: json['imageUrl'] as String?,
      title: json['title'] as String?,
      dtCreated: Fbconverter.fromJson(json['dtCreated']),
    );

Map<String, dynamic> _$$_PushMessageDtoToJson(_$_PushMessageDto instance) =>
    <String, dynamic>{
      'cnt': instance.cnt,
      'content': instance.content,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
    };
