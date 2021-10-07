// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'post_utils_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentDto _$CommentDtoFromJson(Map<String, dynamic> json) {
  return _CommentDto.fromJson(json);
}

/// @nodoc
class _$CommentDtoTearOff {
  const _$CommentDtoTearOff();

  _CommentDto call(
      {required ProfileDto profile,
      required CommnetInfoDto info,
      required String postId,
      String? thumnail,
      required int treeIndex,
      String? kind}) {
    return _CommentDto(
      profile: profile,
      info: info,
      postId: postId,
      thumnail: thumnail,
      treeIndex: treeIndex,
      kind: kind,
    );
  }

  CommentDto fromJson(Map<String, Object> json) {
    return CommentDto.fromJson(json);
  }
}

/// @nodoc
const $CommentDto = _$CommentDtoTearOff();

/// @nodoc
mixin _$CommentDto {
  ProfileDto get profile => throw _privateConstructorUsedError; //작성자
  CommnetInfoDto get info => throw _privateConstructorUsedError; //기본정보
  String get postId => throw _privateConstructorUsedError;
  String? get thumnail => throw _privateConstructorUsedError;
  int get treeIndex => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentDtoCopyWith<CommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDtoCopyWith<$Res> {
  factory $CommentDtoCopyWith(
          CommentDto value, $Res Function(CommentDto) then) =
      _$CommentDtoCopyWithImpl<$Res>;
  $Res call(
      {ProfileDto profile,
      CommnetInfoDto info,
      String postId,
      String? thumnail,
      int treeIndex,
      String? kind});

  $ProfileDtoCopyWith<$Res> get profile;
  $CommnetInfoDtoCopyWith<$Res> get info;
}

/// @nodoc
class _$CommentDtoCopyWithImpl<$Res> implements $CommentDtoCopyWith<$Res> {
  _$CommentDtoCopyWithImpl(this._value, this._then);

  final CommentDto _value;
  // ignore: unused_field
  final $Res Function(CommentDto) _then;

  @override
  $Res call({
    Object? profile = freezed,
    Object? info = freezed,
    Object? postId = freezed,
    Object? thumnail = freezed,
    Object? treeIndex = freezed,
    Object? kind = freezed,
  }) {
    return _then(_value.copyWith(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CommnetInfoDto,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      thumnail: thumnail == freezed
          ? _value.thumnail
          : thumnail // ignore: cast_nullable_to_non_nullable
              as String?,
      treeIndex: treeIndex == freezed
          ? _value.treeIndex
          : treeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ProfileDtoCopyWith<$Res> get profile {
    return $ProfileDtoCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $CommnetInfoDtoCopyWith<$Res> get info {
    return $CommnetInfoDtoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$CommentDtoCopyWith<$Res> implements $CommentDtoCopyWith<$Res> {
  factory _$CommentDtoCopyWith(
          _CommentDto value, $Res Function(_CommentDto) then) =
      __$CommentDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {ProfileDto profile,
      CommnetInfoDto info,
      String postId,
      String? thumnail,
      int treeIndex,
      String? kind});

  @override
  $ProfileDtoCopyWith<$Res> get profile;
  @override
  $CommnetInfoDtoCopyWith<$Res> get info;
}

/// @nodoc
class __$CommentDtoCopyWithImpl<$Res> extends _$CommentDtoCopyWithImpl<$Res>
    implements _$CommentDtoCopyWith<$Res> {
  __$CommentDtoCopyWithImpl(
      _CommentDto _value, $Res Function(_CommentDto) _then)
      : super(_value, (v) => _then(v as _CommentDto));

  @override
  _CommentDto get _value => super._value as _CommentDto;

  @override
  $Res call({
    Object? profile = freezed,
    Object? info = freezed,
    Object? postId = freezed,
    Object? thumnail = freezed,
    Object? treeIndex = freezed,
    Object? kind = freezed,
  }) {
    return _then(_CommentDto(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CommnetInfoDto,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      thumnail: thumnail == freezed
          ? _value.thumnail
          : thumnail // ignore: cast_nullable_to_non_nullable
              as String?,
      treeIndex: treeIndex == freezed
          ? _value.treeIndex
          : treeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CommentDto extends _CommentDto {
  _$_CommentDto(
      {required this.profile,
      required this.info,
      required this.postId,
      this.thumnail,
      required this.treeIndex,
      this.kind})
      : super._();

  factory _$_CommentDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentDtoFromJson(json);

  @override
  final ProfileDto profile;
  @override //작성자
  final CommnetInfoDto info;
  @override //기본정보
  final String postId;
  @override
  final String? thumnail;
  @override
  final int treeIndex;
  @override
  final String? kind;

  @override
  String toString() {
    return 'CommentDto(profile: $profile, info: $info, postId: $postId, thumnail: $thumnail, treeIndex: $treeIndex, kind: $kind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentDto &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.thumnail, thumnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumnail, thumnail)) &&
            (identical(other.treeIndex, treeIndex) ||
                const DeepCollectionEquality()
                    .equals(other.treeIndex, treeIndex)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(thumnail) ^
      const DeepCollectionEquality().hash(treeIndex) ^
      const DeepCollectionEquality().hash(kind);

  @JsonKey(ignore: true)
  @override
  _$CommentDtoCopyWith<_CommentDto> get copyWith =>
      __$CommentDtoCopyWithImpl<_CommentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentDtoToJson(this);
  }
}

abstract class _CommentDto extends CommentDto {
  factory _CommentDto(
      {required ProfileDto profile,
      required CommnetInfoDto info,
      required String postId,
      String? thumnail,
      required int treeIndex,
      String? kind}) = _$_CommentDto;
  _CommentDto._() : super._();

  factory _CommentDto.fromJson(Map<String, dynamic> json) =
      _$_CommentDto.fromJson;

  @override
  ProfileDto get profile => throw _privateConstructorUsedError;
  @override //작성자
  CommnetInfoDto get info => throw _privateConstructorUsedError;
  @override //기본정보
  String get postId => throw _privateConstructorUsedError;
  @override
  String? get thumnail => throw _privateConstructorUsedError;
  @override
  int get treeIndex => throw _privateConstructorUsedError;
  @override
  String? get kind => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommentDtoCopyWith<_CommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

CommnetInfoDto _$CommnetInfoDtoFromJson(Map<String, dynamic> json) {
  return _CommnetInfoDto.fromJson(json);
}

/// @nodoc
class _$CommnetInfoDtoTearOff {
  const _$CommnetInfoDtoTearOff();

  _CommnetInfoDto call(
      {required String title,
      required String subject,
      required int cntVisit,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated}) {
    return _CommnetInfoDto(
      title: title,
      subject: subject,
      cntVisit: cntVisit,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
    );
  }

  CommnetInfoDto fromJson(Map<String, Object> json) {
    return CommnetInfoDto.fromJson(json);
  }
}

/// @nodoc
const $CommnetInfoDto = _$CommnetInfoDtoTearOff();

/// @nodoc
mixin _$CommnetInfoDto {
  String get title => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  int get cntVisit => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommnetInfoDtoCopyWith<CommnetInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommnetInfoDtoCopyWith<$Res> {
  factory $CommnetInfoDtoCopyWith(
          CommnetInfoDto value, $Res Function(CommnetInfoDto) then) =
      _$CommnetInfoDtoCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String subject,
      int cntVisit,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated});
}

/// @nodoc
class _$CommnetInfoDtoCopyWithImpl<$Res>
    implements $CommnetInfoDtoCopyWith<$Res> {
  _$CommnetInfoDtoCopyWithImpl(this._value, this._then);

  final CommnetInfoDto _value;
  // ignore: unused_field
  final $Res Function(CommnetInfoDto) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subject = freezed,
    Object? cntVisit = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      cntVisit: cntVisit == freezed
          ? _value.cntVisit
          : cntVisit // ignore: cast_nullable_to_non_nullable
              as int,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dtUpdated: dtUpdated == freezed
          ? _value.dtUpdated
          : dtUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$CommnetInfoDtoCopyWith<$Res>
    implements $CommnetInfoDtoCopyWith<$Res> {
  factory _$CommnetInfoDtoCopyWith(
          _CommnetInfoDto value, $Res Function(_CommnetInfoDto) then) =
      __$CommnetInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String subject,
      int cntVisit,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated});
}

/// @nodoc
class __$CommnetInfoDtoCopyWithImpl<$Res>
    extends _$CommnetInfoDtoCopyWithImpl<$Res>
    implements _$CommnetInfoDtoCopyWith<$Res> {
  __$CommnetInfoDtoCopyWithImpl(
      _CommnetInfoDto _value, $Res Function(_CommnetInfoDto) _then)
      : super(_value, (v) => _then(v as _CommnetInfoDto));

  @override
  _CommnetInfoDto get _value => super._value as _CommnetInfoDto;

  @override
  $Res call({
    Object? title = freezed,
    Object? subject = freezed,
    Object? cntVisit = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_CommnetInfoDto(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      cntVisit: cntVisit == freezed
          ? _value.cntVisit
          : cntVisit // ignore: cast_nullable_to_non_nullable
              as int,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dtUpdated: dtUpdated == freezed
          ? _value.dtUpdated
          : dtUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CommnetInfoDto extends _CommnetInfoDto {
  _$_CommnetInfoDto(
      {required this.title,
      required this.subject,
      required this.cntVisit,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtUpdated})
      : super._();

  factory _$_CommnetInfoDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CommnetInfoDtoFromJson(json);

  @override
  final String title;
  @override
  final String subject;
  @override
  final int cntVisit;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtUpdated;

  @override
  String toString() {
    return 'CommnetInfoDto(title: $title, subject: $subject, cntVisit: $cntVisit, dtCreated: $dtCreated, dtUpdated: $dtUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommnetInfoDto &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.cntVisit, cntVisit) ||
                const DeepCollectionEquality()
                    .equals(other.cntVisit, cntVisit)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)) &&
            (identical(other.dtUpdated, dtUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.dtUpdated, dtUpdated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(cntVisit) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated);

  @JsonKey(ignore: true)
  @override
  _$CommnetInfoDtoCopyWith<_CommnetInfoDto> get copyWith =>
      __$CommnetInfoDtoCopyWithImpl<_CommnetInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommnetInfoDtoToJson(this);
  }
}

abstract class _CommnetInfoDto extends CommnetInfoDto {
  factory _CommnetInfoDto(
      {required String title,
      required String subject,
      required int cntVisit,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated}) = _$_CommnetInfoDto;
  _CommnetInfoDto._() : super._();

  factory _CommnetInfoDto.fromJson(Map<String, dynamic> json) =
      _$_CommnetInfoDto.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get subject => throw _privateConstructorUsedError;
  @override
  int get cntVisit => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommnetInfoDtoCopyWith<_CommnetInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

FollowDto _$FollowDtoFromJson(Map<String, dynamic> json) {
  return _FollowDto.fromJson(json);
}

/// @nodoc
class _$FollowDtoTearOff {
  const _$FollowDtoTearOff();

  _FollowDto call(
      {String? id,
      required ProfileDto source,
      required ProfileDto target,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) {
    return _FollowDto(
      id: id,
      source: source,
      target: target,
      dtCreated: dtCreated,
    );
  }

  FollowDto fromJson(Map<String, Object> json) {
    return FollowDto.fromJson(json);
  }
}

/// @nodoc
const $FollowDto = _$FollowDtoTearOff();

/// @nodoc
mixin _$FollowDto {
  String? get id => throw _privateConstructorUsedError;
  ProfileDto get source => throw _privateConstructorUsedError;
  ProfileDto get target =>
      throw _privateConstructorUsedError; // required bool? isFollow,
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowDtoCopyWith<FollowDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowDtoCopyWith<$Res> {
  factory $FollowDtoCopyWith(FollowDto value, $Res Function(FollowDto) then) =
      _$FollowDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      ProfileDto source,
      ProfileDto target,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});

  $ProfileDtoCopyWith<$Res> get source;
  $ProfileDtoCopyWith<$Res> get target;
}

/// @nodoc
class _$FollowDtoCopyWithImpl<$Res> implements $FollowDtoCopyWith<$Res> {
  _$FollowDtoCopyWithImpl(this._value, this._then);

  final FollowDto _value;
  // ignore: unused_field
  final $Res Function(FollowDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? source = freezed,
    Object? target = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ProfileDtoCopyWith<$Res> get source {
    return $ProfileDtoCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value));
    });
  }

  @override
  $ProfileDtoCopyWith<$Res> get target {
    return $ProfileDtoCopyWith<$Res>(_value.target, (value) {
      return _then(_value.copyWith(target: value));
    });
  }
}

/// @nodoc
abstract class _$FollowDtoCopyWith<$Res> implements $FollowDtoCopyWith<$Res> {
  factory _$FollowDtoCopyWith(
          _FollowDto value, $Res Function(_FollowDto) then) =
      __$FollowDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      ProfileDto source,
      ProfileDto target,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});

  @override
  $ProfileDtoCopyWith<$Res> get source;
  @override
  $ProfileDtoCopyWith<$Res> get target;
}

/// @nodoc
class __$FollowDtoCopyWithImpl<$Res> extends _$FollowDtoCopyWithImpl<$Res>
    implements _$FollowDtoCopyWith<$Res> {
  __$FollowDtoCopyWithImpl(_FollowDto _value, $Res Function(_FollowDto) _then)
      : super(_value, (v) => _then(v as _FollowDto));

  @override
  _FollowDto get _value => super._value as _FollowDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? source = freezed,
    Object? target = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_FollowDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_FollowDto extends _FollowDto {
  _$_FollowDto(
      {this.id,
      required this.source,
      required this.target,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated})
      : super._();

  factory _$_FollowDto.fromJson(Map<String, dynamic> json) =>
      _$_$_FollowDtoFromJson(json);

  @override
  final String? id;
  @override
  final ProfileDto source;
  @override
  final ProfileDto target;
  @override // required bool? isFollow,
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;

  @override
  String toString() {
    return 'FollowDto(id: $id, source: $source, target: $target, dtCreated: $dtCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FollowDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(target) ^
      const DeepCollectionEquality().hash(dtCreated);

  @JsonKey(ignore: true)
  @override
  _$FollowDtoCopyWith<_FollowDto> get copyWith =>
      __$FollowDtoCopyWithImpl<_FollowDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FollowDtoToJson(this);
  }
}

abstract class _FollowDto extends FollowDto {
  factory _FollowDto(
      {String? id,
      required ProfileDto source,
      required ProfileDto target,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) = _$_FollowDto;
  _FollowDto._() : super._();

  factory _FollowDto.fromJson(Map<String, dynamic> json) =
      _$_FollowDto.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  ProfileDto get source => throw _privateConstructorUsedError;
  @override
  ProfileDto get target => throw _privateConstructorUsedError;
  @override // required bool? isFollow,
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FollowDtoCopyWith<_FollowDto> get copyWith =>
      throw _privateConstructorUsedError;
}

BookmarkDto _$BookmarkDtoFromJson(Map<String, dynamic> json) {
  return _BookmarkDto.fromJson(json);
}

/// @nodoc
class _$BookmarkDtoTearOff {
  const _$BookmarkDtoTearOff();

  _BookmarkDto call(
      {String? id,
      required ProfileShortDto owner,
      required ProfileShortDto profile,
      required PostSummaryDto info,
      required String postId,
      String? thumnail,
      String? kind,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) {
    return _BookmarkDto(
      id: id,
      owner: owner,
      profile: profile,
      info: info,
      postId: postId,
      thumnail: thumnail,
      kind: kind,
      dtCreated: dtCreated,
    );
  }

  BookmarkDto fromJson(Map<String, Object> json) {
    return BookmarkDto.fromJson(json);
  }
}

/// @nodoc
const $BookmarkDto = _$BookmarkDtoTearOff();

/// @nodoc
mixin _$BookmarkDto {
  String? get id => throw _privateConstructorUsedError;
  ProfileShortDto get owner => throw _privateConstructorUsedError; //작성자
  ProfileShortDto get profile => throw _privateConstructorUsedError; //북마크 하는 위치
  PostSummaryDto get info => throw _privateConstructorUsedError; //기본정보
  String get postId => throw _privateConstructorUsedError;
  String? get thumnail => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError; //종류
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarkDtoCopyWith<BookmarkDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkDtoCopyWith<$Res> {
  factory $BookmarkDtoCopyWith(
          BookmarkDto value, $Res Function(BookmarkDto) then) =
      _$BookmarkDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      ProfileShortDto owner,
      ProfileShortDto profile,
      PostSummaryDto info,
      String postId,
      String? thumnail,
      String? kind,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});

  $ProfileShortDtoCopyWith<$Res> get owner;
  $ProfileShortDtoCopyWith<$Res> get profile;
  $PostSummaryDtoCopyWith<$Res> get info;
}

/// @nodoc
class _$BookmarkDtoCopyWithImpl<$Res> implements $BookmarkDtoCopyWith<$Res> {
  _$BookmarkDtoCopyWithImpl(this._value, this._then);

  final BookmarkDto _value;
  // ignore: unused_field
  final $Res Function(BookmarkDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? owner = freezed,
    Object? profile = freezed,
    Object? info = freezed,
    Object? postId = freezed,
    Object? thumnail = freezed,
    Object? kind = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileShortDto,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileShortDto,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PostSummaryDto,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      thumnail: thumnail == freezed
          ? _value.thumnail
          : thumnail // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ProfileShortDtoCopyWith<$Res> get owner {
    return $ProfileShortDtoCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }

  @override
  $ProfileShortDtoCopyWith<$Res> get profile {
    return $ProfileShortDtoCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $PostSummaryDtoCopyWith<$Res> get info {
    return $PostSummaryDtoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$BookmarkDtoCopyWith<$Res>
    implements $BookmarkDtoCopyWith<$Res> {
  factory _$BookmarkDtoCopyWith(
          _BookmarkDto value, $Res Function(_BookmarkDto) then) =
      __$BookmarkDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      ProfileShortDto owner,
      ProfileShortDto profile,
      PostSummaryDto info,
      String postId,
      String? thumnail,
      String? kind,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});

  @override
  $ProfileShortDtoCopyWith<$Res> get owner;
  @override
  $ProfileShortDtoCopyWith<$Res> get profile;
  @override
  $PostSummaryDtoCopyWith<$Res> get info;
}

/// @nodoc
class __$BookmarkDtoCopyWithImpl<$Res> extends _$BookmarkDtoCopyWithImpl<$Res>
    implements _$BookmarkDtoCopyWith<$Res> {
  __$BookmarkDtoCopyWithImpl(
      _BookmarkDto _value, $Res Function(_BookmarkDto) _then)
      : super(_value, (v) => _then(v as _BookmarkDto));

  @override
  _BookmarkDto get _value => super._value as _BookmarkDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? owner = freezed,
    Object? profile = freezed,
    Object? info = freezed,
    Object? postId = freezed,
    Object? thumnail = freezed,
    Object? kind = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_BookmarkDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileShortDto,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileShortDto,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PostSummaryDto,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      thumnail: thumnail == freezed
          ? _value.thumnail
          : thumnail // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BookmarkDto extends _BookmarkDto {
  _$_BookmarkDto(
      {this.id,
      required this.owner,
      required this.profile,
      required this.info,
      required this.postId,
      this.thumnail,
      this.kind,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated})
      : super._();

  factory _$_BookmarkDto.fromJson(Map<String, dynamic> json) =>
      _$_$_BookmarkDtoFromJson(json);

  @override
  final String? id;
  @override
  final ProfileShortDto owner;
  @override //작성자
  final ProfileShortDto profile;
  @override //북마크 하는 위치
  final PostSummaryDto info;
  @override //기본정보
  final String postId;
  @override
  final String? thumnail;
  @override
  final String? kind;
  @override //종류
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;

  @override
  String toString() {
    return 'BookmarkDto(id: $id, owner: $owner, profile: $profile, info: $info, postId: $postId, thumnail: $thumnail, kind: $kind, dtCreated: $dtCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookmarkDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.thumnail, thumnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumnail, thumnail)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(thumnail) ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(dtCreated);

  @JsonKey(ignore: true)
  @override
  _$BookmarkDtoCopyWith<_BookmarkDto> get copyWith =>
      __$BookmarkDtoCopyWithImpl<_BookmarkDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BookmarkDtoToJson(this);
  }
}

abstract class _BookmarkDto extends BookmarkDto {
  factory _BookmarkDto(
      {String? id,
      required ProfileShortDto owner,
      required ProfileShortDto profile,
      required PostSummaryDto info,
      required String postId,
      String? thumnail,
      String? kind,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) = _$_BookmarkDto;
  _BookmarkDto._() : super._();

  factory _BookmarkDto.fromJson(Map<String, dynamic> json) =
      _$_BookmarkDto.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  ProfileShortDto get owner => throw _privateConstructorUsedError;
  @override //작성자
  ProfileShortDto get profile => throw _privateConstructorUsedError;
  @override //북마크 하는 위치
  PostSummaryDto get info => throw _privateConstructorUsedError;
  @override //기본정보
  String get postId => throw _privateConstructorUsedError;
  @override
  String? get thumnail => throw _privateConstructorUsedError;
  @override
  String? get kind => throw _privateConstructorUsedError;
  @override //종류
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookmarkDtoCopyWith<_BookmarkDto> get copyWith =>
      throw _privateConstructorUsedError;
}

FavorDto _$FavorDtoFromJson(Map<String, dynamic> json) {
  return _FavorDto.fromJson(json);
}

/// @nodoc
class _$FavorDtoTearOff {
  const _$FavorDtoTearOff();

  _FavorDto call(
      {String? id,
      required ProfileShortDto owner,
      required ProfileShortDto profile,
      required PostSummaryDto info,
      required String postId,
      String? thumnail,
      String? kind,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) {
    return _FavorDto(
      id: id,
      owner: owner,
      profile: profile,
      info: info,
      postId: postId,
      thumnail: thumnail,
      kind: kind,
      dtCreated: dtCreated,
    );
  }

  FavorDto fromJson(Map<String, Object> json) {
    return FavorDto.fromJson(json);
  }
}

/// @nodoc
const $FavorDto = _$FavorDtoTearOff();

/// @nodoc
mixin _$FavorDto {
  String? get id => throw _privateConstructorUsedError;
  ProfileShortDto get owner => throw _privateConstructorUsedError; //작성자
  ProfileShortDto get profile => throw _privateConstructorUsedError; //북마크 하는 위치
  PostSummaryDto get info => throw _privateConstructorUsedError; //기본정보
  String get postId => throw _privateConstructorUsedError;
  String? get thumnail => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError; //종류
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavorDtoCopyWith<FavorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavorDtoCopyWith<$Res> {
  factory $FavorDtoCopyWith(FavorDto value, $Res Function(FavorDto) then) =
      _$FavorDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      ProfileShortDto owner,
      ProfileShortDto profile,
      PostSummaryDto info,
      String postId,
      String? thumnail,
      String? kind,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});

  $ProfileShortDtoCopyWith<$Res> get owner;
  $ProfileShortDtoCopyWith<$Res> get profile;
  $PostSummaryDtoCopyWith<$Res> get info;
}

/// @nodoc
class _$FavorDtoCopyWithImpl<$Res> implements $FavorDtoCopyWith<$Res> {
  _$FavorDtoCopyWithImpl(this._value, this._then);

  final FavorDto _value;
  // ignore: unused_field
  final $Res Function(FavorDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? owner = freezed,
    Object? profile = freezed,
    Object? info = freezed,
    Object? postId = freezed,
    Object? thumnail = freezed,
    Object? kind = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileShortDto,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileShortDto,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PostSummaryDto,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      thumnail: thumnail == freezed
          ? _value.thumnail
          : thumnail // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ProfileShortDtoCopyWith<$Res> get owner {
    return $ProfileShortDtoCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }

  @override
  $ProfileShortDtoCopyWith<$Res> get profile {
    return $ProfileShortDtoCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $PostSummaryDtoCopyWith<$Res> get info {
    return $PostSummaryDtoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$FavorDtoCopyWith<$Res> implements $FavorDtoCopyWith<$Res> {
  factory _$FavorDtoCopyWith(_FavorDto value, $Res Function(_FavorDto) then) =
      __$FavorDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      ProfileShortDto owner,
      ProfileShortDto profile,
      PostSummaryDto info,
      String postId,
      String? thumnail,
      String? kind,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated});

  @override
  $ProfileShortDtoCopyWith<$Res> get owner;
  @override
  $ProfileShortDtoCopyWith<$Res> get profile;
  @override
  $PostSummaryDtoCopyWith<$Res> get info;
}

/// @nodoc
class __$FavorDtoCopyWithImpl<$Res> extends _$FavorDtoCopyWithImpl<$Res>
    implements _$FavorDtoCopyWith<$Res> {
  __$FavorDtoCopyWithImpl(_FavorDto _value, $Res Function(_FavorDto) _then)
      : super(_value, (v) => _then(v as _FavorDto));

  @override
  _FavorDto get _value => super._value as _FavorDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? owner = freezed,
    Object? profile = freezed,
    Object? info = freezed,
    Object? postId = freezed,
    Object? thumnail = freezed,
    Object? kind = freezed,
    Object? dtCreated = freezed,
  }) {
    return _then(_FavorDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileShortDto,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileShortDto,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PostSummaryDto,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      thumnail: thumnail == freezed
          ? _value.thumnail
          : thumnail // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_FavorDto extends _FavorDto {
  _$_FavorDto(
      {this.id,
      required this.owner,
      required this.profile,
      required this.info,
      required this.postId,
      this.thumnail,
      this.kind,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated})
      : super._();

  factory _$_FavorDto.fromJson(Map<String, dynamic> json) =>
      _$_$_FavorDtoFromJson(json);

  @override
  final String? id;
  @override
  final ProfileShortDto owner;
  @override //작성자
  final ProfileShortDto profile;
  @override //북마크 하는 위치
  final PostSummaryDto info;
  @override //기본정보
  final String postId;
  @override
  final String? thumnail;
  @override
  final String? kind;
  @override //종류
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;

  @override
  String toString() {
    return 'FavorDto(id: $id, owner: $owner, profile: $profile, info: $info, postId: $postId, thumnail: $thumnail, kind: $kind, dtCreated: $dtCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavorDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.thumnail, thumnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumnail, thumnail)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(thumnail) ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(dtCreated);

  @JsonKey(ignore: true)
  @override
  _$FavorDtoCopyWith<_FavorDto> get copyWith =>
      __$FavorDtoCopyWithImpl<_FavorDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FavorDtoToJson(this);
  }
}

abstract class _FavorDto extends FavorDto {
  factory _FavorDto(
      {String? id,
      required ProfileShortDto owner,
      required ProfileShortDto profile,
      required PostSummaryDto info,
      required String postId,
      String? thumnail,
      String? kind,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated}) = _$_FavorDto;
  _FavorDto._() : super._();

  factory _FavorDto.fromJson(Map<String, dynamic> json) = _$_FavorDto.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  ProfileShortDto get owner => throw _privateConstructorUsedError;
  @override //작성자
  ProfileShortDto get profile => throw _privateConstructorUsedError;
  @override //북마크 하는 위치
  PostSummaryDto get info => throw _privateConstructorUsedError;
  @override //기본정보
  String get postId => throw _privateConstructorUsedError;
  @override
  String? get thumnail => throw _privateConstructorUsedError;
  @override
  String? get kind => throw _privateConstructorUsedError;
  @override //종류
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FavorDtoCopyWith<_FavorDto> get copyWith =>
      throw _privateConstructorUsedError;
}
