// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BoardDto _$$_BoardDtoFromJson(Map<String, dynamic> json) => _$_BoardDto(
      boardId: json['board_id'] as String?,
      info: BoardInfoDto.fromJson(json['info'] as Map<String, dynamic>),
      boardCreator:
          ProfileDto.fromJson(json['board_creator'] as Map<String, dynamic>),
      shareInfo: json['share'] == null
          ? null
          : ShareDto.fromJson(json['share'] as Map<String, dynamic>),
      shareCheck: json['share_check'] as bool,
      boardComment: json['board_comment'] as List<dynamic>?,
      registerDate: Fbconverter.fromJson(json['register_date']),
    );

Map<String, dynamic> _$$_BoardDtoToJson(_$_BoardDto instance) =>
    <String, dynamic>{
      'board_id': instance.boardId,
      'info': instance.info.toJson(),
      'board_creator': instance.boardCreator.toJson(),
      'share': instance.shareInfo?.toJson(),
      'share_check': instance.shareCheck,
      'board_comment': instance.boardComment,
      'register_date': Fbconverter.toJson(instance.registerDate),
    };

_$_BoardInfoDto _$$_BoardInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_BoardInfoDto(
      boardId: json['board_id'] as String?,
      isFixed: json['is_fixed'] as bool? ?? false,
      boardName: json['board_name'] as String,
      boardColor: json['board_color'] as String,
      boardBadge: json['board_badge'] as String,
      boardUnquieLink: json['board_unique_link'] as String?,
      contentsCount: json['contents_count'] as int,
      shareCheck: json['share_check'] as bool,
      shareCount: json['share_count'] as int?,
      registerDate: Fbconverter.fromJson(json['register_date']),
    );

Map<String, dynamic> _$$_BoardInfoDtoToJson(_$_BoardInfoDto instance) =>
    <String, dynamic>{
      'board_id': instance.boardId,
      'is_fixed': instance.isFixed,
      'board_name': instance.boardName,
      'board_color': instance.boardColor,
      'board_badge': instance.boardBadge,
      'board_unique_link': instance.boardUnquieLink,
      'contents_count': instance.contentsCount,
      'share_check': instance.shareCheck,
      'share_count': instance.shareCount,
      'register_date': Fbconverter.toJson(instance.registerDate),
    };

_$_ShareDto _$$_ShareDtoFromJson(Map<String, dynamic> json) => _$_ShareDto(
      sharer: ProfileDto.fromJson(json['sharer'] as Map<String, dynamic>),
      shareLevel: json['share_level'] as int,
    );

Map<String, dynamic> _$$_ShareDtoToJson(_$_ShareDto instance) =>
    <String, dynamic>{
      'sharer': instance.sharer.toJson(),
      'share_level': instance.shareLevel,
    };
