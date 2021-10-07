// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notice _$_$_NoticeFromJson(Map<String, dynamic> json) {
  return _$_Notice(
    id: json['id'] as String?,
    author: ProfileDto.fromJson(json['author'] as Map<String, dynamic>),
    info: FaqInfo.fromJson(json['info'] as Map<String, dynamic>),
    thumbnails: (json['thumbnails'] as List<dynamic>?)
        ?.map((e) => e as String?)
        .toList(),
  );
}

Map<String, dynamic> _$_$_NoticeToJson(_$_Notice instance) => <String, dynamic>{
      'id': instance.id,
      'author': instance.author.toJson(),
      'info': instance.info.toJson(),
      'thumbnails': instance.thumbnails,
    };
