import 'package:clay/models/models.dart';
import 'package:clay/models/globals/globals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'push_dto.dart';

part 'push.freezed.dart';

@freezed
class Push with _$Push {
  factory Push({
    required String kind,
    String? postId,
    String? id,
    required DateTime dtCreated,
    ProfileShort? from,
    ProfileShort? to,
    PushMessage? message,
  }) = _Push;
  Push._();

  PushDto toDto() => PushDto(
        id: id,
        kind: kind,
        postId: postId,
        message: message?.toDto(),
        from: from?.toDto(),
        to: to?.toDto(),
        dtCreated: dtCreated,
      );
}

@freezed
class PushMessage with _$PushMessage {
  factory PushMessage({
    int? cnt,
    String? content,
    String? imageUrl,
    String? title,
    required DateTime dtCreated,
  }) = _PushMessage;
  PushMessage._();
  PushMessageDto toDto() => PushMessageDto(
        cnt: cnt,
        content: content,
        imageUrl: imageUrl,
        title: title,
        dtCreated: dtCreated,
      );
}
