import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clay/part/part_signin/part_signin.dart';

import 'faq_info.dart';

part 'yaggwan.freezed.dart';
part 'yaggwan.g.dart';

enum YAGGWAN_KIND { PERSION_INFO, PROVISION }

@freezed
class Yaggwan with _$Yaggwan {
  @JsonSerializable(explicitToJson: true)
  factory Yaggwan({
    String? id,
    // required UserProfile author,
    // required int kind,
    required String contents,
    List<String?>? thumbnails,
    // List<Comment>? comments;
  }) = _Yaggwan;
  Yaggwan._();
  factory Yaggwan.fromJson(Map<String, dynamic> json) =>
      _$YaggwanFromJson(json);
}
