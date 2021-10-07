// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yaggwan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Yaggwan _$_$_YaggwanFromJson(Map<String, dynamic> json) {
  return _$_Yaggwan(
    id: json['id'] as String?,
    contents: json['contents'] as String,
    thumbnails: (json['thumbnails'] as List<dynamic>?)
        ?.map((e) => e as String?)
        .toList(),
  );
}

Map<String, dynamic> _$_$_YaggwanToJson(_$_Yaggwan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contents': instance.contents,
      'thumbnails': instance.thumbnails,
    };
