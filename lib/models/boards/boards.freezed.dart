// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'boards.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BoardTearOff {
  const _$BoardTearOff();

  _Board call(
      {String? boardId,
      required BoardInfo info,
      required Profile boardCreator,
      Share? shareInfo,
      List<dynamic>? boardComment,
      required int shareCheck,
      required DateTime registerDate}) {
    return _Board(
      boardId: boardId,
      info: info,
      boardCreator: boardCreator,
      shareInfo: shareInfo,
      boardComment: boardComment,
      shareCheck: shareCheck,
      registerDate: registerDate,
    );
  }
}

/// @nodoc
const $Board = _$BoardTearOff();

/// @nodoc
mixin _$Board {
  String? get boardId => throw _privateConstructorUsedError;
  BoardInfo get info => throw _privateConstructorUsedError;
  Profile get boardCreator => throw _privateConstructorUsedError;
  Share? get shareInfo => throw _privateConstructorUsedError;
  List<dynamic>? get boardComment => throw _privateConstructorUsedError;
  int get shareCheck => throw _privateConstructorUsedError;
  DateTime get registerDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardCopyWith<Board> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardCopyWith<$Res> {
  factory $BoardCopyWith(Board value, $Res Function(Board) then) =
      _$BoardCopyWithImpl<$Res>;
  $Res call(
      {String? boardId,
      BoardInfo info,
      Profile boardCreator,
      Share? shareInfo,
      List<dynamic>? boardComment,
      int shareCheck,
      DateTime registerDate});

  $BoardInfoCopyWith<$Res> get info;
  $ProfileCopyWith<$Res> get boardCreator;
  $ShareCopyWith<$Res>? get shareInfo;
}

/// @nodoc
class _$BoardCopyWithImpl<$Res> implements $BoardCopyWith<$Res> {
  _$BoardCopyWithImpl(this._value, this._then);

  final Board _value;
  // ignore: unused_field
  final $Res Function(Board) _then;

  @override
  $Res call({
    Object? boardId = freezed,
    Object? info = freezed,
    Object? boardCreator = freezed,
    Object? shareInfo = freezed,
    Object? boardComment = freezed,
    Object? shareCheck = freezed,
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
              as BoardInfo,
      boardCreator: boardCreator == freezed
          ? _value.boardCreator
          : boardCreator // ignore: cast_nullable_to_non_nullable
              as Profile,
      shareInfo: shareInfo == freezed
          ? _value.shareInfo
          : shareInfo // ignore: cast_nullable_to_non_nullable
              as Share?,
      boardComment: boardComment == freezed
          ? _value.boardComment
          : boardComment // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      shareCheck: shareCheck == freezed
          ? _value.shareCheck
          : shareCheck // ignore: cast_nullable_to_non_nullable
              as int,
      registerDate: registerDate == freezed
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $BoardInfoCopyWith<$Res> get info {
    return $BoardInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $ProfileCopyWith<$Res> get boardCreator {
    return $ProfileCopyWith<$Res>(_value.boardCreator, (value) {
      return _then(_value.copyWith(boardCreator: value));
    });
  }

  @override
  $ShareCopyWith<$Res>? get shareInfo {
    if (_value.shareInfo == null) {
      return null;
    }

    return $ShareCopyWith<$Res>(_value.shareInfo!, (value) {
      return _then(_value.copyWith(shareInfo: value));
    });
  }
}

/// @nodoc
abstract class _$BoardCopyWith<$Res> implements $BoardCopyWith<$Res> {
  factory _$BoardCopyWith(_Board value, $Res Function(_Board) then) =
      __$BoardCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? boardId,
      BoardInfo info,
      Profile boardCreator,
      Share? shareInfo,
      List<dynamic>? boardComment,
      int shareCheck,
      DateTime registerDate});

  @override
  $BoardInfoCopyWith<$Res> get info;
  @override
  $ProfileCopyWith<$Res> get boardCreator;
  @override
  $ShareCopyWith<$Res>? get shareInfo;
}

/// @nodoc
class __$BoardCopyWithImpl<$Res> extends _$BoardCopyWithImpl<$Res>
    implements _$BoardCopyWith<$Res> {
  __$BoardCopyWithImpl(_Board _value, $Res Function(_Board) _then)
      : super(_value, (v) => _then(v as _Board));

  @override
  _Board get _value => super._value as _Board;

  @override
  $Res call({
    Object? boardId = freezed,
    Object? info = freezed,
    Object? boardCreator = freezed,
    Object? shareInfo = freezed,
    Object? boardComment = freezed,
    Object? shareCheck = freezed,
    Object? registerDate = freezed,
  }) {
    return _then(_Board(
      boardId: boardId == freezed
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BoardInfo,
      boardCreator: boardCreator == freezed
          ? _value.boardCreator
          : boardCreator // ignore: cast_nullable_to_non_nullable
              as Profile,
      shareInfo: shareInfo == freezed
          ? _value.shareInfo
          : shareInfo // ignore: cast_nullable_to_non_nullable
              as Share?,
      boardComment: boardComment == freezed
          ? _value.boardComment
          : boardComment // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      shareCheck: shareCheck == freezed
          ? _value.shareCheck
          : shareCheck // ignore: cast_nullable_to_non_nullable
              as int,
      registerDate: registerDate == freezed
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Board extends _Board {
  _$_Board(
      {this.boardId,
      required this.info,
      required this.boardCreator,
      this.shareInfo,
      this.boardComment,
      required this.shareCheck,
      required this.registerDate})
      : super._();

  @override
  final String? boardId;
  @override
  final BoardInfo info;
  @override
  final Profile boardCreator;
  @override
  final Share? shareInfo;
  @override
  final List<dynamic>? boardComment;
  @override
  final int shareCheck;
  @override
  final DateTime registerDate;

  @override
  String toString() {
    return 'Board(boardId: $boardId, info: $info, boardCreator: $boardCreator, shareInfo: $shareInfo, boardComment: $boardComment, shareCheck: $shareCheck, registerDate: $registerDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Board &&
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
            (identical(other.boardComment, boardComment) ||
                const DeepCollectionEquality()
                    .equals(other.boardComment, boardComment)) &&
            (identical(other.shareCheck, shareCheck) ||
                const DeepCollectionEquality()
                    .equals(other.shareCheck, shareCheck)) &&
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
      const DeepCollectionEquality().hash(boardComment) ^
      const DeepCollectionEquality().hash(shareCheck) ^
      const DeepCollectionEquality().hash(registerDate);

  @JsonKey(ignore: true)
  @override
  _$BoardCopyWith<_Board> get copyWith =>
      __$BoardCopyWithImpl<_Board>(this, _$identity);
}

abstract class _Board extends Board {
  factory _Board(
      {String? boardId,
      required BoardInfo info,
      required Profile boardCreator,
      Share? shareInfo,
      List<dynamic>? boardComment,
      required int shareCheck,
      required DateTime registerDate}) = _$_Board;
  _Board._() : super._();

  @override
  String? get boardId => throw _privateConstructorUsedError;
  @override
  BoardInfo get info => throw _privateConstructorUsedError;
  @override
  Profile get boardCreator => throw _privateConstructorUsedError;
  @override
  Share? get shareInfo => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get boardComment => throw _privateConstructorUsedError;
  @override
  int get shareCheck => throw _privateConstructorUsedError;
  @override
  DateTime get registerDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoardCopyWith<_Board> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$BoardInfoTearOff {
  const _$BoardInfoTearOff();

  _BoardInfo call(
      {String? boardId,
      bool isFixed = false,
      required String boardName,
      required String boardColor,
      required String boardBadge,
      String? boardUnquieLink,
      required int contentsCount,
      required int shareCheck,
      int? shareCount,
      required DateTime registerDate}) {
    return _BoardInfo(
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
}

/// @nodoc
const $BoardInfo = _$BoardInfoTearOff();

/// @nodoc
mixin _$BoardInfo {
  String? get boardId => throw _privateConstructorUsedError;
  bool get isFixed => throw _privateConstructorUsedError;
  String get boardName => throw _privateConstructorUsedError;
  String get boardColor => throw _privateConstructorUsedError;
  String get boardBadge => throw _privateConstructorUsedError;
  String? get boardUnquieLink => throw _privateConstructorUsedError;
  int get contentsCount => throw _privateConstructorUsedError;
  int get shareCheck => throw _privateConstructorUsedError;
  int? get shareCount => throw _privateConstructorUsedError;
  DateTime get registerDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardInfoCopyWith<BoardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardInfoCopyWith<$Res> {
  factory $BoardInfoCopyWith(BoardInfo value, $Res Function(BoardInfo) then) =
      _$BoardInfoCopyWithImpl<$Res>;
  $Res call(
      {String? boardId,
      bool isFixed,
      String boardName,
      String boardColor,
      String boardBadge,
      String? boardUnquieLink,
      int contentsCount,
      int shareCheck,
      int? shareCount,
      DateTime registerDate});
}

/// @nodoc
class _$BoardInfoCopyWithImpl<$Res> implements $BoardInfoCopyWith<$Res> {
  _$BoardInfoCopyWithImpl(this._value, this._then);

  final BoardInfo _value;
  // ignore: unused_field
  final $Res Function(BoardInfo) _then;

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
              as int,
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
abstract class _$BoardInfoCopyWith<$Res> implements $BoardInfoCopyWith<$Res> {
  factory _$BoardInfoCopyWith(
          _BoardInfo value, $Res Function(_BoardInfo) then) =
      __$BoardInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? boardId,
      bool isFixed,
      String boardName,
      String boardColor,
      String boardBadge,
      String? boardUnquieLink,
      int contentsCount,
      int shareCheck,
      int? shareCount,
      DateTime registerDate});
}

/// @nodoc
class __$BoardInfoCopyWithImpl<$Res> extends _$BoardInfoCopyWithImpl<$Res>
    implements _$BoardInfoCopyWith<$Res> {
  __$BoardInfoCopyWithImpl(_BoardInfo _value, $Res Function(_BoardInfo) _then)
      : super(_value, (v) => _then(v as _BoardInfo));

  @override
  _BoardInfo get _value => super._value as _BoardInfo;

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
    return _then(_BoardInfo(
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
              as int,
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

class _$_BoardInfo extends _BoardInfo {
  _$_BoardInfo(
      {this.boardId,
      this.isFixed = false,
      required this.boardName,
      required this.boardColor,
      required this.boardBadge,
      this.boardUnquieLink,
      required this.contentsCount,
      required this.shareCheck,
      this.shareCount,
      required this.registerDate})
      : super._();

  @override
  final String? boardId;
  @JsonKey(defaultValue: false)
  @override
  final bool isFixed;
  @override
  final String boardName;
  @override
  final String boardColor;
  @override
  final String boardBadge;
  @override
  final String? boardUnquieLink;
  @override
  final int contentsCount;
  @override
  final int shareCheck;
  @override
  final int? shareCount;
  @override
  final DateTime registerDate;

  @override
  String toString() {
    return 'BoardInfo(boardId: $boardId, isFixed: $isFixed, boardName: $boardName, boardColor: $boardColor, boardBadge: $boardBadge, boardUnquieLink: $boardUnquieLink, contentsCount: $contentsCount, shareCheck: $shareCheck, shareCount: $shareCount, registerDate: $registerDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoardInfo &&
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
  _$BoardInfoCopyWith<_BoardInfo> get copyWith =>
      __$BoardInfoCopyWithImpl<_BoardInfo>(this, _$identity);
}

abstract class _BoardInfo extends BoardInfo {
  factory _BoardInfo(
      {String? boardId,
      bool isFixed,
      required String boardName,
      required String boardColor,
      required String boardBadge,
      String? boardUnquieLink,
      required int contentsCount,
      required int shareCheck,
      int? shareCount,
      required DateTime registerDate}) = _$_BoardInfo;
  _BoardInfo._() : super._();

  @override
  String? get boardId => throw _privateConstructorUsedError;
  @override
  bool get isFixed => throw _privateConstructorUsedError;
  @override
  String get boardName => throw _privateConstructorUsedError;
  @override
  String get boardColor => throw _privateConstructorUsedError;
  @override
  String get boardBadge => throw _privateConstructorUsedError;
  @override
  String? get boardUnquieLink => throw _privateConstructorUsedError;
  @override
  int get contentsCount => throw _privateConstructorUsedError;
  @override
  int get shareCheck => throw _privateConstructorUsedError;
  @override
  int? get shareCount => throw _privateConstructorUsedError;
  @override
  DateTime get registerDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoardInfoCopyWith<_BoardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ShareTearOff {
  const _$ShareTearOff();

  _Share call({required Profile sharer, required int shareLevel}) {
    return _Share(
      sharer: sharer,
      shareLevel: shareLevel,
    );
  }
}

/// @nodoc
const $Share = _$ShareTearOff();

/// @nodoc
mixin _$Share {
  Profile get sharer => throw _privateConstructorUsedError;
  int get shareLevel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShareCopyWith<Share> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareCopyWith<$Res> {
  factory $ShareCopyWith(Share value, $Res Function(Share) then) =
      _$ShareCopyWithImpl<$Res>;
  $Res call({Profile sharer, int shareLevel});

  $ProfileCopyWith<$Res> get sharer;
}

/// @nodoc
class _$ShareCopyWithImpl<$Res> implements $ShareCopyWith<$Res> {
  _$ShareCopyWithImpl(this._value, this._then);

  final Share _value;
  // ignore: unused_field
  final $Res Function(Share) _then;

  @override
  $Res call({
    Object? sharer = freezed,
    Object? shareLevel = freezed,
  }) {
    return _then(_value.copyWith(
      sharer: sharer == freezed
          ? _value.sharer
          : sharer // ignore: cast_nullable_to_non_nullable
              as Profile,
      shareLevel: shareLevel == freezed
          ? _value.shareLevel
          : shareLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get sharer {
    return $ProfileCopyWith<$Res>(_value.sharer, (value) {
      return _then(_value.copyWith(sharer: value));
    });
  }
}

/// @nodoc
abstract class _$ShareCopyWith<$Res> implements $ShareCopyWith<$Res> {
  factory _$ShareCopyWith(_Share value, $Res Function(_Share) then) =
      __$ShareCopyWithImpl<$Res>;
  @override
  $Res call({Profile sharer, int shareLevel});

  @override
  $ProfileCopyWith<$Res> get sharer;
}

/// @nodoc
class __$ShareCopyWithImpl<$Res> extends _$ShareCopyWithImpl<$Res>
    implements _$ShareCopyWith<$Res> {
  __$ShareCopyWithImpl(_Share _value, $Res Function(_Share) _then)
      : super(_value, (v) => _then(v as _Share));

  @override
  _Share get _value => super._value as _Share;

  @override
  $Res call({
    Object? sharer = freezed,
    Object? shareLevel = freezed,
  }) {
    return _then(_Share(
      sharer: sharer == freezed
          ? _value.sharer
          : sharer // ignore: cast_nullable_to_non_nullable
              as Profile,
      shareLevel: shareLevel == freezed
          ? _value.shareLevel
          : shareLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Share extends _Share {
  _$_Share({required this.sharer, required this.shareLevel}) : super._();

  @override
  final Profile sharer;
  @override
  final int shareLevel;

  @override
  String toString() {
    return 'Share(sharer: $sharer, shareLevel: $shareLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Share &&
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
  _$ShareCopyWith<_Share> get copyWith =>
      __$ShareCopyWithImpl<_Share>(this, _$identity);
}

abstract class _Share extends Share {
  factory _Share({required Profile sharer, required int shareLevel}) = _$_Share;
  _Share._() : super._();

  @override
  Profile get sharer => throw _privateConstructorUsedError;
  @override
  int get shareLevel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShareCopyWith<_Share> get copyWith => throw _privateConstructorUsedError;
}
