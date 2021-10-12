// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_keyword.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchKeyword _$$_SearchKeywordFromJson(Map<String, dynamic> json) =>
    _$_SearchKeyword(
      word: json['word'] as String?,
      dtCreated: Fbconverter.fromJson(json['dtCreated']),
    );

Map<String, dynamic> _$$_SearchKeywordToJson(_$_SearchKeyword instance) =>
    <String, dynamic>{
      'word': instance.word,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
    };
