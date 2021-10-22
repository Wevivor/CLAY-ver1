// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContentsDto _$$_ContentsDtoFromJson(Map<String, dynamic> json) =>
    _$_ContentsDto(
      contentsId: json['contents_id'] as String?,
      info: ContentsInfoDto.fromJson(json['info'] as Map<String, dynamic>),
      userInfo: ProfileDto.fromJson(json['user_info'] as Map<String, dynamic>),
      contentsAllviewCount: json['contents_allview_count'] as int,
      contentsMyviewCount: json['contents_myview_count'] as int,
      contentsAlarmCheck: json['contents_alarm_check'] as int,
      boardInfo: json['board_info'] == null
          ? null
          : BoardInfoDto.fromJson(json['board_info'] as Map<String, dynamic>),
      shareInfo: json['share'] == null
          ? null
          : ShareDto.fromJson(json['share'] as Map<String, dynamic>),
      contentsComment: json['contents_comment'] as String?,
      ContentsCreateDate: Fbconverter.fromJson(json['contents_create_date']),
      ContentsUpdateDate: Fbconverter.fromJson(json['contents_upt_date']),
    );

Map<String, dynamic> _$$_ContentsDtoToJson(_$_ContentsDto instance) =>
    <String, dynamic>{
      'contents_id': instance.contentsId,
      'info': instance.info.toJson(),
      'user_info': instance.userInfo.toJson(),
      'contents_allview_count': instance.contentsAllviewCount,
      'contents_myview_count': instance.contentsMyviewCount,
      'contents_alarm_check': instance.contentsAlarmCheck,
      'board_info': instance.boardInfo?.toJson(),
      'share': instance.shareInfo?.toJson(),
      'contents_comment': instance.contentsComment,
      'contents_create_date': Fbconverter.toJson(instance.ContentsCreateDate),
      'contents_upt_date': Fbconverter.toJson(instance.ContentsUpdateDate),
    };

_$_ContentsInfoDto _$$_ContentsInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_ContentsInfoDto(
      contentsId: json['contents_id'] as String?,
      contentsTitle: json['contents_title'] as String?,
      contentsUrl: json['contents_url'] as String?,
      contentsImages: json['contents_images'] as String?,
      contentsDescription: json['contents_description'] as String?,
      contentsComment: json['contents_comment'] as String?,
      contentsUniqueLink: json['contents_unique_link'] as String?,
      contentsFixed: json['contents_fixed'] as bool?,
      contentsType: json['contents_type'] as String?,
      thumbnails: json['thumbnails'] as String?,
      ContentsCreateDate: Fbconverter.fromJson(json['contents_create_date']),
      ContentsUpdateDate: Fbconverter.fromJson(json['contents_upt_date']),
    );

Map<String, dynamic> _$$_ContentsInfoDtoToJson(_$_ContentsInfoDto instance) =>
    <String, dynamic>{
      'contents_id': instance.contentsId,
      'contents_title': instance.contentsTitle,
      'contents_url': instance.contentsUrl,
      'contents_images': instance.contentsImages,
      'contents_description': instance.contentsDescription,
      'contents_comment': instance.contentsComment,
      'contents_unique_link': instance.contentsUniqueLink,
      'contents_fixed': instance.contentsFixed,
      'contents_type': instance.contentsType,
      'thumbnails': instance.thumbnails,
      'contents_create_date': Fbconverter.toJson(instance.ContentsCreateDate),
      'contents_upt_date': Fbconverter.toJson(instance.ContentsUpdateDate),
    };
