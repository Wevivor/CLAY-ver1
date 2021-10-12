import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class FindWord {
  String? id;
  String name;
  String img;
  // DateTime datestamp;
  // FindWord(this.id, this.words, this.datestamp);
  FindWord(
    this.id,
    this.name,
    this.img,
  );

  factory FindWord.fromJson(Map<String, dynamic> json) =>
      _$FindWordsFromJson(json);
  Map<String, dynamic> toJson() => _$FindWordsToJson(this);

  ///파이어베이스로 저장하고 읽기.
  factory FindWord.fromFirebaseJson(Map<String, dynamic> json) =>
      _$FindWordsFromFirebaseJson(json);
  Map<String, dynamic> toFirebaseJson() => _$FindWordsToFirbaseJson(this);
}

FindWord _$FindWordsFromFirebaseJson(Map<String, dynamic> json) {
  return FindWord(
    json['id'] as String?,
    json['name'] as String,
    json['img'] as String,
    // const TimestampConverter().fromJson(json['datestamp'] as Timestamp),
  );
}

FindWord _$FindWordsFromJson(Map<String, dynamic> json) {
  return FindWord(
    json['id'] as String?,
    json['name'] as String,
    json['img'] as String,
    // DateTime.parse(json['datestamp']),
  );
}

Map<String, dynamic> _$FindWordsToJson(FindWord instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      // 'datestamp': instance.datestamp.toIso8601String(),
    };

Map<String, dynamic> _$FindWordsToFirbaseJson(FindWord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      // 'datestamp': const TimestampConverter().toJson(instance.datestamp),
    };
