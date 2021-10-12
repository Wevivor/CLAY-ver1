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
      {String? id,
      required BoardInfoDto info,
      required ProfileDto creator,
      ShareDto? shareInfo,
      required bool isShare,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) {
    return _BoardDto(
      id: id,
      info: info,
      creator: creator,
      shareInfo: shareInfo,
      isShare: isShare,
      dtCreated: dtCreated,
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
  String? get id => throw _privateConstructorUsedError;
  BoardInfoDto get info => throw _privateConstructorUsedError;
  ProfileDto get creator => throw _privateConstructorUsedError;
  ShareDto? get shareInfo => throw _privateConstructorUsedError;
  bool get isShare => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;

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
      {String? id,
      BoardInfoDto info,
      ProfileDto creator,
      ShareDto? shareInfo,
      bool isShare,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});

  $BoardInfoDtoCopyWith<$Res> get info;
  $ProfileDtoCopyWith<$Res> get creator;
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
    Object? id = freezed,
    Object? info = freezed,
    Object? creator = freezed,
    Object? shareInfo = freezed,
    Object? isShare = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BoardInfoDto,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      shareInfo: shareInfo == freezed
          ? _value.shareInfo
          : shareInfo // ignore: cast_nullable_to_non_nullable
              as ShareDto?,
      isShare: isShare == freezed
          ? _value.isShare
          : isShare // ignore: cast_nullable_to_non_nullable
              as bool,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
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
  $ProfileDtoCopyWith<$Res> get creator {
    return $ProfileDtoCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value));
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
      {String? id,
      BoardInfoDto info,
      ProfileDto creator,
      ShareDto? shareInfo,
      bool isShare,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});

  @override
  $BoardInfoDtoCopyWith<$Res> get info;
  @override
  $ProfileDtoCopyWith<$Res> get creator;
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
    Object? id = freezed,
    Object? info = freezed,
    Object? creator = freezed,
    Object? shareInfo = freezed,
    Object? isShare = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_BoardDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BoardInfoDto,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      shareInfo: shareInfo == freezed
          ? _value.shareInfo
          : shareInfo // ignore: cast_nullable_to_non_nullable
              as ShareDto?,
      isShare: isShare == freezed
          ? _value.isShare
          : isShare // ignore: cast_nullable_to_non_nullable
              as bool,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BoardDto extends _BoardDto {
  _$_BoardDto(
      {this.id,
      required this.info,
      required this.creator,
      this.shareInfo,
      required this.isShare,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated})
      : super._();

  factory _$_BoardDto.fromJson(Map<String, dynamic> json) =>
      _$$_BoardDtoFromJson(json);

  @override
  final String? id;
  @override
  final BoardInfoDto info;
  @override
  final ProfileDto creator;
  @override
  final ShareDto? shareInfo;
  @override
  final bool isShare;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;

  @override
  String toString() {
    return 'BoardDto(id: $id, info: $info, creator: $creator, shareInfo: $shareInfo, isShare: $isShare, dtCreated: $dtCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoardDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.shareInfo, shareInfo) ||
                const DeepCollectionEquality()
                    .equals(other.shareInfo, shareInfo)) &&
            (identical(other.isShare, isShare) ||
                const DeepCollectionEquality()
                    .equals(other.isShare, isShare)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(shareInfo) ^
      const DeepCollectionEquality().hash(isShare) ^
      const DeepCollectionEquality().hash(dtCreated);

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
      {String? id,
      required BoardInfoDto info,
      required ProfileDto creator,
      ShareDto? shareInfo,
      required bool isShare,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) = _$_BoardDto;
  _BoardDto._() : super._();

  factory _BoardDto.fromJson(Map<String, dynamic> json) = _$_BoardDto.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  BoardInfoDto get info => throw _privateConstructorUsedError;
  @override
  ProfileDto get creator => throw _privateConstructorUsedError;
  @override
  ShareDto? get shareInfo => throw _privateConstructorUsedError;
  @override
  bool get isShare => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
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
      {required String id,
      required String name,
      required String color,
      required String badge,
      required String link,
      List<dynamic>? comment,
      required int cntContent,
      required bool isShare,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) {
    return _BoardInfoDto(
      id: id,
      name: name,
      color: color,
      badge: badge,
      link: link,
      comment: comment,
      cntContent: cntContent,
      isShare: isShare,
      dtCreated: dtCreated,
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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get badge => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  List<dynamic>? get comment => throw _privateConstructorUsedError;
  int get cntContent => throw _privateConstructorUsedError;
  bool get isShare => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;

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
      {String id,
      String name,
      String color,
      String badge,
      String link,
      List<dynamic>? comment,
      int cntContent,
      bool isShare,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});
}

/// @nodoc
class _$BoardInfoDtoCopyWithImpl<$Res> implements $BoardInfoDtoCopyWith<$Res> {
  _$BoardInfoDtoCopyWithImpl(this._value, this._then);

  final BoardInfoDto _value;
  // ignore: unused_field
  final $Res Function(BoardInfoDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? badge = freezed,
    Object? link = freezed,
    Object? comment = freezed,
    Object? cntContent = freezed,
    Object? isShare = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      badge: badge == freezed
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      cntContent: cntContent == freezed
          ? _value.cntContent
          : cntContent // ignore: cast_nullable_to_non_nullable
              as int,
      isShare: isShare == freezed
          ? _value.isShare
          : isShare // ignore: cast_nullable_to_non_nullable
              as bool,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
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
      {String id,
      String name,
      String color,
      String badge,
      String link,
      List<dynamic>? comment,
      int cntContent,
      bool isShare,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? badge = freezed,
    Object? link = freezed,
    Object? comment = freezed,
    Object? cntContent = freezed,
    Object? isShare = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_BoardInfoDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      badge: badge == freezed
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      cntContent: cntContent == freezed
          ? _value.cntContent
          : cntContent // ignore: cast_nullable_to_non_nullable
              as int,
      isShare: isShare == freezed
          ? _value.isShare
          : isShare // ignore: cast_nullable_to_non_nullable
              as bool,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BoardInfoDto extends _BoardInfoDto {
  _$_BoardInfoDto(
      {required this.id,
      required this.name,
      required this.color,
      required this.badge,
      required this.link,
      this.comment,
      required this.cntContent,
      required this.isShare,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated})
      : super._();

  factory _$_BoardInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_BoardInfoDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String color;
  @override
  final String badge;
  @override
  final String link;
  @override
  final List<dynamic>? comment;
  @override
  final int cntContent;
  @override
  final bool isShare;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;

  @override
  String toString() {
    return 'BoardInfoDto(id: $id, name: $name, color: $color, badge: $badge, link: $link, comment: $comment, cntContent: $cntContent, isShare: $isShare, dtCreated: $dtCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoardInfoDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.badge, badge) ||
                const DeepCollectionEquality().equals(other.badge, badge)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.cntContent, cntContent) ||
                const DeepCollectionEquality()
                    .equals(other.cntContent, cntContent)) &&
            (identical(other.isShare, isShare) ||
                const DeepCollectionEquality()
                    .equals(other.isShare, isShare)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(badge) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(cntContent) ^
      const DeepCollectionEquality().hash(isShare) ^
      const DeepCollectionEquality().hash(dtCreated);

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
      {required String id,
      required String name,
      required String color,
      required String badge,
      required String link,
      List<dynamic>? comment,
      required int cntContent,
      required bool isShare,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) = _$_BoardInfoDto;
  _BoardInfoDto._() : super._();

  factory _BoardInfoDto.fromJson(Map<String, dynamic> json) =
      _$_BoardInfoDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get color => throw _privateConstructorUsedError;
  @override
  String get badge => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get comment => throw _privateConstructorUsedError;
  @override
  int get cntContent => throw _privateConstructorUsedError;
  @override
  bool get isShare => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
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

  _ShareDto call({required ProfileDto sharer, required int shareLevel}) {
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
  $Res call({ProfileDto sharer, int shareLevel});

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
  $Res call({ProfileDto sharer, int shareLevel});

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
  _$_ShareDto({required this.sharer, required this.shareLevel}) : super._();

  factory _$_ShareDto.fromJson(Map<String, dynamic> json) =>
      _$$_ShareDtoFromJson(json);

  @override
  final ProfileDto sharer;
  @override
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
  factory _ShareDto({required ProfileDto sharer, required int shareLevel}) =
      _$_ShareDto;
  _ShareDto._() : super._();

  factory _ShareDto.fromJson(Map<String, dynamic> json) = _$_ShareDto.fromJson;

  @override
  ProfileDto get sharer => throw _privateConstructorUsedError;
  @override
  int get shareLevel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShareDtoCopyWith<_ShareDto> get copyWith =>
      throw _privateConstructorUsedError;
}
