// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Faq _$_$_FaqFromJson(Map<String, dynamic> json) {
  return _$_Faq(
    id: json['id'] as String?,
    author: ProfileDto.fromJson(json['author'] as Map<String, dynamic>),
    info: FaqInfo.fromJson(json['info'] as Map<String, dynamic>),
    thumbnails: (json['thumbnails'] as List<dynamic>?)
        ?.map((e) => e as String?)
        .toList(),
  );
}

Map<String, dynamic> _$_$_FaqToJson(_$_Faq instance) => <String, dynamic>{
      'id': instance.id,
      'author': instance.author.toJson(),
      'info': instance.info.toJson(),
      'thumbnails': instance.thumbnails,
    };
