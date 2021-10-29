// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remind_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RemindDto _$$_RemindDtoFromJson(Map<String, dynamic> json) => _$_RemindDto(
      remindId: json['remind_id'] as String?,
      title: json['r_alarm_title'] as String?,
      description: json['r_alarm_description'] as String?,
      from: json['from'] == null
          ? null
          : ProfileDto.fromJson(json['from'] as Map<String, dynamic>),
      rAlarmTime: Fbconverter.fromJson(json['r_alarm_time']),
    );

Map<String, dynamic> _$$_RemindDtoToJson(_$_RemindDto instance) =>
    <String, dynamic>{
      'remind_id': instance.remindId,
      'r_alarm_title': instance.title,
      'r_alarm_description': instance.description,
      'from': instance.from?.toJson(),
      'r_alarm_time': Fbconverter.toJson(instance.rAlarmTime),
    };
