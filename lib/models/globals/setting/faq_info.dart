import 'package:clay/c_globals/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_info.freezed.dart';

part 'faq_info.g.dart';

@freezed
class FaqInfo with _$FaqInfo {
  @JsonSerializable(explicitToJson: true)
  factory FaqInfo({
    ///제품 개요
    String? title,
    String? content,
    required int cntView,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtUpdated,
    List<String?>? thumbnails,
    // List<Comment>? comments;
  }) = _FaqInfo;
  FaqInfo._();
  factory FaqInfo.fromJson(Map<String, dynamic> json) =>
      _$FaqInfoFromJson(json);
}
 
  // double status;
