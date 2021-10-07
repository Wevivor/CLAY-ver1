// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Notice _$NoticeFromJson(Map<String, dynamic> json) {
  return _Notice.fromJson(json);
}

/// @nodoc
class _$NoticeTearOff {
  const _$NoticeTearOff();

  _Notice call(
      {String? id,
      required ProfileDto author,
      required FaqInfo info,
      List<String?>? thumbnails}) {
    return _Notice(
      id: id,
      author: author,
      info: info,
      thumbnails: thumbnails,
    );
  }

  Notice fromJson(Map<String, Object> json) {
    return Notice.fromJson(json);
  }
}

/// @nodoc
const $Notice = _$NoticeTearOff();

/// @nodoc
mixin _$Notice {
  String? get id => throw _privateConstructorUsedError;
  ProfileDto get author => throw _privateConstructorUsedError;
  FaqInfo get info => throw _privateConstructorUsedError;
  List<String?>? get thumbnails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeCopyWith<Notice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeCopyWith<$Res> {
  factory $NoticeCopyWith(Notice value, $Res Function(Notice) then) =
      _$NoticeCopyWithImpl<$Res>;
  $Res call(
      {String? id, ProfileDto author, FaqInfo info, List<String?>? thumbnails});

  $ProfileDtoCopyWith<$Res> get author;
  $FaqInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$NoticeCopyWithImpl<$Res> implements $NoticeCopyWith<$Res> {
  _$NoticeCopyWithImpl(this._value, this._then);

  final Notice _value;
  // ignore: unused_field
  final $Res Function(Notice) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? info = freezed,
    Object? thumbnails = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as FaqInfo,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }

  @override
  $ProfileDtoCopyWith<$Res> get author {
    return $ProfileDtoCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }

  @override
  $FaqInfoCopyWith<$Res> get info {
    return $FaqInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$NoticeCopyWith<$Res> implements $NoticeCopyWith<$Res> {
  factory _$NoticeCopyWith(_Notice value, $Res Function(_Notice) then) =
      __$NoticeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id, ProfileDto author, FaqInfo info, List<String?>? thumbnails});

  @override
  $ProfileDtoCopyWith<$Res> get author;
  @override
  $FaqInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$NoticeCopyWithImpl<$Res> extends _$NoticeCopyWithImpl<$Res>
    implements _$NoticeCopyWith<$Res> {
  __$NoticeCopyWithImpl(_Notice _value, $Res Function(_Notice) _then)
      : super(_value, (v) => _then(v as _Notice));

  @override
  _Notice get _value => super._value as _Notice;

  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? info = freezed,
    Object? thumbnails = freezed,
  }) {
    return _then(_Notice(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as FaqInfo,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Notice extends _Notice {
  _$_Notice(
      {this.id, required this.author, required this.info, this.thumbnails})
      : super._();

  factory _$_Notice.fromJson(Map<String, dynamic> json) =>
      _$_$_NoticeFromJson(json);

  @override
  final String? id;
  @override
  final ProfileDto author;
  @override
  final FaqInfo info;
  @override
  final List<String?>? thumbnails;

  @override
  String toString() {
    return 'Notice(id: $id, author: $author, info: $info, thumbnails: $thumbnails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Notice &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.thumbnails, thumbnails) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnails, thumbnails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(thumbnails);

  @JsonKey(ignore: true)
  @override
  _$NoticeCopyWith<_Notice> get copyWith =>
      __$NoticeCopyWithImpl<_Notice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NoticeToJson(this);
  }
}

abstract class _Notice extends Notice {
  factory _Notice(
      {String? id,
      required ProfileDto author,
      required FaqInfo info,
      List<String?>? thumbnails}) = _$_Notice;
  _Notice._() : super._();

  factory _Notice.fromJson(Map<String, dynamic> json) = _$_Notice.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  ProfileDto get author => throw _privateConstructorUsedError;
  @override
  FaqInfo get info => throw _privateConstructorUsedError;
  @override
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoticeCopyWith<_Notice> get copyWith => throw _privateConstructorUsedError;
}
