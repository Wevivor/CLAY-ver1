import 'package:clay/c_globals/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_keyword.freezed.dart';
part 'search_keyword.g.dart';

@freezed
class SearchKeyword with _$SearchKeyword {
  @JsonSerializable(explicitToJson: true)
  factory SearchKeyword({
    String? word,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
  }) = _SearchKeyword;
  SearchKeyword._();
  factory SearchKeyword.fromJson(Map<String, dynamic> json) =>
      _$SearchKeywordFromJson(json);
}
