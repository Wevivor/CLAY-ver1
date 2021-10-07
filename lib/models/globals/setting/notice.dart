import 'package:clay/models/models.dart';
import 'package:clay/models/globals/globals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'faq_info.dart';

part 'notice.freezed.dart';
part 'notice.g.dart';

@freezed
class Notice with _$Notice {
  @JsonSerializable(explicitToJson: true)
  factory Notice({
    String? id,
    required ProfileDto author,
    required FaqInfo info,
    List<String?>? thumbnails,
    // List<Comment>? comments;
  }) = _Notice;
  Notice._();
  factory Notice.fromJson(Map<String, dynamic> json) => _$NoticeFromJson(json);
}
