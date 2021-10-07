import 'package:freezed_annotation/freezed_annotation.dart';

import 'utils_dtos.dart';
part 'utils.freezed.dart';

@freezed
class ListCnt with _$ListCnt {
  factory ListCnt({
    required int cnt,
    required List<String?> lists,
  }) = _ListCnt;
  ListCnt._();
  ListCntDto toDto() => ListCntDto(
        cnt: cnt,
        lists: lists,
      );
}
 
  // double status;
