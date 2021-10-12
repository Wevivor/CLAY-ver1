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
      {String? id,
      required BoardInfo info,
      required Profile creator,
      Share? shareInfo,
      required bool isShare,
      required DateTime dtCreated}) {
    return _Board(
      id: id,
      info: info,
      creator: creator,
      shareInfo: shareInfo,
      isShare: isShare,
      dtCreated: dtCreated,
    );
  }
}

/// @nodoc
const $Board = _$BoardTearOff();

/// @nodoc
mixin _$Board {
  String? get id => throw _privateConstructorUsedError;
  BoardInfo get info => throw _privateConstructorUsedError;
  Profile get creator => throw _privateConstructorUsedError;
  Share? get shareInfo => throw _privateConstructorUsedError;
  bool get isShare => throw _privateConstructorUsedError;
  DateTime get dtCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardCopyWith<Board> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardCopyWith<$Res> {
  factory $BoardCopyWith(Board value, $Res Function(Board) then) =
      _$BoardCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      BoardInfo info,
      Profile creator,
      Share? shareInfo,
      bool isShare,
      DateTime dtCreated});

  $BoardInfoCopyWith<$Res> get info;
  $ProfileCopyWith<$Res> get creator;
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
              as BoardInfo,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Profile,
      shareInfo: shareInfo == freezed
          ? _value.shareInfo
          : shareInfo // ignore: cast_nullable_to_non_nullable
              as Share?,
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
  $BoardInfoCopyWith<$Res> get info {
    return $BoardInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $ProfileCopyWith<$Res> get creator {
    return $ProfileCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value));
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
      {String? id,
      BoardInfo info,
      Profile creator,
      Share? shareInfo,
      bool isShare,
      DateTime dtCreated});

  @override
  $BoardInfoCopyWith<$Res> get info;
  @override
  $ProfileCopyWith<$Res> get creator;
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
    Object? id = freezed,
    Object? info = freezed,
    Object? creator = freezed,
    Object? shareInfo = freezed,
    Object? isShare = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_Board(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BoardInfo,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Profile,
      shareInfo: shareInfo == freezed
          ? _value.shareInfo
          : shareInfo // ignore: cast_nullable_to_non_nullable
              as Share?,
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

class _$_Board extends _Board {
  _$_Board(
      {this.id,
      required this.info,
      required this.creator,
      this.shareInfo,
      required this.isShare,
      required this.dtCreated})
      : super._();

  @override
  final String? id;
  @override
  final BoardInfo info;
  @override
  final Profile creator;
  @override
  final Share? shareInfo;
  @override
  final bool isShare;
  @override
  final DateTime dtCreated;

  @override
  String toString() {
    return 'Board(id: $id, info: $info, creator: $creator, shareInfo: $shareInfo, isShare: $isShare, dtCreated: $dtCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Board &&
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
  _$BoardCopyWith<_Board> get copyWith =>
      __$BoardCopyWithImpl<_Board>(this, _$identity);
}

abstract class _Board extends Board {
  factory _Board(
      {String? id,
      required BoardInfo info,
      required Profile creator,
      Share? shareInfo,
      required bool isShare,
      required DateTime dtCreated}) = _$_Board;
  _Board._() : super._();

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  BoardInfo get info => throw _privateConstructorUsedError;
  @override
  Profile get creator => throw _privateConstructorUsedError;
  @override
  Share? get shareInfo => throw _privateConstructorUsedError;
  @override
  bool get isShare => throw _privateConstructorUsedError;
  @override
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoardCopyWith<_Board> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$BoardInfoTearOff {
  const _$BoardInfoTearOff();

  _BoardInfo call(
      {required String id,
      required String name,
      required String color,
      required String badge,
      required String link,
      List<dynamic>? comment,
      required int cntContent,
      required bool isShare,
      required DateTime dtCreated}) {
    return _BoardInfo(
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
}

/// @nodoc
const $BoardInfo = _$BoardInfoTearOff();

/// @nodoc
mixin _$BoardInfo {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get badge => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  List<dynamic>? get comment => throw _privateConstructorUsedError;
  int get cntContent => throw _privateConstructorUsedError;
  bool get isShare => throw _privateConstructorUsedError;
  DateTime get dtCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardInfoCopyWith<BoardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardInfoCopyWith<$Res> {
  factory $BoardInfoCopyWith(BoardInfo value, $Res Function(BoardInfo) then) =
      _$BoardInfoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String color,
      String badge,
      String link,
      List<dynamic>? comment,
      int cntContent,
      bool isShare,
      DateTime dtCreated});
}

/// @nodoc
class _$BoardInfoCopyWithImpl<$Res> implements $BoardInfoCopyWith<$Res> {
  _$BoardInfoCopyWithImpl(this._value, this._then);

  final BoardInfo _value;
  // ignore: unused_field
  final $Res Function(BoardInfo) _then;

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
abstract class _$BoardInfoCopyWith<$Res> implements $BoardInfoCopyWith<$Res> {
  factory _$BoardInfoCopyWith(
          _BoardInfo value, $Res Function(_BoardInfo) then) =
      __$BoardInfoCopyWithImpl<$Res>;
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
      DateTime dtCreated});
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
    return _then(_BoardInfo(
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

class _$_BoardInfo extends _BoardInfo {
  _$_BoardInfo(
      {required this.id,
      required this.name,
      required this.color,
      required this.badge,
      required this.link,
      this.comment,
      required this.cntContent,
      required this.isShare,
      required this.dtCreated})
      : super._();

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
  final DateTime dtCreated;

  @override
  String toString() {
    return 'BoardInfo(id: $id, name: $name, color: $color, badge: $badge, link: $link, comment: $comment, cntContent: $cntContent, isShare: $isShare, dtCreated: $dtCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoardInfo &&
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
  _$BoardInfoCopyWith<_BoardInfo> get copyWith =>
      __$BoardInfoCopyWithImpl<_BoardInfo>(this, _$identity);
}

abstract class _BoardInfo extends BoardInfo {
  factory _BoardInfo(
      {required String id,
      required String name,
      required String color,
      required String badge,
      required String link,
      List<dynamic>? comment,
      required int cntContent,
      required bool isShare,
      required DateTime dtCreated}) = _$_BoardInfo;
  _BoardInfo._() : super._();

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
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoardInfoCopyWith<_BoardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ShareTearOff {
  const _$ShareTearOff();

  _Share call({required Profile sharer, required int level}) {
    return _Share(
      sharer: sharer,
      level: level,
    );
  }
}

/// @nodoc
const $Share = _$ShareTearOff();

/// @nodoc
mixin _$Share {
  Profile get sharer => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShareCopyWith<Share> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareCopyWith<$Res> {
  factory $ShareCopyWith(Share value, $Res Function(Share) then) =
      _$ShareCopyWithImpl<$Res>;
  $Res call({Profile sharer, int level});

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
    Object? level = freezed,
  }) {
    return _then(_value.copyWith(
      sharer: sharer == freezed
          ? _value.sharer
          : sharer // ignore: cast_nullable_to_non_nullable
              as Profile,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
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
  $Res call({Profile sharer, int level});

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
    Object? level = freezed,
  }) {
    return _then(_Share(
      sharer: sharer == freezed
          ? _value.sharer
          : sharer // ignore: cast_nullable_to_non_nullable
              as Profile,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Share extends _Share {
  _$_Share({required this.sharer, required this.level}) : super._();

  @override
  final Profile sharer;
  @override
  final int level;

  @override
  String toString() {
    return 'Share(sharer: $sharer, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Share &&
            (identical(other.sharer, sharer) ||
                const DeepCollectionEquality().equals(other.sharer, sharer)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sharer) ^
      const DeepCollectionEquality().hash(level);

  @JsonKey(ignore: true)
  @override
  _$ShareCopyWith<_Share> get copyWith =>
      __$ShareCopyWithImpl<_Share>(this, _$identity);
}

abstract class _Share extends Share {
  factory _Share({required Profile sharer, required int level}) = _$_Share;
  _Share._() : super._();

  @override
  Profile get sharer => throw _privateConstructorUsedError;
  @override
  int get level => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShareCopyWith<_Share> get copyWith => throw _privateConstructorUsedError;
}
