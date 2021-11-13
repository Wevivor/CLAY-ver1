import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/h_account/models/users/users_dtos.dart';
import 'package:clay/h_content/models/content_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'remind.dart';

part 'remind_dto.freezed.dart';
part 'remind_dto.g.dart';

@freezed
class RemindDto with _$RemindDto {
  @JsonSerializable(explicitToJson: true)
  factory RemindDto({
    @JsonKey(name: 'remind_id') String? remindId,
    @JsonKey(name: 'r_alarm_title') String? title,
    @JsonKey(name: 'r_alarm_description') String? description,
    @JsonKey(name: 'contents_info') required ContentsInfoDto contentsInfo,
    required ProfileDto? from,
    @JsonKey(name: 'r_alarm_time', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime rAlarmTime,
    // List<Comment>? comments;
  }) = _RemindDto;
  RemindDto._();
  factory RemindDto.fromJson(Map<String, dynamic> json) =>
      _$RemindDtoFromJson(json);

  Remind toDomain() => Remind(
        remindId: remindId,
        title: title,
        description: description,
        contentsInfo: contentsInfo.toDomain(),
        from: from?.toDomain(),
        rAlarmTime: rAlarmTime,
      );
}
