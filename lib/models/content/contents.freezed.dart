// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContentsTearOff {
  const _$ContentsTearOff();

  _Contents call(
      {String? contentsId,
      required ContentsInfo info,
      required Profile userInfo,
      required int contentsAllviewCount,
      required int contentsMyviewCount,
      required int contentsAlarmCheck,
      BoardInfo? boardInfo,
      ShareDto? shareInfo,
      List<dynamic>? contentsComment,
      required DateTime ContentsCreateDate,
      required DateTime ContentsUpdateDate}) {
    return _Contents(
      contentsId: contentsId,
      info: info,
      userInfo: userInfo,
      contentsAllviewCount: contentsAllviewCount,
      contentsMyviewCount: contentsMyviewCount,
      contentsAlarmCheck: contentsAlarmCheck,
      boardInfo: boardInfo,
      shareInfo: shareInfo,
      contentsComment: contentsComment,
      ContentsCreateDate: ContentsCreateDate,
      ContentsUpdateDate: ContentsUpdateDate,
    );
  }
}

/// @nodoc
const $Contents = _$ContentsTearOff();

/// @nodoc
mixin _$Contents {
  String? get contentsId => throw _privateConstructorUsedError;
  ContentsInfo get info => throw _privateConstructorUsedError;
  Profile get userInfo => throw _privateConstructorUsedError;
  int get contentsAllviewCount => throw _privateConstructorUsedError;
  int get contentsMyviewCount => throw _privateConstructorUsedError;
  int get contentsAlarmCheck => throw _privateConstructorUsedError;
  BoardInfo? get boardInfo => throw _privateConstructorUsedError;
  ShareDto? get shareInfo => throw _privateConstructorUsedError;
  List<dynamic>? get contentsComment => throw _privateConstructorUsedError;
  DateTime get ContentsCreateDate => throw _privateConstructorUsedError;
  DateTime get ContentsUpdateDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentsCopyWith<Contents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentsCopyWith<$Res> {
  factory $ContentsCopyWith(Contents value, $Res Function(Contents) then) =
      _$ContentsCopyWithImpl<$Res>;
  $Res call(
      {String? contentsId,
      ContentsInfo info,
      Profile userInfo,
      int contentsAllviewCount,
      int contentsMyviewCount,
      int contentsAlarmCheck,
      BoardInfo? boardInfo,
      ShareDto? shareInfo,
      List<dynamic>? contentsComment,
      DateTime ContentsCreateDate,
      DateTime ContentsUpdateDate});

  $ContentsInfoCopyWith<$Res> get info;
  $ProfileCopyWith<$Res> get userInfo;
  $BoardInfoCopyWith<$Res>? get boardInfo;
  $ShareDtoCopyWith<$Res>? get shareInfo;
}

/// @nodoc
class _$ContentsCopyWithImpl<$Res> implements $ContentsCopyWith<$Res> {
  _$ContentsCopyWithImpl(this._value, this._then);

  final Contents _value;
  // ignore: unused_field
  final $Res Function(Contents) _then;

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
    Object? ContentsCreateDate = freezed,
    Object? ContentsUpdateDate = freezed,
  }) {
    return _then(_value.copyWith(
      contentsId: contentsId == freezed
          ? _value.contentsId
          : contentsId // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ContentsInfo,
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as Profile,
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
              as BoardInfo?,
      shareInfo: shareInfo == freezed
          ? _value.shareInfo
          : shareInfo // ignore: cast_nullable_to_non_nullable
              as ShareDto?,
      contentsComment: contentsComment == freezed
          ? _value.contentsComment
          : contentsComment // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      ContentsCreateDate: ContentsCreateDate == freezed
          ? _value.ContentsCreateDate
          : ContentsCreateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ContentsUpdateDate: ContentsUpdateDate == freezed
          ? _value.ContentsUpdateDate
          : ContentsUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ContentsInfoCopyWith<$Res> get info {
    return $ContentsInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $ProfileCopyWith<$Res> get userInfo {
    return $ProfileCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value));
    });
  }

  @override
  $BoardInfoCopyWith<$Res>? get boardInfo {
    if (_value.boardInfo == null) {
      return null;
    }

    return $BoardInfoCopyWith<$Res>(_value.boardInfo!, (value) {
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
abstract class _$ContentsCopyWith<$Res> implements $ContentsCopyWith<$Res> {
  factory _$ContentsCopyWith(_Contents value, $Res Function(_Contents) then) =
      __$ContentsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? contentsId,
      ContentsInfo info,
      Profile userInfo,
      int contentsAllviewCount,
      int contentsMyviewCount,
      int contentsAlarmCheck,
      BoardInfo? boardInfo,
      ShareDto? shareInfo,
      List<dynamic>? contentsComment,
      DateTime ContentsCreateDate,
      DateTime ContentsUpdateDate});

  @override
  $ContentsInfoCopyWith<$Res> get info;
  @override
  $ProfileCopyWith<$Res> get userInfo;
  @override
  $BoardInfoCopyWith<$Res>? get boardInfo;
  @override
  $ShareDtoCopyWith<$Res>? get shareInfo;
}

/// @nodoc
class __$ContentsCopyWithImpl<$Res> extends _$ContentsCopyWithImpl<$Res>
    implements _$ContentsCopyWith<$Res> {
  __$ContentsCopyWithImpl(_Contents _value, $Res Function(_Contents) _then)
      : super(_value, (v) => _then(v as _Contents));

  @override
  _Contents get _value => super._value as _Contents;

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
    Object? ContentsCreateDate = freezed,
    Object? ContentsUpdateDate = freezed,
  }) {
    return _then(_Contents(
      contentsId: contentsId == freezed
          ? _value.contentsId
          : contentsId // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ContentsInfo,
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as Profile,
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
              as BoardInfo?,
      shareInfo: shareInfo == freezed
          ? _value.shareInfo
          : shareInfo // ignore: cast_nullable_to_non_nullable
              as ShareDto?,
      contentsComment: contentsComment == freezed
          ? _value.contentsComment
          : contentsComment // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      ContentsCreateDate: ContentsCreateDate == freezed
          ? _value.ContentsCreateDate
          : ContentsCreateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ContentsUpdateDate: ContentsUpdateDate == freezed
          ? _value.ContentsUpdateDate
          : ContentsUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Contents extends _Contents {
  _$_Contents(
      {this.contentsId,
      required this.info,
      required this.userInfo,
      required this.contentsAllviewCount,
      required this.contentsMyviewCount,
      required this.contentsAlarmCheck,
      this.boardInfo,
      this.shareInfo,
      this.contentsComment,
      required this.ContentsCreateDate,
      required this.ContentsUpdateDate})
      : super._();

  @override
  final String? contentsId;
  @override
  final ContentsInfo info;
  @override
  final Profile userInfo;
  @override
  final int contentsAllviewCount;
  @override
  final int contentsMyviewCount;
  @override
  final int contentsAlarmCheck;
  @override
  final BoardInfo? boardInfo;
  @override
  final ShareDto? shareInfo;
  @override
  final List<dynamic>? contentsComment;
  @override
  final DateTime ContentsCreateDate;
  @override
  final DateTime ContentsUpdateDate;

  @override
  String toString() {
    return 'Contents(contentsId: $contentsId, info: $info, userInfo: $userInfo, contentsAllviewCount: $contentsAllviewCount, contentsMyviewCount: $contentsMyviewCount, contentsAlarmCheck: $contentsAlarmCheck, boardInfo: $boardInfo, shareInfo: $shareInfo, contentsComment: $contentsComment, ContentsCreateDate: $ContentsCreateDate, ContentsUpdateDate: $ContentsUpdateDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Contents &&
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
            (identical(other.ContentsCreateDate, ContentsCreateDate) ||
                const DeepCollectionEquality()
                    .equals(other.ContentsCreateDate, ContentsCreateDate)) &&
            (identical(other.ContentsUpdateDate, ContentsUpdateDate) ||
                const DeepCollectionEquality()
                    .equals(other.ContentsUpdateDate, ContentsUpdateDate)));
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
      const DeepCollectionEquality().hash(ContentsCreateDate) ^
      const DeepCollectionEquality().hash(ContentsUpdateDate);

  @JsonKey(ignore: true)
  @override
  _$ContentsCopyWith<_Contents> get copyWith =>
      __$ContentsCopyWithImpl<_Contents>(this, _$identity);
}

abstract class _Contents extends Contents {
  factory _Contents(
      {String? contentsId,
      required ContentsInfo info,
      required Profile userInfo,
      required int contentsAllviewCount,
      required int contentsMyviewCount,
      required int contentsAlarmCheck,
      BoardInfo? boardInfo,
      ShareDto? shareInfo,
      List<dynamic>? contentsComment,
      required DateTime ContentsCreateDate,
      required DateTime ContentsUpdateDate}) = _$_Contents;
  _Contents._() : super._();

  @override
  String? get contentsId => throw _privateConstructorUsedError;
  @override
  ContentsInfo get info => throw _privateConstructorUsedError;
  @override
  Profile get userInfo => throw _privateConstructorUsedError;
  @override
  int get contentsAllviewCount => throw _privateConstructorUsedError;
  @override
  int get contentsMyviewCount => throw _privateConstructorUsedError;
  @override
  int get contentsAlarmCheck => throw _privateConstructorUsedError;
  @override
  BoardInfo? get boardInfo => throw _privateConstructorUsedError;
  @override
  ShareDto? get shareInfo => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get contentsComment => throw _privateConstructorUsedError;
  @override
  DateTime get ContentsCreateDate => throw _privateConstructorUsedError;
  @override
  DateTime get ContentsUpdateDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContentsCopyWith<_Contents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ContentsInfoTearOff {
  const _$ContentsInfoTearOff();

  _ContentsInfo call(
      {String? contentsId,
      String? contentsTitle,
      String? contentsUrl,
      String? contentsImages,
      String? contentsDescription,
      String? contentsComment,
      String? contentsUniqueLink,
      bool? contentsFixed,
      List<String?>? thumbnails,
      required DateTime ContentsCreateDate,
      required DateTime ContentsUpdateDate}) {
    return _ContentsInfo(
      contentsId: contentsId,
      contentsTitle: contentsTitle,
      contentsUrl: contentsUrl,
      contentsImages: contentsImages,
      contentsDescription: contentsDescription,
      contentsComment: contentsComment,
      contentsUniqueLink: contentsUniqueLink,
      contentsFixed: contentsFixed,
      thumbnails: thumbnails,
      ContentsCreateDate: ContentsCreateDate,
      ContentsUpdateDate: ContentsUpdateDate,
    );
  }
}

/// @nodoc
const $ContentsInfo = _$ContentsInfoTearOff();

/// @nodoc
mixin _$ContentsInfo {
  String? get contentsId => throw _privateConstructorUsedError;
  String? get contentsTitle => throw _privateConstructorUsedError;
  String? get contentsUrl => throw _privateConstructorUsedError;
  String? get contentsImages => throw _privateConstructorUsedError;
  String? get contentsDescription => throw _privateConstructorUsedError;
  String? get contentsComment => throw _privateConstructorUsedError;
  String? get contentsUniqueLink => throw _privateConstructorUsedError;
  bool? get contentsFixed => throw _privateConstructorUsedError;
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  DateTime get ContentsCreateDate => throw _privateConstructorUsedError;
  DateTime get ContentsUpdateDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentsInfoCopyWith<ContentsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentsInfoCopyWith<$Res> {
  factory $ContentsInfoCopyWith(
          ContentsInfo value, $Res Function(ContentsInfo) then) =
      _$ContentsInfoCopyWithImpl<$Res>;
  $Res call(
      {String? contentsId,
      String? contentsTitle,
      String? contentsUrl,
      String? contentsImages,
      String? contentsDescription,
      String? contentsComment,
      String? contentsUniqueLink,
      bool? contentsFixed,
      List<String?>? thumbnails,
      DateTime ContentsCreateDate,
      DateTime ContentsUpdateDate});
}

/// @nodoc
class _$ContentsInfoCopyWithImpl<$Res> implements $ContentsInfoCopyWith<$Res> {
  _$ContentsInfoCopyWithImpl(this._value, this._then);

  final ContentsInfo _value;
  // ignore: unused_field
  final $Res Function(ContentsInfo) _then;

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
    Object? thumbnails = freezed,
    Object? ContentsCreateDate = freezed,
    Object? ContentsUpdateDate = freezed,
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
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      ContentsCreateDate: ContentsCreateDate == freezed
          ? _value.ContentsCreateDate
          : ContentsCreateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ContentsUpdateDate: ContentsUpdateDate == freezed
          ? _value.ContentsUpdateDate
          : ContentsUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ContentsInfoCopyWith<$Res>
    implements $ContentsInfoCopyWith<$Res> {
  factory _$ContentsInfoCopyWith(
          _ContentsInfo value, $Res Function(_ContentsInfo) then) =
      __$ContentsInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? contentsId,
      String? contentsTitle,
      String? contentsUrl,
      String? contentsImages,
      String? contentsDescription,
      String? contentsComment,
      String? contentsUniqueLink,
      bool? contentsFixed,
      List<String?>? thumbnails,
      DateTime ContentsCreateDate,
      DateTime ContentsUpdateDate});
}

/// @nodoc
class __$ContentsInfoCopyWithImpl<$Res> extends _$ContentsInfoCopyWithImpl<$Res>
    implements _$ContentsInfoCopyWith<$Res> {
  __$ContentsInfoCopyWithImpl(
      _ContentsInfo _value, $Res Function(_ContentsInfo) _then)
      : super(_value, (v) => _then(v as _ContentsInfo));

  @override
  _ContentsInfo get _value => super._value as _ContentsInfo;

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
    Object? thumbnails = freezed,
    Object? ContentsCreateDate = freezed,
    Object? ContentsUpdateDate = freezed,
  }) {
    return _then(_ContentsInfo(
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
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      ContentsCreateDate: ContentsCreateDate == freezed
          ? _value.ContentsCreateDate
          : ContentsCreateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ContentsUpdateDate: ContentsUpdateDate == freezed
          ? _value.ContentsUpdateDate
          : ContentsUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_ContentsInfo extends _ContentsInfo {
  _$_ContentsInfo(
      {this.contentsId,
      this.contentsTitle,
      this.contentsUrl,
      this.contentsImages,
      this.contentsDescription,
      this.contentsComment,
      this.contentsUniqueLink,
      this.contentsFixed,
      this.thumbnails,
      required this.ContentsCreateDate,
      required this.ContentsUpdateDate})
      : super._();

  @override
  final String? contentsId;
  @override
  final String? contentsTitle;
  @override
  final String? contentsUrl;
  @override
  final String? contentsImages;
  @override
  final String? contentsDescription;
  @override
  final String? contentsComment;
  @override
  final String? contentsUniqueLink;
  @override
  final bool? contentsFixed;
  @override
  final List<String?>? thumbnails;
  @override
  final DateTime ContentsCreateDate;
  @override
  final DateTime ContentsUpdateDate;

  @override
  String toString() {
    return 'ContentsInfo(contentsId: $contentsId, contentsTitle: $contentsTitle, contentsUrl: $contentsUrl, contentsImages: $contentsImages, contentsDescription: $contentsDescription, contentsComment: $contentsComment, contentsUniqueLink: $contentsUniqueLink, contentsFixed: $contentsFixed, thumbnails: $thumbnails, ContentsCreateDate: $ContentsCreateDate, ContentsUpdateDate: $ContentsUpdateDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContentsInfo &&
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
            (identical(other.thumbnails, thumbnails) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnails, thumbnails)) &&
            (identical(other.ContentsCreateDate, ContentsCreateDate) ||
                const DeepCollectionEquality()
                    .equals(other.ContentsCreateDate, ContentsCreateDate)) &&
            (identical(other.ContentsUpdateDate, ContentsUpdateDate) ||
                const DeepCollectionEquality()
                    .equals(other.ContentsUpdateDate, ContentsUpdateDate)));
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
      const DeepCollectionEquality().hash(thumbnails) ^
      const DeepCollectionEquality().hash(ContentsCreateDate) ^
      const DeepCollectionEquality().hash(ContentsUpdateDate);

  @JsonKey(ignore: true)
  @override
  _$ContentsInfoCopyWith<_ContentsInfo> get copyWith =>
      __$ContentsInfoCopyWithImpl<_ContentsInfo>(this, _$identity);
}

abstract class _ContentsInfo extends ContentsInfo {
  factory _ContentsInfo(
      {String? contentsId,
      String? contentsTitle,
      String? contentsUrl,
      String? contentsImages,
      String? contentsDescription,
      String? contentsComment,
      String? contentsUniqueLink,
      bool? contentsFixed,
      List<String?>? thumbnails,
      required DateTime ContentsCreateDate,
      required DateTime ContentsUpdateDate}) = _$_ContentsInfo;
  _ContentsInfo._() : super._();

  @override
  String? get contentsId => throw _privateConstructorUsedError;
  @override
  String? get contentsTitle => throw _privateConstructorUsedError;
  @override
  String? get contentsUrl => throw _privateConstructorUsedError;
  @override
  String? get contentsImages => throw _privateConstructorUsedError;
  @override
  String? get contentsDescription => throw _privateConstructorUsedError;
  @override
  String? get contentsComment => throw _privateConstructorUsedError;
  @override
  String? get contentsUniqueLink => throw _privateConstructorUsedError;
  @override
  bool? get contentsFixed => throw _privateConstructorUsedError;
  @override
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  @override
  DateTime get ContentsCreateDate => throw _privateConstructorUsedError;
  @override
  DateTime get ContentsUpdateDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContentsInfoCopyWith<_ContentsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
