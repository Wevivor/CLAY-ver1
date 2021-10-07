// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PushDto _$_$_PushDtoFromJson(Map<String, dynamic> json) {
  return _$_PushDto(
    kind: json['kind'] as String,
    postId: json['postId'] as String?,
    id: json['id'] as String?,
    dtCreated: Fbconverter.fromJson(json['dtCreated']),
    from: json['from'] == null
        ? null
        : ProfileShortDto.fromJson(json['from'] as Map<String, dynamic>),
    to: json['to'] == null
        ? null
        : ProfileShortDto.fromJson(json['to'] as Map<String, dynamic>),
    message: json['message'] == null
        ? null
        : PushMessageDto.fromJson(json['message'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PushDtoToJson(_$_PushDto instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'postId': instance.postId,
      'id': instance.id,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
      'from': instance.from?.toJson(),
      'to': instance.to?.toJson(),
      'message': instance.message?.toJson(),
    };

_$_PushMessageDto _$_$_PushMessageDtoFromJson(Map<String, dynamic> json) {
  return _$_PushMessageDto(
    cnt: json['cnt'] as int?,
    content: json['content'] as String?,
    imageUrl: json['imageUrl'] as String?,
    title: json['title'] as String?,
    dtCreated: Fbconverter.fromJson(json['dtCreated']),
  );
}

Map<String, dynamic> _$_$_PushMessageDtoToJson(_$_PushMessageDto instance) =>
    <String, dynamic>{
      'cnt': instance.cnt,
      'content': instance.content,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
    };
