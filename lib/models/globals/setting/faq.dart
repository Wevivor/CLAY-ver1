import 'package:clay/models/globals/globals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'faq_info.dart';

part 'faq.freezed.dart';
part 'faq.g.dart';

@freezed
class Faq with _$Faq {
  @JsonSerializable(explicitToJson: true)
  factory Faq({
    String? id,
    required ProfileDto author,
    required FaqInfo info,
    List<String?>? thumbnails,
    // List<Comment>? comments;
  }) = _Faq;
  Faq._();
  factory Faq.fromJson(Map<String, dynamic> json) => _$FaqFromJson(json);
}
 
  // double status;
