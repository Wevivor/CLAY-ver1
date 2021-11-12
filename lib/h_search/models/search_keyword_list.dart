import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_keyword_list.freezed.dart';
part 'search_keyword_list.g.dart';

@freezed
class SearchKeywordList with _$SearchKeywordList {
  @JsonSerializable(explicitToJson: true)
  factory SearchKeywordList({
    String? name,
    String? strUid,
    List<dynamic>? node,
  }) = _SearchKeywordList;
  SearchKeywordList._();
  factory SearchKeywordList.fromJson(Map<String, dynamic> json) =>
      _$SearchKeywordListFromJson(json);
}
