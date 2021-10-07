import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/models/models.dart';
import 'package:clay/models/globals/globals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'push.dart';

part 'push_dto.freezed.dart';
part 'push_dto.g.dart';

@freezed
class PushDto with _$PushDto {
  @JsonSerializable(explicitToJson: true)
  factory PushDto({
    required String kind,
    String? postId,
    String? id,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
    required ProfileShortDto? from,
    required ProfileShortDto? to,
    PushMessageDto? message,

    // List<Comment>? comments;
  }) = _PushDto;
  PushDto._();
  factory PushDto.fromJson(Map<String, dynamic> json) =>
      _$PushDtoFromJson(json);

  Push toDomain() => Push(
        kind: kind,
        postId: postId,
        id: id,
        dtCreated: dtCreated,
        from: from?.toDomain(),
        to: to?.toDomain(),
        message: message?.toDomain(),
      );
}

@freezed
class PushMessageDto with _$PushMessageDto {
  @JsonSerializable(explicitToJson: true)
  factory PushMessageDto({
    int? cnt,
    String? content,
    String? imageUrl,
    String? title,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
  }) = _PushMessageDto;
  PushMessageDto._();
  factory PushMessageDto.fromJson(Map<String, dynamic> json) =>
      _$PushMessageDtoFromJson(json);

  PushMessage toDomain() => PushMessage(
        cnt: cnt,
        content: content,
        imageUrl: imageUrl,
        title: title,
        dtCreated: dtCreated,
      );
}
