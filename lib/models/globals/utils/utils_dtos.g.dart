// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utils_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListCntDto _$_$_ListCntDtoFromJson(Map<String, dynamic> json) {
  return _$_ListCntDto(
    cnt: json['cnt'] as int,
    lists: (json['lists'] as List<dynamic>).map((e) => e as String?).toList(),
  );
}

Map<String, dynamic> _$_$_ListCntDtoToJson(_$_ListCntDto instance) =>
    <String, dynamic>{
      'cnt': instance.cnt,
      'lists': instance.lists,
    };
