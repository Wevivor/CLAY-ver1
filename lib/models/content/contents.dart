import 'package:clay/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contents.freezed.dart';

@freezed
class Content with _$Content {
  factory Content({
    String? id,
    required ContentInfo info,
    required Profile profile,
    required DateTime dtCreated,
    required DateTime dtUpdated,
    String? kind,
  }) = _Content;
  Content._();
}

@freezed
class ContentInfo with _$ContentInfo {
  factory ContentInfo({
    String? id,
    String? imgUrl,
    String? uid,
    String? title,
    String? content,
    required int contentKind,
    required int cntView,
    List<String?>? thumbnails,
    required DateTime dtCreated,
    required DateTime dtUpdated,

    // List<Comment>? comments;
  }) = _ContentInfo;
  ContentInfo._();

  ContentInfoDto toDto() => ContentInfoDto(
        id: id,
        imgUrl: imgUrl,
        uid: uid,
        title: title,
        content: content,
        contentKind: contentKind,
        cntView: cntView,
        thumbnails: thumbnails,
        dtCreated: dtCreated,
        dtUpdated: dtUpdated,
      );
}
