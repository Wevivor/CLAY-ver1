import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/h_account/models/users/users.dart';
import 'package:clay/h_account/models/users/users_dtos.dart';
import 'package:clay/h_content/models/contents.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'remind_dto.dart';

part 'remind.freezed.dart';

@freezed
class Remind with _$Remind {
  factory Remind({
    String? remindId,
    String? title,
    String? description,
    Profile? from,
    required ContentsInfo contentsInfo,
    required DateTime rAlarmTime,
    // List<Comment>? comments;
  }) = _Remind;
  Remind._();

  RemindDto toDto() => RemindDto(
        remindId: remindId,
        title: title,
        description: description,
        contentsInfo: contentsInfo.toDto(),
        from: from?.toDto(),
        rAlarmTime: rAlarmTime,
      );
}
