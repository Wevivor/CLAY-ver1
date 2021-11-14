import 'package:clay/h_account/models/users/users.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'push_dto.dart';

part 'push.freezed.dart';

@freezed
class Push with _$Push {
  factory Push({
    String? id,
    required String kind,
    String? contentsId,
    Profile? from,
    Profile? to,
    PushMessage? message,
    required DateTime registerDate,
  }) = _Push;
  Push._();

  PushDto toDto() => PushDto(
        id: id,
        kind: kind,
        contentsId: contentsId,
        message: message?.toDto(),
        from: from?.toDto(),
        to: to?.toDto(),
        registerDate: registerDate,
      );
}

@freezed
class PushMessage with _$PushMessage {
  factory PushMessage({
    int? cnt,
    String? content,
    String? imageUrl,
    String? title,
    String? badge,
    required DateTime registerDate,
  }) = _PushMessage;
  PushMessage._();
  PushMessageDto toDto() => PushMessageDto(
        cnt: cnt,
        content: content,
        imageUrl: imageUrl,
        title: title,
        badge: badge,
        registerDate: registerDate,
      );
}
