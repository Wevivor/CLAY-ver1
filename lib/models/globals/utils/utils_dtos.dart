import 'package:freezed_annotation/freezed_annotation.dart';

import 'utils.dart';

part 'utils_dtos.freezed.dart';
part 'utils_dtos.g.dart';

@freezed
class ListCntDto with _$ListCntDto {
  @JsonSerializable(explicitToJson: true)
  factory ListCntDto({
    required int cnt,
    required List<String?> lists,
  }) = _ListCntDto;
  ListCntDto._();

  factory ListCntDto.fromJson(Map<String, dynamic> json) =>
      _$ListCntDtoFromJson(json);
  ListCnt toDomain() => ListCnt(cnt: cnt, lists: lists);
}
 
  // double status;
