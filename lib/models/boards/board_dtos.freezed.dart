// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'board_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoardDto _$BoardDtoFromJson(Map<String, dynamic> json) {
  return _BoardDto.fromJson(json);
}

/// @nodoc
class _$BoardDtoTearOff {
  const _$BoardDtoTearOff();

  _BoardDto call(
      {@JsonKey(name: 'board_id')
          String? boardId,
      required BoardInfoDto info,
      @JsonKey(name: 'board_creator')
          required ProfileDto boardCreator,
      @JsonKey(name: 'share')
          ShareDto? shareInfo,
      @JsonKey(name: 'share_check')
          required bool shareCheck,
      @JsonKey(name: 'board_comment')
          List<dynamic>? boardComment,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime registerDate}) {
    return _BoardDto(
      boardId: boardId,
      info: info,
      boardCreator: boardCreator,
      shareInfo: shareInfo,
      shareCheck: shareCheck,
      boardComment: boardComment,
      registerDate: registerDate,
    );
  }

  BoardDto fromJson(Map<String, Object> json) {
    return BoardDto.fromJson(json);
  }
}

/// @nodoc
const $BoardDto = _$BoardDtoTearOff();

/// @nodoc
mixin _$BoardDto {
  @JsonKey(name: 'board_id')
  String? get boardId => throw _privateConstructorUsedError;
  BoardInfoDto get info => throw _privateConstructorUsedError;
  @JsonKey(name: 'board_creator')
  ProfileDto get boardCreator => throw _privateConstructorUsedError;
  @JsonKey(name: 'share')
  ShareDto? get shareInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'share_check')
  bool get shareCheck => throw _privateConstructorUsedError;
  @JsonKey(name: 'board_comment')
  List<dynamic>? get boardComment => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get registerDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardDtoCopyWith<BoardDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardDtoCopyWith<$Res> {
  factory $BoardDtoCopyWith(BoardDto value, $Res Function(BoardDto) then) =
      _$BoardDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'board_id')
          String? boardId,
      BoardInfoDto info,
      @JsonKey(name: 'board_creator')
          ProfileDto boardCreator,
      @JsonKey(name: 'share')
          ShareDto? shareInfo,
      @JsonKey(name: 'share_check')
          bool shareCheck,
      @JsonKey(name: 'board_comment')
          List<dynamic>? boardComment,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime registerDate});

  $BoardInfoDtoCopyWith<$Res> get info;
  $ProfileDtoCopyWith<$Res> get boardCreator;
  $ShareDtoCopyWith<$Res>? get shareInfo;
}

/// @nodoc
class _$BoardDtoCopyWithImpl<$Res> implements $BoardDtoCopyWith<$Res> {
  _$BoardDtoCopyWithImpl(this._value, this._then);

  final BoardDto _value;
  // ignore: unused_field
  final $Res Function(BoardDto) _then;

  @override
  $Res call({
    Object? boardId = freezed,
    Object? info = freezed,
    Object? boardCreator = freezed,
    Object? shareInfo = freezed,
    Object? shareCheck = freezed,
    Object? boardComment = freezed,
    Object? registerDate = freezed,
  }) {
    return _then(_value.copyWith(
      boardId: boardId == freezed
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BoardInfoDto,
      boardCreator: boardCreator == freezed
          ? _value.boardCreator
          : boardCreator // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      shareInfo: shareInfo == freezed
          ? _value.shareInfo
          : shareInfo // ignore: cast_nullable_to_non_nullable
              as ShareDto?,
      shareCheck: shareCheck == freezed
          ? _value.shareCheck
          : shareCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      boardComment: boardComment == freezed
          ? _value.boardComment
          : boardComment // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      registerDate: registerDate == freezed
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $BoardInfoDtoCopyWith<$Res> get info {
    return $BoardInfoDtoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $ProfileDtoCopyWith<$Res> get boardCreator {
    return $ProfileDtoCopyWith<$Res>(_value.boardCreator, (value) {
      return _then(_value.copyWith(boardCreator: value));
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
abstract class _$BoardDtoCopyWith<$Res> implements $BoardDtoCopyWith<$Res> {
  factory _$BoardDtoCopyWith(_BoardDto value, $Res Function(_BoardDto) then) =
      __$BoardDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'board_id')
          String? boardId,
      BoardInfoDto info,
      @JsonKey(name: 'board_creator')
          ProfileDto boardCreator,
      @JsonKey(name: 'share')
          ShareDto? shareInfo,
      @JsonKey(name: 'share_check')
          bool shareCheck,
      @JsonKey(name: 'board_comment')
          List<dynamic>? boardComment,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime registerDate});

  @override
  $BoardInfoDtoCopyWith<$Res> get info;
  @override
  $ProfileDtoCopyWith<$Res> get boardCreator;
  @override
  $ShareDtoCopyWith<$Res>? get shareInfo;
}

/// @nodoc
class __$BoardDtoCopyWithImpl<$Res> extends _$BoardDtoCopyWithImpl<$Res>
    implements _$BoardDtoCopyWith<$Res> {
  __$BoardDtoCopyWithImpl(_BoardDto _value, $Res Function(_BoardDto) _then)
      : super(_value, (v) => _then(v as _BoardDto));

  @override
  _BoardDto get _value => super._value as _BoardDto;

  @override
  $Res call({
    Object? boardId = freezed,
    Object? info = freezed,
    Object? boardCreator = freezed,
    Object? shareInfo = freezed,
    Object? shareCheck = freezed,
    Object? boardComment = freezed,
    Object? registerDate = freezed,
  }) {
    return _then(_BoardDto(
      boardId: boardId == freezed
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BoardInfoDto,
      boardCreator: boardCreator == freezed
          ? _value.boardCreator
          : boardCreator // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      shareInfo: shareInfo == freezed
          ? _value.shareInfo
          : shareInfo // ignore: cast_nullable_to_non_nullable
              as ShareDto?,
      shareCheck: shareCheck == freezed
          ? _value.shareCheck
          : shareCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      boardComment: boardComment == freezed
          ? _value.boardComment
          : boardComment // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      registerDate: registerDate == freezed
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BoardDto extends _BoardDto {
  _$_BoardDto(
      {@JsonKey(name: 'board_id')
          this.boardId,
      required this.info,
      @JsonKey(name: 'board_creator')
          required this.boardCreator,
      @JsonKey(name: 'share')
          this.shareInfo,
      @JsonKey(name: 'share_check')
          required this.shareCheck,
      @JsonKey(name: 'board_comment')
          this.boardComment,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.registerDate})
      : super._();

  factory _$_BoardDto.fromJson(Map<String, dynamic> json) =>
      _$$_BoardDtoFromJson(json);

  @override
  @JsonKey(name: 'board_id')
  final String? boardId;
  @override
  final BoardInfoDto info;
  @override
  @JsonKey(name: 'board_creator')
  final ProfileDto boardCreator;
  @override
  @JsonKey(name: 'share')
  final ShareDto? shareInfo;
  @override
  @JsonKey(name: 'share_check')
  final bool shareCheck;
  @override
  @JsonKey(name: 'board_comment')
  final List<dynamic>? boardComment;
  @override
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  final DateTime registerDate;

  @override
  String toString() {
    return 'BoardDto(boardId: $boardId, info: $info, boardCreator: $boardCreator, shareInfo: $shareInfo, shareCheck: $shareCheck, boardComment: $boardComment, registerDate: $registerDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoardDto &&
            (identical(other.boardId, boardId) ||
                const DeepCollectionEquality()
                    .equals(other.boardId, boardId)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.boardCreator, boardCreator) ||
                const DeepCollectionEquality()
                    .equals(other.boardCreator, boardCreator)) &&
            (identical(other.shareInfo, shareInfo) ||
                const DeepCollectionEquality()
                    .equals(other.shareInfo, shareInfo)) &&
            (identical(other.shareCheck, shareCheck) ||
                const DeepCollectionEquality()
                    .equals(other.shareCheck, shareCheck)) &&
            (identical(other.boardComment, boardComment) ||
                const DeepCollectionEquality()
                    .equals(other.boardComment, boardComment)) &&
            (identical(other.registerDate, registerDate) ||
                const DeepCollectionEquality()
                    .equals(other.registerDate, registerDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(boardId) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(boardCreator) ^
      const DeepCollectionEquality().hash(shareInfo) ^
      const DeepCollectionEquality().hash(shareCheck) ^
      const DeepCollectionEquality().hash(boardComment) ^
      const DeepCollectionEquality().hash(registerDate);

  @JsonKey(ignore: true)
  @override
  _$BoardDtoCopyWith<_BoardDto> get copyWith =>
      __$BoardDtoCopyWithImpl<_BoardDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoardDtoToJson(this);
  }
}

abstract class _BoardDto extends BoardDto {
  factory _BoardDto(
      {@JsonKey(name: 'board_id')
          String? boardId,
      required BoardInfoDto info,
      @JsonKey(name: 'board_creator')
          required ProfileDto boardCreator,
      @JsonKey(name: 'share')
          ShareDto? shareInfo,
      @JsonKey(name: 'share_check')
          required bool shareCheck,
      @JsonKey(name: 'board_comment')
          List<dynamic>? boardComment,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime registerDate}) = _$_BoardDto;
  _BoardDto._() : super._();

  factory _BoardDto.fromJson(Map<String, dynamic> json) = _$_BoardDto.fromJson;

  @override
  @JsonKey(name: 'board_id')
  String? get boardId => throw _privateConstructorUsedError;
  @override
  BoardInfoDto get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'board_creator')
  ProfileDto get boardCreator => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'share')
  ShareDto? get shareInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'share_check')
  bool get shareCheck => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'board_comment')
  List<dynamic>? get boardComment => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get registerDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoardDtoCopyWith<_BoardDto> get copyWith =>
      throw _privateConstructorUsedError;
}

BoardInfoDto _$BoardInfoDtoFromJson(Map<String, dynamic> json) {
  return _BoardInfoDto.fromJson(json);
}

/// @nodoc
class _$BoardInfoDtoTearOff {
  const _$BoardInfoDtoTearOff();

  _BoardInfoDto call(
      {@JsonKey(name: 'board_id')
          String? boardId,
      @JsonKey(name: 'is_fixed')
          bool isFixed = false,
      @JsonKey(name: 'board_name')
          required String boardName,
      @JsonKey(name: 'board_color')
          required String boardColor,
      @JsonKey(name: 'board_badge')
          required String boardBadge,
      @JsonKey(name: 'board_unique_link')
          String? boardUnquieLink,
      @JsonKey(name: 'contents_count')
          required int contentsCount,
      @JsonKey(name: 'share_check')
          required bool shareCheck,
      @JsonKey(name: 'share_count')
          int? shareCount,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime registerDate}) {
    return _BoardInfoDto(
      boardId: boardId,
      isFixed: isFixed,
      boardName: boardName,
      boardColor: boardColor,
      boardBadge: boardBadge,
      boardUnquieLink: boardUnquieLink,
      contentsCount: contentsCount,
      shareCheck: shareCheck,
      shareCount: shareCount,
      registerDate: registerDate,
    );
  }

  BoardInfoDto fromJson(Map<String, Object> json) {
    return BoardInfoDto.fromJson(json);
  }
}

/// @nodoc
const $BoardInfoDto = _$BoardInfoDtoTearOff();

/// @nodoc
mixin _$BoardInfoDto {
  @JsonKey(name: 'board_id')
  String? get boardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fixed')
  bool get isFixed => throw _privateConstructorUsedError;
  @JsonKey(name: 'board_name')
  String get boardName => throw _privateConstructorUsedError;
  @JsonKey(name: 'board_color')
  String get boardColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'board_badge')
  String get boardBadge => throw _privateConstructorUsedError;
  @JsonKey(name: 'board_unique_link')
  String? get boardUnquieLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'contents_count')
  int get contentsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'share_check')
  bool get shareCheck => throw _privateConstructorUsedError;
  @JsonKey(name: 'share_count')
  int? get shareCount => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get registerDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardInfoDtoCopyWith<BoardInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardInfoDtoCopyWith<$Res> {
  factory $BoardInfoDtoCopyWith(
          BoardInfoDto value, $Res Function(BoardInfoDto) then) =
      _$BoardInfoDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'board_id')
          String? boardId,
      @JsonKey(name: 'is_fixed')
          bool isFixed,
      @JsonKey(name: 'board_name')
          String boardName,
      @JsonKey(name: 'board_color')
          String boardColor,
      @JsonKey(name: 'board_badge')
          String boardBadge,
      @JsonKey(name: 'board_unique_link')
          String? boardUnquieLink,
      @JsonKey(name: 'contents_count')
          int contentsCount,
      @JsonKey(name: 'share_check')
          bool shareCheck,
      @JsonKey(name: 'share_count')
          int? shareCount,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime registerDate});
}

/// @nodoc
class _$BoardInfoDtoCopyWithImpl<$Res> implements $BoardInfoDtoCopyWith<$Res> {
  _$BoardInfoDtoCopyWithImpl(this._value, this._then);

  final BoardInfoDto _value;
  // ignore: unused_field
  final $Res Function(BoardInfoDto) _then;

  @override
  $Res call({
    Object? boardId = freezed,
    Object? isFixed = freezed,
    Object? boardName = freezed,
    Object? boardColor = freezed,
    Object? boardBadge = freezed,
    Object? boardUnquieLink = freezed,
    Object? contentsCount = freezed,
    Object? shareCheck = freezed,
    Object? shareCount = freezed,
    Object? registerDate = freezed,
  }) {
    return _then(_value.copyWith(
      boardId: boardId == freezed
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as String?,
      isFixed: isFixed == freezed
          ? _value.isFixed
          : isFixed // ignore: cast_nullable_to_non_nullable
              as bool,
      boardName: boardName == freezed
          ? _value.boardName
          : boardName // ignore: cast_nullable_to_non_nullable
              as String,
      boardColor: boardColor == freezed
          ? _value.boardColor
          : boardColor // ignore: cast_nullable_to_non_nullable
              as String,
      boardBadge: boardBadge == freezed
          ? _value.boardBadge
          : boardBadge // ignore: cast_nullable_to_non_nullable
              as String,
      boardUnquieLink: boardUnquieLink == freezed
          ? _value.boardUnquieLink
          : boardUnquieLink // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsCount: contentsCount == freezed
          ? _value.contentsCount
          : contentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      shareCheck: shareCheck == freezed
          ? _value.shareCheck
          : shareCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      shareCount: shareCount == freezed
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as int?,
      registerDate: registerDate == freezed
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$BoardInfoDtoCopyWith<$Res>
    implements $BoardInfoDtoCopyWith<$Res> {
  factory _$BoardInfoDtoCopyWith(
          _BoardInfoDto value, $Res Function(_BoardInfoDto) then) =
      __$BoardInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'board_id')
          String? boardId,
      @JsonKey(name: 'is_fixed')
          bool isFixed,
      @JsonKey(name: 'board_name')
          String boardName,
      @JsonKey(name: 'board_color')
          String boardColor,
      @JsonKey(name: 'board_badge')
          String boardBadge,
      @JsonKey(name: 'board_unique_link')
          String? boardUnquieLink,
      @JsonKey(name: 'contents_count')
          int contentsCount,
      @JsonKey(name: 'share_check')
          bool shareCheck,
      @JsonKey(name: 'share_count')
          int? shareCount,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime registerDate});
}

/// @nodoc
class __$BoardInfoDtoCopyWithImpl<$Res> extends _$BoardInfoDtoCopyWithImpl<$Res>
    implements _$BoardInfoDtoCopyWith<$Res> {
  __$BoardInfoDtoCopyWithImpl(
      _BoardInfoDto _value, $Res Function(_BoardInfoDto) _then)
      : super(_value, (v) => _then(v as _BoardInfoDto));

  @override
  _BoardInfoDto get _value => super._value as _BoardInfoDto;

  @override
  $Res call({
    Object? boardId = freezed,
    Object? isFixed = freezed,
    Object? boardName = freezed,
    Object? boardColor = freezed,
    Object? boardBadge = freezed,
    Object? boardUnquieLink = freezed,
    Object? contentsCount = freezed,
    Object? shareCheck = freezed,
    Object? shareCount = freezed,
    Object? registerDate = freezed,
  }) {
    return _then(_BoardInfoDto(
      boardId: boardId == freezed
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as String?,
      isFixed: isFixed == freezed
          ? _value.isFixed
          : isFixed // ignore: cast_nullable_to_non_nullable
              as bool,
      boardName: boardName == freezed
          ? _value.boardName
          : boardName // ignore: cast_nullable_to_non_nullable
              as String,
      boardColor: boardColor == freezed
          ? _value.boardColor
          : boardColor // ignore: cast_nullable_to_non_nullable
              as String,
      boardBadge: boardBadge == freezed
          ? _value.boardBadge
          : boardBadge // ignore: cast_nullable_to_non_nullable
              as String,
      boardUnquieLink: boardUnquieLink == freezed
          ? _value.boardUnquieLink
          : boardUnquieLink // ignore: cast_nullable_to_non_nullable
              as String?,
      contentsCount: contentsCount == freezed
          ? _value.contentsCount
          : contentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      shareCheck: shareCheck == freezed
          ? _value.shareCheck
          : shareCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      shareCount: shareCount == freezed
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as int?,
      registerDate: registerDate == freezed
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BoardInfoDto extends _BoardInfoDto {
  _$_BoardInfoDto(
      {@JsonKey(name: 'board_id')
          this.boardId,
      @JsonKey(name: 'is_fixed')
          this.isFixed = false,
      @JsonKey(name: 'board_name')
          required this.boardName,
      @JsonKey(name: 'board_color')
          required this.boardColor,
      @JsonKey(name: 'board_badge')
          required this.boardBadge,
      @JsonKey(name: 'board_unique_link')
          this.boardUnquieLink,
      @JsonKey(name: 'contents_count')
          required this.contentsCount,
      @JsonKey(name: 'share_check')
          required this.shareCheck,
      @JsonKey(name: 'share_count')
          this.shareCount,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.registerDate})
      : super._();

  factory _$_BoardInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_BoardInfoDtoFromJson(json);

  @override
  @JsonKey(name: 'board_id')
  final String? boardId;
  @override
  @JsonKey(name: 'is_fixed')
  final bool isFixed;
  @override
  @JsonKey(name: 'board_name')
  final String boardName;
  @override
  @JsonKey(name: 'board_color')
  final String boardColor;
  @override
  @JsonKey(name: 'board_badge')
  final String boardBadge;
  @override
  @JsonKey(name: 'board_unique_link')
  final String? boardUnquieLink;
  @override
  @JsonKey(name: 'contents_count')
  final int contentsCount;
  @override
  @JsonKey(name: 'share_check')
  final bool shareCheck;
  @override
  @JsonKey(name: 'share_count')
  final int? shareCount;
  @override
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  final DateTime registerDate;

  @override
  String toString() {
    return 'BoardInfoDto(boardId: $boardId, isFixed: $isFixed, boardName: $boardName, boardColor: $boardColor, boardBadge: $boardBadge, boardUnquieLink: $boardUnquieLink, contentsCount: $contentsCount, shareCheck: $shareCheck, shareCount: $shareCount, registerDate: $registerDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoardInfoDto &&
            (identical(other.boardId, boardId) ||
                const DeepCollectionEquality()
                    .equals(other.boardId, boardId)) &&
            (identical(other.isFixed, isFixed) ||
                const DeepCollectionEquality()
                    .equals(other.isFixed, isFixed)) &&
            (identical(other.boardName, boardName) ||
                const DeepCollectionEquality()
                    .equals(other.boardName, boardName)) &&
            (identical(other.boardColor, boardColor) ||
                const DeepCollectionEquality()
                    .equals(other.boardColor, boardColor)) &&
            (identical(other.boardBadge, boardBadge) ||
                const DeepCollectionEquality()
                    .equals(other.boardBadge, boardBadge)) &&
            (identical(other.boardUnquieLink, boardUnquieLink) ||
                const DeepCollectionEquality()
                    .equals(other.boardUnquieLink, boardUnquieLink)) &&
            (identical(other.contentsCount, contentsCount) ||
                const DeepCollectionEquality()
                    .equals(other.contentsCount, contentsCount)) &&
            (identical(other.shareCheck, shareCheck) ||
                const DeepCollectionEquality()
                    .equals(other.shareCheck, shareCheck)) &&
            (identical(other.shareCount, shareCount) ||
                const DeepCollectionEquality()
                    .equals(other.shareCount, shareCount)) &&
            (identical(other.registerDate, registerDate) ||
                const DeepCollectionEquality()
                    .equals(other.registerDate, registerDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(boardId) ^
      const DeepCollectionEquality().hash(isFixed) ^
      const DeepCollectionEquality().hash(boardName) ^
      const DeepCollectionEquality().hash(boardColor) ^
      const DeepCollectionEquality().hash(boardBadge) ^
      const DeepCollectionEquality().hash(boardUnquieLink) ^
      const DeepCollectionEquality().hash(contentsCount) ^
      const DeepCollectionEquality().hash(shareCheck) ^
      const DeepCollectionEquality().hash(shareCount) ^
      const DeepCollectionEquality().hash(registerDate);

  @JsonKey(ignore: true)
  @override
  _$BoardInfoDtoCopyWith<_BoardInfoDto> get copyWith =>
      __$BoardInfoDtoCopyWithImpl<_BoardInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoardInfoDtoToJson(this);
  }
}

abstract class _BoardInfoDto extends BoardInfoDto {
  factory _BoardInfoDto(
      {@JsonKey(name: 'board_id')
          String? boardId,
      @JsonKey(name: 'is_fixed')
          bool isFixed,
      @JsonKey(name: 'board_name')
          required String boardName,
      @JsonKey(name: 'board_color')
          required String boardColor,
      @JsonKey(name: 'board_badge')
          required String boardBadge,
      @JsonKey(name: 'board_unique_link')
          String? boardUnquieLink,
      @JsonKey(name: 'contents_count')
          required int contentsCount,
      @JsonKey(name: 'share_check')
          required bool shareCheck,
      @JsonKey(name: 'share_count')
          int? shareCount,
      @JsonKey(name: 'register_date', fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime registerDate}) = _$_BoardInfoDto;
  _BoardInfoDto._() : super._();

  factory _BoardInfoDto.fromJson(Map<String, dynamic> json) =
      _$_BoardInfoDto.fromJson;

  @override
  @JsonKey(name: 'board_id')
  String? get boardId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_fixed')
  bool get isFixed => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'board_name')
  String get boardName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'board_color')
  String get boardColor => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'board_badge')
  String get boardBadge => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'board_unique_link')
  String? get boardUnquieLink => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'contents_count')
  int get contentsCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'share_check')
  bool get shareCheck => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'share_count')
  int? get shareCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: 'register_date',
      fromJson: Fbconverter.fromJson,
      toJson: Fbconverter.toJson)
  DateTime get registerDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoardInfoDtoCopyWith<_BoardInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ShareDto _$ShareDtoFromJson(Map<String, dynamic> json) {
  return _ShareDto.fromJson(json);
}

/// @nodoc
class _$ShareDtoTearOff {
  const _$ShareDtoTearOff();

  _ShareDto call(
      {required ProfileDto sharer,
      @JsonKey(name: 'share_level') required int shareLevel}) {
    return _ShareDto(
      sharer: sharer,
      shareLevel: shareLevel,
    );
  }

  ShareDto fromJson(Map<String, Object> json) {
    return ShareDto.fromJson(json);
  }
}

/// @nodoc
const $ShareDto = _$ShareDtoTearOff();

/// @nodoc
mixin _$ShareDto {
  ProfileDto get sharer => throw _privateConstructorUsedError;
  @JsonKey(name: 'share_level')
  int get shareLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShareDtoCopyWith<ShareDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareDtoCopyWith<$Res> {
  factory $ShareDtoCopyWith(ShareDto value, $Res Function(ShareDto) then) =
      _$ShareDtoCopyWithImpl<$Res>;
  $Res call({ProfileDto sharer, @JsonKey(name: 'share_level') int shareLevel});

  $ProfileDtoCopyWith<$Res> get sharer;
}

/// @nodoc
class _$ShareDtoCopyWithImpl<$Res> implements $ShareDtoCopyWith<$Res> {
  _$ShareDtoCopyWithImpl(this._value, this._then);

  final ShareDto _value;
  // ignore: unused_field
  final $Res Function(ShareDto) _then;

  @override
  $Res call({
    Object? sharer = freezed,
    Object? shareLevel = freezed,
  }) {
    return _then(_value.copyWith(
      sharer: sharer == freezed
          ? _value.sharer
          : sharer // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      shareLevel: shareLevel == freezed
          ? _value.shareLevel
          : shareLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ProfileDtoCopyWith<$Res> get sharer {
    return $ProfileDtoCopyWith<$Res>(_value.sharer, (value) {
      return _then(_value.copyWith(sharer: value));
    });
  }
}

/// @nodoc
abstract class _$ShareDtoCopyWith<$Res> implements $ShareDtoCopyWith<$Res> {
  factory _$ShareDtoCopyWith(_ShareDto value, $Res Function(_ShareDto) then) =
      __$ShareDtoCopyWithImpl<$Res>;
  @override
  $Res call({ProfileDto sharer, @JsonKey(name: 'share_level') int shareLevel});

  @override
  $ProfileDtoCopyWith<$Res> get sharer;
}

/// @nodoc
class __$ShareDtoCopyWithImpl<$Res> extends _$ShareDtoCopyWithImpl<$Res>
    implements _$ShareDtoCopyWith<$Res> {
  __$ShareDtoCopyWithImpl(_ShareDto _value, $Res Function(_ShareDto) _then)
      : super(_value, (v) => _then(v as _ShareDto));

  @override
  _ShareDto get _value => super._value as _ShareDto;

  @override
  $Res call({
    Object? sharer = freezed,
    Object? shareLevel = freezed,
  }) {
    return _then(_ShareDto(
      sharer: sharer == freezed
          ? _value.sharer
          : sharer // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      shareLevel: shareLevel == freezed
          ? _value.shareLevel
          : shareLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ShareDto extends _ShareDto {
  _$_ShareDto(
      {required this.sharer,
      @JsonKey(name: 'share_level') required this.shareLevel})
      : super._();

  factory _$_ShareDto.fromJson(Map<String, dynamic> json) =>
      _$$_ShareDtoFromJson(json);

  @override
  final ProfileDto sharer;
  @override
  @JsonKey(name: 'share_level')
  final int shareLevel;

  @override
  String toString() {
    return 'ShareDto(sharer: $sharer, shareLevel: $shareLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShareDto &&
            (identical(other.sharer, sharer) ||
                const DeepCollectionEquality().equals(other.sharer, sharer)) &&
            (identical(other.shareLevel, shareLevel) ||
                const DeepCollectionEquality()
                    .equals(other.shareLevel, shareLevel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sharer) ^
      const DeepCollectionEquality().hash(shareLevel);

  @JsonKey(ignore: true)
  @override
  _$ShareDtoCopyWith<_ShareDto> get copyWith =>
      __$ShareDtoCopyWithImpl<_ShareDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShareDtoToJson(this);
  }
}

abstract class _ShareDto extends ShareDto {
  factory _ShareDto(
      {required ProfileDto sharer,
      @JsonKey(name: 'share_level') required int shareLevel}) = _$_ShareDto;
  _ShareDto._() : super._();

  factory _ShareDto.fromJson(Map<String, dynamic> json) = _$_ShareDto.fromJson;

  @override
  ProfileDto get sharer => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'share_level')
  int get shareLevel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShareDtoCopyWith<_ShareDto> get copyWith =>
      throw _privateConstructorUsedError;
}
