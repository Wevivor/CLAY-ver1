// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentsDto _$ContentsDtoFromJson(Map<String, dynamic> json) {
  return _ContentsDto.fromJson(json);
}

/// @nodoc
class _$ContentsDtoTearOff {
  const _$ContentsDtoTearOff();

  _ContentsDto call(
      {@JsonKey(name: 'contents_id')
          String? contentsId,
      required ContentsInfoDto info,
      @JsonKey(name: 'user_info')
          required ProfileDto userInfo,
      @JsonKey(name: 'contents_allview_count')
          required int contentsAllviewCount,
      @JsonKey(name: 'contents_myview_count')
          required int contentsMyviewCount,
      @JsonKey(name: 'contents_alarm_check')
          required int contentsAlarmCheck,
      @JsonKey(name: 'board_info')
          BoardInfoDto? boardInfo,
      @JsonKey(name: 'share')
          ShareDto? shareInfo,
      @JsonKey(name: 'contents_comment')
          String? contentsComment,
      @JsonKey(name: 'contents_create_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime contentsCreateDate,
      @JsonKey(name: 'contents_upt_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime contentsUpdateDate}) {
    return _ContentsDto(
      contentsId: contentsId,
      info: info,
      userInfo: userInfo,
      contentsAllviewCount: contentsAllviewCount,
      contentsMyviewCount: contentsMyviewCount,
      contentsAlarmCheck: contentsAlarmCheck,
      boardInfo: boardInfo,
      shareInfo: shareInfo,
      contentsComment: contentsComment,
      contentsCreateDate: contentsCreateDate,
      contentsUpdateDate: contentsUpdateDate,
    );
  }

  ContentsDto fromJson(Map<String, Object> json) {
    return ContentsDto.fromJson(json);
  }
}

/// @nodoc
const $ContentsDto = _$ContentsDtoTearOff();

/// @nodoc
mixin _$ContentsDto {
  @JsonKey(name: 'contents_id')
  String? get contentsId => throw _privateConstructorUsedError;
  ContentsInfoDto get info => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_info')
  ProfileDto get userInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents_allview_count')
  int get contentsAllviewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents_myview_count')
  int get contentsMyviewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents_alarm_check')
  int get contentsAlarmCheck => throw _privateConstructorUsedError;
  @JsonKey(name: 'board_info')
  BoardInfoDto? get boardInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'share')
  ShareDto? get shareInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents_comment')
  String? get contentsComment => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'contents_create_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get contentsCreateDate => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'contents_upt_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get contentsUpdateDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentsDtoCopyWith<ContentsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentsDtoCopyWith<$Res> {
  factory $ContentsDtoCopyWith(
          ContentsDto value, $Res Function(ContentsDto) then) =
      _$ContentsDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'contents_id')
          String? contentsId,
      ContentsInfoDto info,
      @JsonKey(name: 'user_info')
          ProfileDto userInfo,
      @JsonKey(name: 'contents_allview_count')
          int contentsAllviewCount,
      @JsonKey(name: 'contents_myview_count')
          int contentsMyviewCount,
      @JsonKey(name: 'contents_alarm_check')
          int contentsAlarmCheck,
      @JsonKey(name: 'board_info')
          BoardInfoDto? boardInfo,
      @JsonKey(name: 'share')
          ShareDto? shareInfo,
      @JsonKey(name: 'contents_comment')
          String? contentsComment,
      @JsonKey(name: 'contents_create_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime contentsCreateDate,
      @JsonKey(name: 'contents_upt_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime contentsUpdateDate});

  $ContentsInfoDtoCopyWith<$Res> get info;
  $ProfileDtoCopyWith<$Res> get userInfo;
  $BoardInfoDtoCopyWith<$Res>? get boardInfo;
  $ShareDtoCopyWith<$Res>? get shareInfo;
}

/// @nodoc
class _$ContentsDtoCopyWithImpl<$Res> implements $ContentsDtoCopyWith<$Res> {
  _$ContentsDtoCopyWithImpl(this._value, this._then);

  final ContentsDto _value;
  // ignore: unused_field
  final $Res Function(ContentsDto) _then;

  @override
  $Res call({
    Object? contentsId = freezed,
    Object? info = freezed,
    Object? userInfo = freezed,
    Object? contentsAllviewCount = freezed,
    Object? contentsMyviewCount = freezed,
    Object? contentsAlarmCheck = freezed,
    Object? boardInfo = freezed,
    Object? shareInfo = freezed,
    Object? contentsComment = freezed,
    Object? contentsCreateDate = freezed,
    Object? contentsUpdateDate = freezed,
  }) {
    return _then(_value.copyWith(
      contentsId: contentsId == freezed
          ? _value.contentsId
          : contentsId // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ContentsInfoDto,
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      contentsAllviewCount: contentsAllviewCount == freezed
          ? _value.contentsAllviewCount
          : contentsAllviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      contentsMyviewCount: contentsMyviewCount == freezed
          ? _value.contentsMyviewCount
          : contentsMyviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      contentsAlarmCheck: contentsAlarmCheck == freezed
          ? _value.contentsAlarmCheck
          : contentsAlarmCheck // ignore: cast_nullable_to_non_nullable
              as int,
      boardInfo: boardInfo == freezed
          ? _value.boardInfo
          : boardInfo // ignore: cast_nullable_to_non_nullable
              as BoardInfoDto?,
      shareInfo: shareInfo == freezed
          ? _value.shareInfo
          : shareInfo // ignore: cast_nullable_to_non_nullable
              as ShareDto?,
      contentsComment: contentsComment == freezed
          ? _value.contentsComment
          : contentsComment // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsCreateDate: contentsCreateDate == freezed
          ? _value.contentsCreateDate
          : contentsCreateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contentsUpdateDate: contentsUpdateDate == freezed
          ? _value.contentsUpdateDate
          : contentsUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ContentsInfoDtoCopyWith<$Res> get info {
    return $ContentsInfoDtoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $ProfileDtoCopyWith<$Res> get userInfo {
    return $ProfileDtoCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value));
    });
  }

  @override
  $BoardInfoDtoCopyWith<$Res>? get boardInfo {
    if (_value.boardInfo == null) {
      return null;
    }

    return $BoardInfoDtoCopyWith<$Res>(_value.boardInfo!, (value) {
      return _then(_value.copyWith(boardInfo: value));
    });
  }

  @override
  $ShareDtoCopyWith<$Res>? get shareInfo {
    if (_value.shareInfo == null) {
      return null;
    }

    return $ShareDtoCopyWith<$Res>(_value.shareInfo!, (value) {
      return _then(_value.copyWith(shareInfo: value));
    });
  }
}

/// @nodoc
abstract class _$ContentsDtoCopyWith<$Res>
    implements $ContentsDtoCopyWith<$Res> {
  factory _$ContentsDtoCopyWith(
          _ContentsDto value, $Res Function(_ContentsDto) then) =
      __$ContentsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'contents_id')
          String? contentsId,
      ContentsInfoDto info,
      @JsonKey(name: 'user_info')
          ProfileDto userInfo,
      @JsonKey(name: 'contents_allview_count')
          int contentsAllviewCount,
      @JsonKey(name: 'contents_myview_count')
          int contentsMyviewCount,
      @JsonKey(name: 'contents_alarm_check')
          int contentsAlarmCheck,
      @JsonKey(name: 'board_info')
          BoardInfoDto? boardInfo,
      @JsonKey(name: 'share')
          ShareDto? shareInfo,
      @JsonKey(name: 'contents_comment')
          String? contentsComment,
      @JsonKey(name: 'contents_create_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime contentsCreateDate,
      @JsonKey(name: 'contents_upt_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime contentsUpdateDate});

  @override
  $ContentsInfoDtoCopyWith<$Res> get info;
  @override
  $ProfileDtoCopyWith<$Res> get userInfo;
  @override
  $BoardInfoDtoCopyWith<$Res>? get boardInfo;
  @override
  $ShareDtoCopyWith<$Res>? get shareInfo;
}

/// @nodoc
class __$ContentsDtoCopyWithImpl<$Res> extends _$ContentsDtoCopyWithImpl<$Res>
    implements _$ContentsDtoCopyWith<$Res> {
  __$ContentsDtoCopyWithImpl(
      _ContentsDto _value, $Res Function(_ContentsDto) _then)
      : super(_value, (v) => _then(v as _ContentsDto));

  @override
  _ContentsDto get _value => super._value as _ContentsDto;

  @override
  $Res call({
    Object? contentsId = freezed,
    Object? info = freezed,
    Object? userInfo = freezed,
    Object? contentsAllviewCount = freezed,
    Object? contentsMyviewCount = freezed,
    Object? contentsAlarmCheck = freezed,
    Object? boardInfo = freezed,
    Object? shareInfo = freezed,
    Object? contentsComment = freezed,
    Object? contentsCreateDate = freezed,
    Object? contentsUpdateDate = freezed,
  }) {
    return _then(_ContentsDto(
      contentsId: contentsId == freezed
          ? _value.contentsId
          : contentsId // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ContentsInfoDto,
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      contentsAllviewCount: contentsAllviewCount == freezed
          ? _value.contentsAllviewCount
          : contentsAllviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      contentsMyviewCount: contentsMyviewCount == freezed
          ? _value.contentsMyviewCount
          : contentsMyviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      contentsAlarmCheck: contentsAlarmCheck == freezed
          ? _value.contentsAlarmCheck
          : contentsAlarmCheck // ignore: cast_nullable_to_non_nullable
              as int,
      boardInfo: boardInfo == freezed
          ? _value.boardInfo
          : boardInfo // ignore: cast_nullable_to_non_nullable
              as BoardInfoDto?,
      shareInfo: shareInfo == freezed
          ? _value.shareInfo
          : shareInfo // ignore: cast_nullable_to_non_nullable
              as ShareDto?,
      contentsComment: contentsComment == freezed
          ? _value.contentsComment
          : contentsComment // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsCreateDate: contentsCreateDate == freezed
          ? _value.contentsCreateDate
          : contentsCreateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contentsUpdateDate: contentsUpdateDate == freezed
          ? _value.contentsUpdateDate
          : contentsUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ContentsDto extends _ContentsDto {
  _$_ContentsDto(
      {@JsonKey(name: 'contents_id')
          this.contentsId,
      required this.info,
      @JsonKey(name: 'user_info')
          required this.userInfo,
      @JsonKey(name: 'contents_allview_count')
          required this.contentsAllviewCount,
      @JsonKey(name: 'contents_myview_count')
          required this.contentsMyviewCount,
      @JsonKey(name: 'contents_alarm_check')
          required this.contentsAlarmCheck,
      @JsonKey(name: 'board_info')
          this.boardInfo,
      @JsonKey(name: 'share')
          this.shareInfo,
      @JsonKey(name: 'contents_comment')
          this.contentsComment,
      @JsonKey(name: 'contents_create_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.contentsCreateDate,
      @JsonKey(name: 'contents_upt_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.contentsUpdateDate})
      : super._();

  factory _$_ContentsDto.fromJson(Map<String, dynamic> json) =>
      _$$_ContentsDtoFromJson(json);

  @override
  @JsonKey(name: 'contents_id')
  final String? contentsId;
  @override
  final ContentsInfoDto info;
  @override
  @JsonKey(name: 'user_info')
  final ProfileDto userInfo;
  @override
  @JsonKey(name: 'contents_allview_count')
  final int contentsAllviewCount;
  @override
  @JsonKey(name: 'contents_myview_count')
  final int contentsMyviewCount;
  @override
  @JsonKey(name: 'contents_alarm_check')
  final int contentsAlarmCheck;
  @override
  @JsonKey(name: 'board_info')
  final BoardInfoDto? boardInfo;
  @override
  @JsonKey(name: 'share')
  final ShareDto? shareInfo;
  @override
  @JsonKey(name: 'contents_comment')
  final String? contentsComment;
  @override
  @JsonKey(
      name: 'contents_create_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  final DateTime contentsCreateDate;
  @override
  @JsonKey(
      name: 'contents_upt_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  final DateTime contentsUpdateDate;

  @override
  String toString() {
    return 'ContentsDto(contentsId: $contentsId, info: $info, userInfo: $userInfo, contentsAllviewCount: $contentsAllviewCount, contentsMyviewCount: $contentsMyviewCount, contentsAlarmCheck: $contentsAlarmCheck, boardInfo: $boardInfo, shareInfo: $shareInfo, contentsComment: $contentsComment, contentsCreateDate: $contentsCreateDate, contentsUpdateDate: $contentsUpdateDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContentsDto &&
            (identical(other.contentsId, contentsId) ||
                const DeepCollectionEquality()
                    .equals(other.contentsId, contentsId)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.userInfo, userInfo) ||
                const DeepCollectionEquality()
                    .equals(other.userInfo, userInfo)) &&
            (identical(other.contentsAllviewCount, contentsAllviewCount) ||
                const DeepCollectionEquality().equals(
                    other.contentsAllviewCount, contentsAllviewCount)) &&
            (identical(other.contentsMyviewCount, contentsMyviewCount) ||
                const DeepCollectionEquality()
                    .equals(other.contentsMyviewCount, contentsMyviewCount)) &&
            (identical(other.contentsAlarmCheck, contentsAlarmCheck) ||
                const DeepCollectionEquality()
                    .equals(other.contentsAlarmCheck, contentsAlarmCheck)) &&
            (identical(other.boardInfo, boardInfo) ||
                const DeepCollectionEquality()
                    .equals(other.boardInfo, boardInfo)) &&
            (identical(other.shareInfo, shareInfo) ||
                const DeepCollectionEquality()
                    .equals(other.shareInfo, shareInfo)) &&
            (identical(other.contentsComment, contentsComment) ||
                const DeepCollectionEquality()
                    .equals(other.contentsComment, contentsComment)) &&
            (identical(other.contentsCreateDate, contentsCreateDate) ||
                const DeepCollectionEquality()
                    .equals(other.contentsCreateDate, contentsCreateDate)) &&
            (identical(other.contentsUpdateDate, contentsUpdateDate) ||
                const DeepCollectionEquality()
                    .equals(other.contentsUpdateDate, contentsUpdateDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contentsId) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(userInfo) ^
      const DeepCollectionEquality().hash(contentsAllviewCount) ^
      const DeepCollectionEquality().hash(contentsMyviewCount) ^
      const DeepCollectionEquality().hash(contentsAlarmCheck) ^
      const DeepCollectionEquality().hash(boardInfo) ^
      const DeepCollectionEquality().hash(shareInfo) ^
      const DeepCollectionEquality().hash(contentsComment) ^
      const DeepCollectionEquality().hash(contentsCreateDate) ^
      const DeepCollectionEquality().hash(contentsUpdateDate);

  @JsonKey(ignore: true)
  @override
  _$ContentsDtoCopyWith<_ContentsDto> get copyWith =>
      __$ContentsDtoCopyWithImpl<_ContentsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentsDtoToJson(this);
  }
}

abstract class _ContentsDto extends ContentsDto {
  factory _ContentsDto(
      {@JsonKey(name: 'contents_id')
          String? contentsId,
      required ContentsInfoDto info,
      @JsonKey(name: 'user_info')
          required ProfileDto userInfo,
      @JsonKey(name: 'contents_allview_count')
          required int contentsAllviewCount,
      @JsonKey(name: 'contents_myview_count')
          required int contentsMyviewCount,
      @JsonKey(name: 'contents_alarm_check')
          required int contentsAlarmCheck,
      @JsonKey(name: 'board_info')
          BoardInfoDto? boardInfo,
      @JsonKey(name: 'share')
          ShareDto? shareInfo,
      @JsonKey(name: 'contents_comment')
          String? contentsComment,
      @JsonKey(name: 'contents_create_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime contentsCreateDate,
      @JsonKey(name: 'contents_upt_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime contentsUpdateDate}) = _$_ContentsDto;
  _ContentsDto._() : super._();

  factory _ContentsDto.fromJson(Map<String, dynamic> json) =
      _$_ContentsDto.fromJson;

  @override
  @JsonKey(name: 'contents_id')
  String? get contentsId => throw _privateConstructorUsedError;
  @override
  ContentsInfoDto get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_info')
  ProfileDto get userInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'contents_allview_count')
  int get contentsAllviewCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'contents_myview_count')
  int get contentsMyviewCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'contents_alarm_check')
  int get contentsAlarmCheck => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'board_info')
  BoardInfoDto? get boardInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'share')
  ShareDto? get shareInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'contents_comment')
  String? get contentsComment => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: 'contents_create_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get contentsCreateDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: 'contents_upt_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get contentsUpdateDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContentsDtoCopyWith<_ContentsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ContentsInfoDto _$ContentsInfoDtoFromJson(Map<String, dynamic> json) {
  return _ContentsInfoDto.fromJson(json);
}

/// @nodoc
class _$ContentsInfoDtoTearOff {
  const _$ContentsInfoDtoTearOff();

  _ContentsInfoDto call(
      {@JsonKey(name: 'contents_id')
          String? contentsId,
      @JsonKey(name: 'contents_title')
          String? contentsTitle,
      @JsonKey(name: 'contents_url')
          String? contentsUrl,
      @JsonKey(name: 'contents_images')
          String? contentsImages,
      @JsonKey(name: 'contents_description')
          String? contentsDescription,
      @JsonKey(name: 'contents_comment')
          String? contentsComment,
      @JsonKey(name: 'contents_unique_link')
          String? contentsUniqueLink,
      @JsonKey(name: 'contents_fixed')
          bool? contentsFixed,
      @JsonKey(name: 'contents_type')
          String? contentsType,
      String? thumbnails,
      @JsonKey(name: 'contents_create_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime contentsCreateDate,
      @JsonKey(name: 'contents_upt_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime contentsUpdateDate}) {
    return _ContentsInfoDto(
      contentsId: contentsId,
      contentsTitle: contentsTitle,
      contentsUrl: contentsUrl,
      contentsImages: contentsImages,
      contentsDescription: contentsDescription,
      contentsComment: contentsComment,
      contentsUniqueLink: contentsUniqueLink,
      contentsFixed: contentsFixed,
      contentsType: contentsType,
      thumbnails: thumbnails,
      contentsCreateDate: contentsCreateDate,
      contentsUpdateDate: contentsUpdateDate,
    );
  }

  ContentsInfoDto fromJson(Map<String, Object> json) {
    return ContentsInfoDto.fromJson(json);
  }
}

/// @nodoc
const $ContentsInfoDto = _$ContentsInfoDtoTearOff();

/// @nodoc
mixin _$ContentsInfoDto {
  @JsonKey(name: 'contents_id')
  String? get contentsId => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents_title')
  String? get contentsTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents_url')
  String? get contentsUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents_images')
  String? get contentsImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents_description')
  String? get contentsDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents_comment')
  String? get contentsComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents_unique_link')
  String? get contentsUniqueLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents_fixed')
  bool? get contentsFixed => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents_type')
  String? get contentsType => throw _privateConstructorUsedError;
  String? get thumbnails => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'contents_create_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get contentsCreateDate => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'contents_upt_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get contentsUpdateDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentsInfoDtoCopyWith<ContentsInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentsInfoDtoCopyWith<$Res> {
  factory $ContentsInfoDtoCopyWith(
          ContentsInfoDto value, $Res Function(ContentsInfoDto) then) =
      _$ContentsInfoDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'contents_id')
          String? contentsId,
      @JsonKey(name: 'contents_title')
          String? contentsTitle,
      @JsonKey(name: 'contents_url')
          String? contentsUrl,
      @JsonKey(name: 'contents_images')
          String? contentsImages,
      @JsonKey(name: 'contents_description')
          String? contentsDescription,
      @JsonKey(name: 'contents_comment')
          String? contentsComment,
      @JsonKey(name: 'contents_unique_link')
          String? contentsUniqueLink,
      @JsonKey(name: 'contents_fixed')
          bool? contentsFixed,
      @JsonKey(name: 'contents_type')
          String? contentsType,
      String? thumbnails,
      @JsonKey(name: 'contents_create_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime contentsCreateDate,
      @JsonKey(name: 'contents_upt_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime contentsUpdateDate});
}

/// @nodoc
class _$ContentsInfoDtoCopyWithImpl<$Res>
    implements $ContentsInfoDtoCopyWith<$Res> {
  _$ContentsInfoDtoCopyWithImpl(this._value, this._then);

  final ContentsInfoDto _value;
  // ignore: unused_field
  final $Res Function(ContentsInfoDto) _then;

  @override
  $Res call({
    Object? contentsId = freezed,
    Object? contentsTitle = freezed,
    Object? contentsUrl = freezed,
    Object? contentsImages = freezed,
    Object? contentsDescription = freezed,
    Object? contentsComment = freezed,
    Object? contentsUniqueLink = freezed,
    Object? contentsFixed = freezed,
    Object? contentsType = freezed,
    Object? thumbnails = freezed,
    Object? contentsCreateDate = freezed,
    Object? contentsUpdateDate = freezed,
  }) {
    return _then(_value.copyWith(
      contentsId: contentsId == freezed
          ? _value.contentsId
          : contentsId // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsTitle: contentsTitle == freezed
          ? _value.contentsTitle
          : contentsTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsUrl: contentsUrl == freezed
          ? _value.contentsUrl
          : contentsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsImages: contentsImages == freezed
          ? _value.contentsImages
          : contentsImages // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsDescription: contentsDescription == freezed
          ? _value.contentsDescription
          : contentsDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsComment: contentsComment == freezed
          ? _value.contentsComment
          : contentsComment // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsUniqueLink: contentsUniqueLink == freezed
          ? _value.contentsUniqueLink
          : contentsUniqueLink // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsFixed: contentsFixed == freezed
          ? _value.contentsFixed
          : contentsFixed // ignore: cast_nullable_to_non_nullable
              as bool?,
      contentsType: contentsType == freezed
          ? _value.contentsType
          : contentsType // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsCreateDate: contentsCreateDate == freezed
          ? _value.contentsCreateDate
          : contentsCreateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contentsUpdateDate: contentsUpdateDate == freezed
          ? _value.contentsUpdateDate
          : contentsUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ContentsInfoDtoCopyWith<$Res>
    implements $ContentsInfoDtoCopyWith<$Res> {
  factory _$ContentsInfoDtoCopyWith(
          _ContentsInfoDto value, $Res Function(_ContentsInfoDto) then) =
      __$ContentsInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'contents_id')
          String? contentsId,
      @JsonKey(name: 'contents_title')
          String? contentsTitle,
      @JsonKey(name: 'contents_url')
          String? contentsUrl,
      @JsonKey(name: 'contents_images')
          String? contentsImages,
      @JsonKey(name: 'contents_description')
          String? contentsDescription,
      @JsonKey(name: 'contents_comment')
          String? contentsComment,
      @JsonKey(name: 'contents_unique_link')
          String? contentsUniqueLink,
      @JsonKey(name: 'contents_fixed')
          bool? contentsFixed,
      @JsonKey(name: 'contents_type')
          String? contentsType,
      String? thumbnails,
      @JsonKey(name: 'contents_create_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime contentsCreateDate,
      @JsonKey(name: 'contents_upt_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime contentsUpdateDate});
}

/// @nodoc
class __$ContentsInfoDtoCopyWithImpl<$Res>
    extends _$ContentsInfoDtoCopyWithImpl<$Res>
    implements _$ContentsInfoDtoCopyWith<$Res> {
  __$ContentsInfoDtoCopyWithImpl(
      _ContentsInfoDto _value, $Res Function(_ContentsInfoDto) _then)
      : super(_value, (v) => _then(v as _ContentsInfoDto));

  @override
  _ContentsInfoDto get _value => super._value as _ContentsInfoDto;

  @override
  $Res call({
    Object? contentsId = freezed,
    Object? contentsTitle = freezed,
    Object? contentsUrl = freezed,
    Object? contentsImages = freezed,
    Object? contentsDescription = freezed,
    Object? contentsComment = freezed,
    Object? contentsUniqueLink = freezed,
    Object? contentsFixed = freezed,
    Object? contentsType = freezed,
    Object? thumbnails = freezed,
    Object? contentsCreateDate = freezed,
    Object? contentsUpdateDate = freezed,
  }) {
    return _then(_ContentsInfoDto(
      contentsId: contentsId == freezed
          ? _value.contentsId
          : contentsId // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsTitle: contentsTitle == freezed
          ? _value.contentsTitle
          : contentsTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsUrl: contentsUrl == freezed
          ? _value.contentsUrl
          : contentsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsImages: contentsImages == freezed
          ? _value.contentsImages
          : contentsImages // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsDescription: contentsDescription == freezed
          ? _value.contentsDescription
          : contentsDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsComment: contentsComment == freezed
          ? _value.contentsComment
          : contentsComment // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsUniqueLink: contentsUniqueLink == freezed
          ? _value.contentsUniqueLink
          : contentsUniqueLink // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsFixed: contentsFixed == freezed
          ? _value.contentsFixed
          : contentsFixed // ignore: cast_nullable_to_non_nullable
              as bool?,
      contentsType: contentsType == freezed
          ? _value.contentsType
          : contentsType // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsCreateDate: contentsCreateDate == freezed
          ? _value.contentsCreateDate
          : contentsCreateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contentsUpdateDate: contentsUpdateDate == freezed
          ? _value.contentsUpdateDate
          : contentsUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ContentsInfoDto extends _ContentsInfoDto {
  _$_ContentsInfoDto(
      {@JsonKey(name: 'contents_id')
          this.contentsId,
      @JsonKey(name: 'contents_title')
          this.contentsTitle,
      @JsonKey(name: 'contents_url')
          this.contentsUrl,
      @JsonKey(name: 'contents_images')
          this.contentsImages,
      @JsonKey(name: 'contents_description')
          this.contentsDescription,
      @JsonKey(name: 'contents_comment')
          this.contentsComment,
      @JsonKey(name: 'contents_unique_link')
          this.contentsUniqueLink,
      @JsonKey(name: 'contents_fixed')
          this.contentsFixed,
      @JsonKey(name: 'contents_type')
          this.contentsType,
      this.thumbnails,
      @JsonKey(name: 'contents_create_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.contentsCreateDate,
      @JsonKey(name: 'contents_upt_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.contentsUpdateDate})
      : super._();

  factory _$_ContentsInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_ContentsInfoDtoFromJson(json);

  @override
  @JsonKey(name: 'contents_id')
  final String? contentsId;
  @override
  @JsonKey(name: 'contents_title')
  final String? contentsTitle;
  @override
  @JsonKey(name: 'contents_url')
  final String? contentsUrl;
  @override
  @JsonKey(name: 'contents_images')
  final String? contentsImages;
  @override
  @JsonKey(name: 'contents_description')
  final String? contentsDescription;
  @override
  @JsonKey(name: 'contents_comment')
  final String? contentsComment;
  @override
  @JsonKey(name: 'contents_unique_link')
  final String? contentsUniqueLink;
  @override
  @JsonKey(name: 'contents_fixed')
  final bool? contentsFixed;
  @override
  @JsonKey(name: 'contents_type')
  final String? contentsType;
  @override
  final String? thumbnails;
  @override
  @JsonKey(
      name: 'contents_create_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  final DateTime contentsCreateDate;
  @override
  @JsonKey(
      name: 'contents_upt_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  final DateTime contentsUpdateDate;

  @override
  String toString() {
    return 'ContentsInfoDto(contentsId: $contentsId, contentsTitle: $contentsTitle, contentsUrl: $contentsUrl, contentsImages: $contentsImages, contentsDescription: $contentsDescription, contentsComment: $contentsComment, contentsUniqueLink: $contentsUniqueLink, contentsFixed: $contentsFixed, contentsType: $contentsType, thumbnails: $thumbnails, contentsCreateDate: $contentsCreateDate, contentsUpdateDate: $contentsUpdateDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContentsInfoDto &&
            (identical(other.contentsId, contentsId) ||
                const DeepCollectionEquality()
                    .equals(other.contentsId, contentsId)) &&
            (identical(other.contentsTitle, contentsTitle) ||
                const DeepCollectionEquality()
                    .equals(other.contentsTitle, contentsTitle)) &&
            (identical(other.contentsUrl, contentsUrl) ||
                const DeepCollectionEquality()
                    .equals(other.contentsUrl, contentsUrl)) &&
            (identical(other.contentsImages, contentsImages) ||
                const DeepCollectionEquality()
                    .equals(other.contentsImages, contentsImages)) &&
            (identical(other.contentsDescription, contentsDescription) ||
                const DeepCollectionEquality()
                    .equals(other.contentsDescription, contentsDescription)) &&
            (identical(other.contentsComment, contentsComment) ||
                const DeepCollectionEquality()
                    .equals(other.contentsComment, contentsComment)) &&
            (identical(other.contentsUniqueLink, contentsUniqueLink) ||
                const DeepCollectionEquality()
                    .equals(other.contentsUniqueLink, contentsUniqueLink)) &&
            (identical(other.contentsFixed, contentsFixed) ||
                const DeepCollectionEquality()
                    .equals(other.contentsFixed, contentsFixed)) &&
            (identical(other.contentsType, contentsType) ||
                const DeepCollectionEquality()
                    .equals(other.contentsType, contentsType)) &&
            (identical(other.thumbnails, thumbnails) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnails, thumbnails)) &&
            (identical(other.contentsCreateDate, contentsCreateDate) ||
                const DeepCollectionEquality()
                    .equals(other.contentsCreateDate, contentsCreateDate)) &&
            (identical(other.contentsUpdateDate, contentsUpdateDate) ||
                const DeepCollectionEquality()
                    .equals(other.contentsUpdateDate, contentsUpdateDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contentsId) ^
      const DeepCollectionEquality().hash(contentsTitle) ^
      const DeepCollectionEquality().hash(contentsUrl) ^
      const DeepCollectionEquality().hash(contentsImages) ^
      const DeepCollectionEquality().hash(contentsDescription) ^
      const DeepCollectionEquality().hash(contentsComment) ^
      const DeepCollectionEquality().hash(contentsUniqueLink) ^
      const DeepCollectionEquality().hash(contentsFixed) ^
      const DeepCollectionEquality().hash(contentsType) ^
      const DeepCollectionEquality().hash(thumbnails) ^
      const DeepCollectionEquality().hash(contentsCreateDate) ^
      const DeepCollectionEquality().hash(contentsUpdateDate);

  @JsonKey(ignore: true)
  @override
  _$ContentsInfoDtoCopyWith<_ContentsInfoDto> get copyWith =>
      __$ContentsInfoDtoCopyWithImpl<_ContentsInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentsInfoDtoToJson(this);
  }
}

abstract class _ContentsInfoDto extends ContentsInfoDto {
  factory _ContentsInfoDto(
      {@JsonKey(name: 'contents_id')
          String? contentsId,
      @JsonKey(name: 'contents_title')
          String? contentsTitle,
      @JsonKey(name: 'contents_url')
          String? contentsUrl,
      @JsonKey(name: 'contents_images')
          String? contentsImages,
      @JsonKey(name: 'contents_description')
          String? contentsDescription,
      @JsonKey(name: 'contents_comment')
          String? contentsComment,
      @JsonKey(name: 'contents_unique_link')
          String? contentsUniqueLink,
      @JsonKey(name: 'contents_fixed')
          bool? contentsFixed,
      @JsonKey(name: 'contents_type')
          String? contentsType,
      String? thumbnails,
      @JsonKey(name: 'contents_create_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime contentsCreateDate,
      @JsonKey(name: 'contents_upt_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime contentsUpdateDate}) = _$_ContentsInfoDto;
  _ContentsInfoDto._() : super._();

  factory _ContentsInfoDto.fromJson(Map<String, dynamic> json) =
      _$_ContentsInfoDto.fromJson;

  @override
  @JsonKey(name: 'contents_id')
  String? get contentsId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'contents_title')
  String? get contentsTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'contents_url')
  String? get contentsUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'contents_images')
  String? get contentsImages => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'contents_description')
  String? get contentsDescription => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'contents_comment')
  String? get contentsComment => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'contents_unique_link')
  String? get contentsUniqueLink => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'contents_fixed')
  bool? get contentsFixed => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'contents_type')
  String? get contentsType => throw _privateConstructorUsedError;
  @override
  String? get thumbnails => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: 'contents_create_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get contentsCreateDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: 'contents_upt_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get contentsUpdateDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContentsInfoDtoCopyWith<_ContentsInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
