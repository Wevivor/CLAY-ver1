// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FaqInfo _$_$_FaqInfoFromJson(Map<String, dynamic> json) {
  return _$_FaqInfo(
    title: json['title'] as String?,
    content: json['content'] as String?,
    cntView: json['cntView'] as int,
    dtCreated: Fbconverter.fromJson(json['dtCreated']),
    dtUpdated: Fbconverter.fromJson(json['dtUpdated']),
    thumbnails: (json['thumbnails'] as List<dynamic>?)
        ?.map((e) => e as String?)
        .toList(),
  );
}

Map<String, dynamic> _$_$_FaqInfoToJson(_$_FaqInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'cntView': instance.cntView,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
      'dtUpdated': Fbconverter.toJson(instance.dtUpdated),
      'thumbnails': instance.thumbnails,
    };
