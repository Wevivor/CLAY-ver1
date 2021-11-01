// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remind_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemindDto _$RemindDtoFromJson(Map<String, dynamic> json) {
  return _RemindDto.fromJson(json);
}

/// @nodoc
class _$RemindDtoTearOff {
  const _$RemindDtoTearOff();

  _RemindDto call(
      {@JsonKey(name: 'remind_id')
          String? remindId,
      @JsonKey(name: 'r_alarm_title')
          String? title,
      @JsonKey(name: 'r_alarm_description')
          String? description,
      required ContentsInfoDto contentsInfo,
      required ProfileDto? from,
      @JsonKey(name: 'r_alarm_time', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime rAlarmTime}) {
    return _RemindDto(
      remindId: remindId,
      title: title,
      description: description,
      contentsInfo: contentsInfo,
      from: from,
      rAlarmTime: rAlarmTime,
    );
  }

  RemindDto fromJson(Map<String, Object> json) {
    return RemindDto.fromJson(json);
  }
}

/// @nodoc
const $RemindDto = _$RemindDtoTearOff();

/// @nodoc
mixin _$RemindDto {
  @JsonKey(name: 'remind_id')
  String? get remindId => throw _privateConstructorUsedError;
  @JsonKey(name: 'r_alarm_title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'r_alarm_description')
  String? get description => throw _privateConstructorUsedError;
  ContentsInfoDto get contentsInfo => throw _privateConstructorUsedError;
  ProfileDto? get from => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'r_alarm_time',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get rAlarmTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemindDtoCopyWith<RemindDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemindDtoCopyWith<$Res> {
  factory $RemindDtoCopyWith(RemindDto value, $Res Function(RemindDto) then) =
      _$RemindDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'remind_id')
          String? remindId,
      @JsonKey(name: 'r_alarm_title')
          String? title,
      @JsonKey(name: 'r_alarm_description')
          String? description,
      ContentsInfoDto contentsInfo,
      ProfileDto? from,
      @JsonKey(name: 'r_alarm_time', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime rAlarmTime});

  $ContentsInfoDtoCopyWith<$Res> get contentsInfo;
  $ProfileDtoCopyWith<$Res>? get from;
}

/// @nodoc
class _$RemindDtoCopyWithImpl<$Res> implements $RemindDtoCopyWith<$Res> {
  _$RemindDtoCopyWithImpl(this._value, this._then);

  final RemindDto _value;
  // ignore: unused_field
  final $Res Function(RemindDto) _then;

  @override
  $Res call({
    Object? remindId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? contentsInfo = freezed,
    Object? from = freezed,
    Object? rAlarmTime = freezed,
  }) {
    return _then(_value.copyWith(
      remindId: remindId == freezed
          ? _value.remindId
          : remindId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsInfo: contentsInfo == freezed
          ? _value.contentsInfo
          : contentsInfo // ignore: cast_nullable_to_non_nullable
              as ContentsInfoDto,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as ProfileDto?,
      rAlarmTime: rAlarmTime == freezed
          ? _value.rAlarmTime
          : rAlarmTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ContentsInfoDtoCopyWith<$Res> get contentsInfo {
    return $ContentsInfoDtoCopyWith<$Res>(_value.contentsInfo, (value) {
      return _then(_value.copyWith(contentsInfo: value));
    });
  }

  @override
  $ProfileDtoCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $ProfileDtoCopyWith<$Res>(_value.from!, (value) {
      return _then(_value.copyWith(from: value));
    });
  }
}

/// @nodoc
abstract class _$RemindDtoCopyWith<$Res> implements $RemindDtoCopyWith<$Res> {
  factory _$RemindDtoCopyWith(
          _RemindDto value, $Res Function(_RemindDto) then) =
      __$RemindDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'remind_id')
          String? remindId,
      @JsonKey(name: 'r_alarm_title')
          String? title,
      @JsonKey(name: 'r_alarm_description')
          String? description,
      ContentsInfoDto contentsInfo,
      ProfileDto? from,
      @JsonKey(name: 'r_alarm_time', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime rAlarmTime});

  @override
  $ContentsInfoDtoCopyWith<$Res> get contentsInfo;
  @override
  $ProfileDtoCopyWith<$Res>? get from;
}

/// @nodoc
class __$RemindDtoCopyWithImpl<$Res> extends _$RemindDtoCopyWithImpl<$Res>
    implements _$RemindDtoCopyWith<$Res> {
  __$RemindDtoCopyWithImpl(_RemindDto _value, $Res Function(_RemindDto) _then)
      : super(_value, (v) => _then(v as _RemindDto));

  @override
  _RemindDto get _value => super._value as _RemindDto;

  @override
  $Res call({
    Object? remindId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? contentsInfo = freezed,
    Object? from = freezed,
    Object? rAlarmTime = freezed,
  }) {
    return _then(_RemindDto(
      remindId: remindId == freezed
          ? _value.remindId
          : remindId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsInfo: contentsInfo == freezed
          ? _value.contentsInfo
          : contentsInfo // ignore: cast_nullable_to_non_nullable
              as ContentsInfoDto,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as ProfileDto?,
      rAlarmTime: rAlarmTime == freezed
          ? _value.rAlarmTime
          : rAlarmTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_RemindDto extends _RemindDto {
  _$_RemindDto(
      {@JsonKey(name: 'remind_id')
          this.remindId,
      @JsonKey(name: 'r_alarm_title')
          this.title,
      @JsonKey(name: 'r_alarm_description')
          this.description,
      required this.contentsInfo,
      required this.from,
      @JsonKey(name: 'r_alarm_time', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.rAlarmTime})
      : super._();

  factory _$_RemindDto.fromJson(Map<String, dynamic> json) =>
      _$$_RemindDtoFromJson(json);

  @override
  @JsonKey(name: 'remind_id')
  final String? remindId;
  @override
  @JsonKey(name: 'r_alarm_title')
  final String? title;
  @override
  @JsonKey(name: 'r_alarm_description')
  final String? description;
  @override
  final ContentsInfoDto contentsInfo;
  @override
  final ProfileDto? from;
  @override
  @JsonKey(
      name: 'r_alarm_time',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  final DateTime rAlarmTime;

  @override
  String toString() {
    return 'RemindDto(remindId: $remindId, title: $title, description: $description, contentsInfo: $contentsInfo, from: $from, rAlarmTime: $rAlarmTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemindDto &&
            (identical(other.remindId, remindId) ||
                const DeepCollectionEquality()
                    .equals(other.remindId, remindId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.contentsInfo, contentsInfo) ||
                const DeepCollectionEquality()
                    .equals(other.contentsInfo, contentsInfo)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.rAlarmTime, rAlarmTime) ||
                const DeepCollectionEquality()
                    .equals(other.rAlarmTime, rAlarmTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(remindId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(contentsInfo) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(rAlarmTime);

  @JsonKey(ignore: true)
  @override
  _$RemindDtoCopyWith<_RemindDto> get copyWith =>
      __$RemindDtoCopyWithImpl<_RemindDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemindDtoToJson(this);
  }
}

abstract class _RemindDto extends RemindDto {
  factory _RemindDto(
      {@JsonKey(name: 'remind_id')
          String? remindId,
      @JsonKey(name: 'r_alarm_title')
          String? title,
      @JsonKey(name: 'r_alarm_description')
          String? description,
      required ContentsInfoDto contentsInfo,
      required ProfileDto? from,
      @JsonKey(name: 'r_alarm_time', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime rAlarmTime}) = _$_RemindDto;
  _RemindDto._() : super._();

  factory _RemindDto.fromJson(Map<String, dynamic> json) =
      _$_RemindDto.fromJson;

  @override
  @JsonKey(name: 'remind_id')
  String? get remindId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'r_alarm_title')
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'r_alarm_description')
  String? get description => throw _privateConstructorUsedError;
  @override
  ContentsInfoDto get contentsInfo => throw _privateConstructorUsedError;
  @override
  ProfileDto? get from => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: 'r_alarm_time',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get rAlarmTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RemindDtoCopyWith<_RemindDto> get copyWith =>
      throw _privateConstructorUsedError;
}
