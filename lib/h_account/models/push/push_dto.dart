import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/h_account/models/users/users_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'push.dart';

part 'push_dto.freezed.dart';
part 'push_dto.g.dart';

@freezed
class PushDto with _$PushDto {
  @JsonSerializable(explicitToJson: true)
  factory PushDto({
    String? id,
    required String kind,
    @JsonKey(name: 'contents_id') String? contentsId,
    required ProfileDto? from,
    required ProfileDto? to,
    PushMessageDto? message,
    @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime registerDate,
    // List<Comment>? comments;
  }) = _PushDto;
  PushDto._();
  factory PushDto.fromJson(Map<String, dynamic> json) =>
      _$PushDtoFromJson(json);

  Push toDomain() => Push(
        id: id,
        kind: kind,
        contentsId: contentsId,
        message: message?.toDomain(),
        registerDate: registerDate,
        from: from?.toDomain(),
        to: to?.toDomain(),
      );
}

@freezed
class PushMessageDto with _$PushMessageDto {
  @JsonSerializable(explicitToJson: true)
  factory PushMessageDto({
    int? cnt,
    String? content,
    @JsonKey(name: 'board_badge') String? badge,
    @JsonKey(name: 'image_url') String? imageUrl,
    String? title,
    @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime registerDate,
  }) = _PushMessageDto;
  PushMessageDto._();
  factory PushMessageDto.fromJson(Map<String, dynamic> json) =>
      _$PushMessageDtoFromJson(json);

  PushMessage toDomain() => PushMessage(
        cnt: cnt,
        content: content,
        imageUrl: imageUrl,
        title: title,
        badge: badge,
        registerDate: registerDate,
      );
}
