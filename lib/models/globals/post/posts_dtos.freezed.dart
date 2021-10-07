// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'posts_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostDto _$PostDtoFromJson(Map<String, dynamic> json) {
  return _PostDto.fromJson(json);
}

/// @nodoc
class _$PostDtoTearOff {
  const _$PostDtoTearOff();

  _PostDto call(
      {String? id,
      required PostInfoDto info,
      required ProfileDto profile,
      List<ProductInfoDto?>? product,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated,
      ListCntDto? tags,
      String? kind}) {
    return _PostDto(
      id: id,
      info: info,
      profile: profile,
      product: product,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
      tags: tags,
      kind: kind,
    );
  }

  PostDto fromJson(Map<String, Object> json) {
    return PostDto.fromJson(json);
  }
}

/// @nodoc
const $PostDto = _$PostDtoTearOff();

/// @nodoc
mixin _$PostDto {
  String? get id => throw _privateConstructorUsedError;
  PostInfoDto get info => throw _privateConstructorUsedError;
  ProfileDto get profile => throw _privateConstructorUsedError;
  List<ProductInfoDto?>? get product =>
      throw _privateConstructorUsedError; // PostDetail? detail,
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  ListCntDto? get tags => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDtoCopyWith<PostDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDtoCopyWith<$Res> {
  factory $PostDtoCopyWith(PostDto value, $Res Function(PostDto) then) =
      _$PostDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      PostInfoDto info,
      ProfileDto profile,
      List<ProductInfoDto?>? product,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated,
      ListCntDto? tags,
      String? kind});

  $PostInfoDtoCopyWith<$Res> get info;
  $ProfileDtoCopyWith<$Res> get profile;
  $ListCntDtoCopyWith<$Res>? get tags;
}

/// @nodoc
class _$PostDtoCopyWithImpl<$Res> implements $PostDtoCopyWith<$Res> {
  _$PostDtoCopyWithImpl(this._value, this._then);

  final PostDto _value;
  // ignore: unused_field
  final $Res Function(PostDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? info = freezed,
    Object? profile = freezed,
    Object? product = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
    Object? tags = freezed,
    Object? kind = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PostInfoDto,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ProductInfoDto?>?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dtUpdated: dtUpdated == freezed
          ? _value.dtUpdated
          : dtUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as ListCntDto?,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $PostInfoDtoCopyWith<$Res> get info {
    return $PostInfoDtoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $ProfileDtoCopyWith<$Res> get profile {
    return $ProfileDtoCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $ListCntDtoCopyWith<$Res>? get tags {
    if (_value.tags == null) {
      return null;
    }

    return $ListCntDtoCopyWith<$Res>(_value.tags!, (value) {
      return _then(_value.copyWith(tags: value));
    });
  }
}

/// @nodoc
abstract class _$PostDtoCopyWith<$Res> implements $PostDtoCopyWith<$Res> {
  factory _$PostDtoCopyWith(_PostDto value, $Res Function(_PostDto) then) =
      __$PostDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      PostInfoDto info,
      ProfileDto profile,
      List<ProductInfoDto?>? product,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated,
      ListCntDto? tags,
      String? kind});

  @override
  $PostInfoDtoCopyWith<$Res> get info;
  @override
  $ProfileDtoCopyWith<$Res> get profile;
  @override
  $ListCntDtoCopyWith<$Res>? get tags;
}

/// @nodoc
class __$PostDtoCopyWithImpl<$Res> extends _$PostDtoCopyWithImpl<$Res>
    implements _$PostDtoCopyWith<$Res> {
  __$PostDtoCopyWithImpl(_PostDto _value, $Res Function(_PostDto) _then)
      : super(_value, (v) => _then(v as _PostDto));

  @override
  _PostDto get _value => super._value as _PostDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? info = freezed,
    Object? profile = freezed,
    Object? product = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
    Object? tags = freezed,
    Object? kind = freezed,
  }) {
    return _then(_PostDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PostInfoDto,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ProductInfoDto?>?,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dtUpdated: dtUpdated == freezed
          ? _value.dtUpdated
          : dtUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as ListCntDto?,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PostDto extends _PostDto {
  _$_PostDto(
      {this.id,
      required this.info,
      required this.profile,
      this.product,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtUpdated,
      this.tags,
      this.kind})
      : super._();

  factory _$_PostDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PostDtoFromJson(json);

  @override
  final String? id;
  @override
  final PostInfoDto info;
  @override
  final ProfileDto profile;
  @override
  final List<ProductInfoDto?>? product;
  @override // PostDetail? detail,
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtUpdated;
  @override
  final ListCntDto? tags;
  @override
  final String? kind;

  @override
  String toString() {
    return 'PostDto(id: $id, info: $info, profile: $profile, product: $product, dtCreated: $dtCreated, dtUpdated: $dtUpdated, tags: $tags, kind: $kind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)) &&
            (identical(other.dtUpdated, dtUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.dtUpdated, dtUpdated)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(kind);

  @JsonKey(ignore: true)
  @override
  _$PostDtoCopyWith<_PostDto> get copyWith =>
      __$PostDtoCopyWithImpl<_PostDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostDtoToJson(this);
  }
}

abstract class _PostDto extends PostDto {
  factory _PostDto(
      {String? id,
      required PostInfoDto info,
      required ProfileDto profile,
      List<ProductInfoDto?>? product,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated,
      ListCntDto? tags,
      String? kind}) = _$_PostDto;
  _PostDto._() : super._();

  factory _PostDto.fromJson(Map<String, dynamic> json) = _$_PostDto.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  PostInfoDto get info => throw _privateConstructorUsedError;
  @override
  ProfileDto get profile => throw _privateConstructorUsedError;
  @override
  List<ProductInfoDto?>? get product => throw _privateConstructorUsedError;
  @override // PostDetail? detail,
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  ListCntDto? get tags => throw _privateConstructorUsedError;
  @override
  String? get kind => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostDtoCopyWith<_PostDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PostDetailDto _$PostDetailDtoFromJson(Map<String, dynamic> json) {
  return _PostDetailDto.fromJson(json);
}

/// @nodoc
class _$PostDetailDtoTearOff {
  const _$PostDetailDtoTearOff();

  _PostDetailDto call(
      {required int level,
      String? brand,
      double? price,
      double? name,
      String? homeURL,
      String? snsURL}) {
    return _PostDetailDto(
      level: level,
      brand: brand,
      price: price,
      name: name,
      homeURL: homeURL,
      snsURL: snsURL,
    );
  }

  PostDetailDto fromJson(Map<String, Object> json) {
    return PostDetailDto.fromJson(json);
  }
}

/// @nodoc
const $PostDetailDto = _$PostDetailDtoTearOff();

/// @nodoc
mixin _$PostDetailDto {
  int get level => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get name => throw _privateConstructorUsedError;
  String? get homeURL => throw _privateConstructorUsedError;
  String? get snsURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDetailDtoCopyWith<PostDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDetailDtoCopyWith<$Res> {
  factory $PostDetailDtoCopyWith(
          PostDetailDto value, $Res Function(PostDetailDto) then) =
      _$PostDetailDtoCopyWithImpl<$Res>;
  $Res call(
      {int level,
      String? brand,
      double? price,
      double? name,
      String? homeURL,
      String? snsURL});
}

/// @nodoc
class _$PostDetailDtoCopyWithImpl<$Res>
    implements $PostDetailDtoCopyWith<$Res> {
  _$PostDetailDtoCopyWithImpl(this._value, this._then);

  final PostDetailDto _value;
  // ignore: unused_field
  final $Res Function(PostDetailDto) _then;

  @override
  $Res call({
    Object? level = freezed,
    Object? brand = freezed,
    Object? price = freezed,
    Object? name = freezed,
    Object? homeURL = freezed,
    Object? snsURL = freezed,
  }) {
    return _then(_value.copyWith(
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as double?,
      homeURL: homeURL == freezed
          ? _value.homeURL
          : homeURL // ignore: cast_nullable_to_non_nullable
              as String?,
      snsURL: snsURL == freezed
          ? _value.snsURL
          : snsURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PostDetailDtoCopyWith<$Res>
    implements $PostDetailDtoCopyWith<$Res> {
  factory _$PostDetailDtoCopyWith(
          _PostDetailDto value, $Res Function(_PostDetailDto) then) =
      __$PostDetailDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int level,
      String? brand,
      double? price,
      double? name,
      String? homeURL,
      String? snsURL});
}

/// @nodoc
class __$PostDetailDtoCopyWithImpl<$Res>
    extends _$PostDetailDtoCopyWithImpl<$Res>
    implements _$PostDetailDtoCopyWith<$Res> {
  __$PostDetailDtoCopyWithImpl(
      _PostDetailDto _value, $Res Function(_PostDetailDto) _then)
      : super(_value, (v) => _then(v as _PostDetailDto));

  @override
  _PostDetailDto get _value => super._value as _PostDetailDto;

  @override
  $Res call({
    Object? level = freezed,
    Object? brand = freezed,
    Object? price = freezed,
    Object? name = freezed,
    Object? homeURL = freezed,
    Object? snsURL = freezed,
  }) {
    return _then(_PostDetailDto(
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as double?,
      homeURL: homeURL == freezed
          ? _value.homeURL
          : homeURL // ignore: cast_nullable_to_non_nullable
              as String?,
      snsURL: snsURL == freezed
          ? _value.snsURL
          : snsURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PostDetailDto extends _PostDetailDto {
  _$_PostDetailDto(
      {required this.level,
      this.brand,
      this.price,
      this.name,
      this.homeURL,
      this.snsURL})
      : super._();

  factory _$_PostDetailDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PostDetailDtoFromJson(json);

  @override
  final int level;
  @override
  final String? brand;
  @override
  final double? price;
  @override
  final double? name;
  @override
  final String? homeURL;
  @override
  final String? snsURL;

  @override
  String toString() {
    return 'PostDetailDto(level: $level, brand: $brand, price: $price, name: $name, homeURL: $homeURL, snsURL: $snsURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostDetailDto &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.homeURL, homeURL) ||
                const DeepCollectionEquality()
                    .equals(other.homeURL, homeURL)) &&
            (identical(other.snsURL, snsURL) ||
                const DeepCollectionEquality().equals(other.snsURL, snsURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(homeURL) ^
      const DeepCollectionEquality().hash(snsURL);

  @JsonKey(ignore: true)
  @override
  _$PostDetailDtoCopyWith<_PostDetailDto> get copyWith =>
      __$PostDetailDtoCopyWithImpl<_PostDetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostDetailDtoToJson(this);
  }
}

abstract class _PostDetailDto extends PostDetailDto {
  factory _PostDetailDto(
      {required int level,
      String? brand,
      double? price,
      double? name,
      String? homeURL,
      String? snsURL}) = _$_PostDetailDto;
  _PostDetailDto._() : super._();

  factory _PostDetailDto.fromJson(Map<String, dynamic> json) =
      _$_PostDetailDto.fromJson;

  @override
  int get level => throw _privateConstructorUsedError;
  @override
  String? get brand => throw _privateConstructorUsedError;
  @override
  double? get price => throw _privateConstructorUsedError;
  @override
  double? get name => throw _privateConstructorUsedError;
  @override
  String? get homeURL => throw _privateConstructorUsedError;
  @override
  String? get snsURL => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostDetailDtoCopyWith<_PostDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PostInfoDto _$PostInfoDtoFromJson(Map<String, dynamic> json) {
  return _PostInfoDto.fromJson(json);
}

/// @nodoc
class _$PostInfoDtoTearOff {
  const _$PostInfoDtoTearOff();

  _PostInfoDto call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      required int cntView,
      required int contentKind,
      required ListCntDto bookmark,
      required ListCntDto favorite,
      List<String?>? thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated}) {
    return _PostInfoDto(
      id: id,
      imgUrl: imgUrl,
      uid: uid,
      title: title,
      content: content,
      cntView: cntView,
      contentKind: contentKind,
      bookmark: bookmark,
      favorite: favorite,
      thumbnails: thumbnails,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
    );
  }

  PostInfoDto fromJson(Map<String, Object> json) {
    return PostInfoDto.fromJson(json);
  }
}

/// @nodoc
const $PostInfoDto = _$PostInfoDtoTearOff();

/// @nodoc
mixin _$PostInfoDto {
  String? get id => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  int get cntView => throw _privateConstructorUsedError;
  int get contentKind => throw _privateConstructorUsedError;

  ///북마크
  ListCntDto get bookmark => throw _privateConstructorUsedError;
  ListCntDto get favorite => throw _privateConstructorUsedError;
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostInfoDtoCopyWith<PostInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostInfoDtoCopyWith<$Res> {
  factory $PostInfoDtoCopyWith(
          PostInfoDto value, $Res Function(PostInfoDto) then) =
      _$PostInfoDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      int cntView,
      int contentKind,
      ListCntDto bookmark,
      ListCntDto favorite,
      List<String?>? thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated});

  $ListCntDtoCopyWith<$Res> get bookmark;
  $ListCntDtoCopyWith<$Res> get favorite;
}

/// @nodoc
class _$PostInfoDtoCopyWithImpl<$Res> implements $PostInfoDtoCopyWith<$Res> {
  _$PostInfoDtoCopyWithImpl(this._value, this._then);

  final PostInfoDto _value;
  // ignore: unused_field
  final $Res Function(PostInfoDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? uid = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? cntView = freezed,
    Object? contentKind = freezed,
    Object? bookmark = freezed,
    Object? favorite = freezed,
    Object? thumbnails = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      cntView: cntView == freezed
          ? _value.cntView
          : cntView // ignore: cast_nullable_to_non_nullable
              as int,
      contentKind: contentKind == freezed
          ? _value.contentKind
          : contentKind // ignore: cast_nullable_to_non_nullable
              as int,
      bookmark: bookmark == freezed
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as ListCntDto,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as ListCntDto,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
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

  @override
  $ListCntDtoCopyWith<$Res> get bookmark {
    return $ListCntDtoCopyWith<$Res>(_value.bookmark, (value) {
      return _then(_value.copyWith(bookmark: value));
    });
  }

  @override
  $ListCntDtoCopyWith<$Res> get favorite {
    return $ListCntDtoCopyWith<$Res>(_value.favorite, (value) {
      return _then(_value.copyWith(favorite: value));
    });
  }
}

/// @nodoc
abstract class _$PostInfoDtoCopyWith<$Res>
    implements $PostInfoDtoCopyWith<$Res> {
  factory _$PostInfoDtoCopyWith(
          _PostInfoDto value, $Res Function(_PostInfoDto) then) =
      __$PostInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      int cntView,
      int contentKind,
      ListCntDto bookmark,
      ListCntDto favorite,
      List<String?>? thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated});

  @override
  $ListCntDtoCopyWith<$Res> get bookmark;
  @override
  $ListCntDtoCopyWith<$Res> get favorite;
}

/// @nodoc
class __$PostInfoDtoCopyWithImpl<$Res> extends _$PostInfoDtoCopyWithImpl<$Res>
    implements _$PostInfoDtoCopyWith<$Res> {
  __$PostInfoDtoCopyWithImpl(
      _PostInfoDto _value, $Res Function(_PostInfoDto) _then)
      : super(_value, (v) => _then(v as _PostInfoDto));

  @override
  _PostInfoDto get _value => super._value as _PostInfoDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? uid = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? cntView = freezed,
    Object? contentKind = freezed,
    Object? bookmark = freezed,
    Object? favorite = freezed,
    Object? thumbnails = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_PostInfoDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      cntView: cntView == freezed
          ? _value.cntView
          : cntView // ignore: cast_nullable_to_non_nullable
              as int,
      contentKind: contentKind == freezed
          ? _value.contentKind
          : contentKind // ignore: cast_nullable_to_non_nullable
              as int,
      bookmark: bookmark == freezed
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as ListCntDto,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as ListCntDto,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
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
class _$_PostInfoDto extends _PostInfoDto {
  _$_PostInfoDto(
      {this.id,
      this.imgUrl,
      this.uid,
      this.title,
      this.content,
      required this.cntView,
      required this.contentKind,
      required this.bookmark,
      required this.favorite,
      this.thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtUpdated})
      : super._();

  factory _$_PostInfoDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PostInfoDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? imgUrl;
  @override
  final String? uid;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final int cntView;
  @override
  final int contentKind;
  @override

  ///북마크
  final ListCntDto bookmark;
  @override
  final ListCntDto favorite;
  @override
  final List<String?>? thumbnails;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtUpdated;

  @override
  String toString() {
    return 'PostInfoDto(id: $id, imgUrl: $imgUrl, uid: $uid, title: $title, content: $content, cntView: $cntView, contentKind: $contentKind, bookmark: $bookmark, favorite: $favorite, thumbnails: $thumbnails, dtCreated: $dtCreated, dtUpdated: $dtUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostInfoDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imgUrl, imgUrl) ||
                const DeepCollectionEquality().equals(other.imgUrl, imgUrl)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.cntView, cntView) ||
                const DeepCollectionEquality()
                    .equals(other.cntView, cntView)) &&
            (identical(other.contentKind, contentKind) ||
                const DeepCollectionEquality()
                    .equals(other.contentKind, contentKind)) &&
            (identical(other.bookmark, bookmark) ||
                const DeepCollectionEquality()
                    .equals(other.bookmark, bookmark)) &&
            (identical(other.favorite, favorite) ||
                const DeepCollectionEquality()
                    .equals(other.favorite, favorite)) &&
            (identical(other.thumbnails, thumbnails) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnails, thumbnails)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imgUrl) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(cntView) ^
      const DeepCollectionEquality().hash(contentKind) ^
      const DeepCollectionEquality().hash(bookmark) ^
      const DeepCollectionEquality().hash(favorite) ^
      const DeepCollectionEquality().hash(thumbnails) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated);

  @JsonKey(ignore: true)
  @override
  _$PostInfoDtoCopyWith<_PostInfoDto> get copyWith =>
      __$PostInfoDtoCopyWithImpl<_PostInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostInfoDtoToJson(this);
  }
}

abstract class _PostInfoDto extends PostInfoDto {
  factory _PostInfoDto(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      required int cntView,
      required int contentKind,
      required ListCntDto bookmark,
      required ListCntDto favorite,
      List<String?>? thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated}) = _$_PostInfoDto;
  _PostInfoDto._() : super._();

  factory _PostInfoDto.fromJson(Map<String, dynamic> json) =
      _$_PostInfoDto.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get imgUrl => throw _privateConstructorUsedError;
  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  int get cntView => throw _privateConstructorUsedError;
  @override
  int get contentKind => throw _privateConstructorUsedError;
  @override

  ///북마크
  ListCntDto get bookmark => throw _privateConstructorUsedError;
  @override
  ListCntDto get favorite => throw _privateConstructorUsedError;
  @override
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostInfoDtoCopyWith<_PostInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PostSummaryDto _$PostSummaryDtoFromJson(Map<String, dynamic> json) {
  return _PostSummaryDto.fromJson(json);
}

/// @nodoc
class _$PostSummaryDtoTearOff {
  const _$PostSummaryDtoTearOff();

  _PostSummaryDto call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      required int cntView,
      required int contentKind,
      List<String?>? thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated}) {
    return _PostSummaryDto(
      id: id,
      imgUrl: imgUrl,
      uid: uid,
      title: title,
      content: content,
      cntView: cntView,
      contentKind: contentKind,
      thumbnails: thumbnails,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
    );
  }

  PostSummaryDto fromJson(Map<String, Object> json) {
    return PostSummaryDto.fromJson(json);
  }
}

/// @nodoc
const $PostSummaryDto = _$PostSummaryDtoTearOff();

/// @nodoc
mixin _$PostSummaryDto {
  String? get id => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  int get cntView => throw _privateConstructorUsedError;
  int get contentKind => throw _privateConstructorUsedError;
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostSummaryDtoCopyWith<PostSummaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostSummaryDtoCopyWith<$Res> {
  factory $PostSummaryDtoCopyWith(
          PostSummaryDto value, $Res Function(PostSummaryDto) then) =
      _$PostSummaryDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      int cntView,
      int contentKind,
      List<String?>? thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated});
}

/// @nodoc
class _$PostSummaryDtoCopyWithImpl<$Res>
    implements $PostSummaryDtoCopyWith<$Res> {
  _$PostSummaryDtoCopyWithImpl(this._value, this._then);

  final PostSummaryDto _value;
  // ignore: unused_field
  final $Res Function(PostSummaryDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? uid = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? cntView = freezed,
    Object? contentKind = freezed,
    Object? thumbnails = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      cntView: cntView == freezed
          ? _value.cntView
          : cntView // ignore: cast_nullable_to_non_nullable
              as int,
      contentKind: contentKind == freezed
          ? _value.contentKind
          : contentKind // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
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
abstract class _$PostSummaryDtoCopyWith<$Res>
    implements $PostSummaryDtoCopyWith<$Res> {
  factory _$PostSummaryDtoCopyWith(
          _PostSummaryDto value, $Res Function(_PostSummaryDto) then) =
      __$PostSummaryDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      int cntView,
      int contentKind,
      List<String?>? thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated});
}

/// @nodoc
class __$PostSummaryDtoCopyWithImpl<$Res>
    extends _$PostSummaryDtoCopyWithImpl<$Res>
    implements _$PostSummaryDtoCopyWith<$Res> {
  __$PostSummaryDtoCopyWithImpl(
      _PostSummaryDto _value, $Res Function(_PostSummaryDto) _then)
      : super(_value, (v) => _then(v as _PostSummaryDto));

  @override
  _PostSummaryDto get _value => super._value as _PostSummaryDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? uid = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? cntView = freezed,
    Object? contentKind = freezed,
    Object? thumbnails = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_PostSummaryDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      cntView: cntView == freezed
          ? _value.cntView
          : cntView // ignore: cast_nullable_to_non_nullable
              as int,
      contentKind: contentKind == freezed
          ? _value.contentKind
          : contentKind // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
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
class _$_PostSummaryDto extends _PostSummaryDto {
  _$_PostSummaryDto(
      {this.id,
      this.imgUrl,
      this.uid,
      this.title,
      this.content,
      required this.cntView,
      required this.contentKind,
      this.thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtUpdated})
      : super._();

  factory _$_PostSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PostSummaryDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? imgUrl;
  @override
  final String? uid;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final int cntView;
  @override
  final int contentKind;
  @override
  final List<String?>? thumbnails;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtUpdated;

  @override
  String toString() {
    return 'PostSummaryDto(id: $id, imgUrl: $imgUrl, uid: $uid, title: $title, content: $content, cntView: $cntView, contentKind: $contentKind, thumbnails: $thumbnails, dtCreated: $dtCreated, dtUpdated: $dtUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostSummaryDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imgUrl, imgUrl) ||
                const DeepCollectionEquality().equals(other.imgUrl, imgUrl)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.cntView, cntView) ||
                const DeepCollectionEquality()
                    .equals(other.cntView, cntView)) &&
            (identical(other.contentKind, contentKind) ||
                const DeepCollectionEquality()
                    .equals(other.contentKind, contentKind)) &&
            (identical(other.thumbnails, thumbnails) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnails, thumbnails)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imgUrl) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(cntView) ^
      const DeepCollectionEquality().hash(contentKind) ^
      const DeepCollectionEquality().hash(thumbnails) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated);

  @JsonKey(ignore: true)
  @override
  _$PostSummaryDtoCopyWith<_PostSummaryDto> get copyWith =>
      __$PostSummaryDtoCopyWithImpl<_PostSummaryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostSummaryDtoToJson(this);
  }
}

abstract class _PostSummaryDto extends PostSummaryDto {
  factory _PostSummaryDto(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      required int cntView,
      required int contentKind,
      List<String?>? thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated}) = _$_PostSummaryDto;
  _PostSummaryDto._() : super._();

  factory _PostSummaryDto.fromJson(Map<String, dynamic> json) =
      _$_PostSummaryDto.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get imgUrl => throw _privateConstructorUsedError;
  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  int get cntView => throw _privateConstructorUsedError;
  @override
  int get contentKind => throw _privateConstructorUsedError;
  @override
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostSummaryDtoCopyWith<_PostSummaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return _ProductDto.fromJson(json);
}

/// @nodoc
class _$ProductDtoTearOff {
  const _$ProductDtoTearOff();

  _ProductDto call(
      {String? id,
      String? uid,
      String? imgUrl,
      required ProductInfoDto info,
      required ProfileDto profile,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated,
      ListCntDto? pin}) {
    return _ProductDto(
      id: id,
      uid: uid,
      imgUrl: imgUrl,
      info: info,
      profile: profile,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
      pin: pin,
    );
  }

  ProductDto fromJson(Map<String, Object> json) {
    return ProductDto.fromJson(json);
  }
}

/// @nodoc
const $ProductDto = _$ProductDtoTearOff();

/// @nodoc
mixin _$ProductDto {
  ///제품 개요
  String? get id => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  ProductInfoDto get info => throw _privateConstructorUsedError;
  ProfileDto get profile =>
      throw _privateConstructorUsedError; // ProductDetailDto? detail,
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  ///북마크
  ListCntDto? get pin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDtoCopyWith<ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDtoCopyWith<$Res> {
  factory $ProductDtoCopyWith(
          ProductDto value, $Res Function(ProductDto) then) =
      _$ProductDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? uid,
      String? imgUrl,
      ProductInfoDto info,
      ProfileDto profile,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated,
      ListCntDto? pin});

  $ProductInfoDtoCopyWith<$Res> get info;
  $ProfileDtoCopyWith<$Res> get profile;
  $ListCntDtoCopyWith<$Res>? get pin;
}

/// @nodoc
class _$ProductDtoCopyWithImpl<$Res> implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._value, this._then);

  final ProductDto _value;
  // ignore: unused_field
  final $Res Function(ProductDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? imgUrl = freezed,
    Object? info = freezed,
    Object? profile = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
    Object? pin = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ProductInfoDto,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dtUpdated: dtUpdated == freezed
          ? _value.dtUpdated
          : dtUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as ListCntDto?,
    ));
  }

  @override
  $ProductInfoDtoCopyWith<$Res> get info {
    return $ProductInfoDtoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $ProfileDtoCopyWith<$Res> get profile {
    return $ProfileDtoCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $ListCntDtoCopyWith<$Res>? get pin {
    if (_value.pin == null) {
      return null;
    }

    return $ListCntDtoCopyWith<$Res>(_value.pin!, (value) {
      return _then(_value.copyWith(pin: value));
    });
  }
}

/// @nodoc
abstract class _$ProductDtoCopyWith<$Res> implements $ProductDtoCopyWith<$Res> {
  factory _$ProductDtoCopyWith(
          _ProductDto value, $Res Function(_ProductDto) then) =
      __$ProductDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? uid,
      String? imgUrl,
      ProductInfoDto info,
      ProfileDto profile,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated,
      ListCntDto? pin});

  @override
  $ProductInfoDtoCopyWith<$Res> get info;
  @override
  $ProfileDtoCopyWith<$Res> get profile;
  @override
  $ListCntDtoCopyWith<$Res>? get pin;
}

/// @nodoc
class __$ProductDtoCopyWithImpl<$Res> extends _$ProductDtoCopyWithImpl<$Res>
    implements _$ProductDtoCopyWith<$Res> {
  __$ProductDtoCopyWithImpl(
      _ProductDto _value, $Res Function(_ProductDto) _then)
      : super(_value, (v) => _then(v as _ProductDto));

  @override
  _ProductDto get _value => super._value as _ProductDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? imgUrl = freezed,
    Object? info = freezed,
    Object? profile = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
    Object? pin = freezed,
  }) {
    return _then(_ProductDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ProductInfoDto,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileDto,
      dtCreated: dtCreated == freezed
          ? _value.dtCreated
          : dtCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dtUpdated: dtUpdated == freezed
          ? _value.dtUpdated
          : dtUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as ListCntDto?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProductDto extends _ProductDto {
  _$_ProductDto(
      {this.id,
      this.uid,
      this.imgUrl,
      required this.info,
      required this.profile,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtUpdated,
      this.pin})
      : super._();

  factory _$_ProductDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductDtoFromJson(json);

  @override

  ///제품 개요
  final String? id;
  @override
  final String? uid;
  @override
  final String? imgUrl;
  @override
  final ProductInfoDto info;
  @override
  final ProfileDto profile;
  @override // ProductDetailDto? detail,
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtUpdated;
  @override

  ///북마크
  final ListCntDto? pin;

  @override
  String toString() {
    return 'ProductDto(id: $id, uid: $uid, imgUrl: $imgUrl, info: $info, profile: $profile, dtCreated: $dtCreated, dtUpdated: $dtUpdated, pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.imgUrl, imgUrl) ||
                const DeepCollectionEquality().equals(other.imgUrl, imgUrl)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.dtCreated, dtCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dtCreated, dtCreated)) &&
            (identical(other.dtUpdated, dtUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.dtUpdated, dtUpdated)) &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(imgUrl) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated) ^
      const DeepCollectionEquality().hash(pin);

  @JsonKey(ignore: true)
  @override
  _$ProductDtoCopyWith<_ProductDto> get copyWith =>
      __$ProductDtoCopyWithImpl<_ProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductDtoToJson(this);
  }
}

abstract class _ProductDto extends ProductDto {
  factory _ProductDto(
      {String? id,
      String? uid,
      String? imgUrl,
      required ProductInfoDto info,
      required ProfileDto profile,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated,
      ListCntDto? pin}) = _$_ProductDto;
  _ProductDto._() : super._();

  factory _ProductDto.fromJson(Map<String, dynamic> json) =
      _$_ProductDto.fromJson;

  @override

  ///제품 개요
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  String? get imgUrl => throw _privateConstructorUsedError;
  @override
  ProductInfoDto get info => throw _privateConstructorUsedError;
  @override
  ProfileDto get profile => throw _privateConstructorUsedError;
  @override // ProductDetailDto? detail,
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override

  ///북마크
  ListCntDto? get pin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductDtoCopyWith<_ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductInfoDto _$ProductInfoDtoFromJson(Map<String, dynamic> json) {
  return _ProductInfoDto.fromJson(json);
}

/// @nodoc
class _$ProductInfoDtoTearOff {
  const _$ProductInfoDtoTearOff();

  _ProductInfoDto call(
      {String? id,
      required String imgUrl,
      required String title,
      required String detail,
      required double price,
      required int cntView,
      List<String?>? thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated}) {
    return _ProductInfoDto(
      id: id,
      imgUrl: imgUrl,
      title: title,
      detail: detail,
      price: price,
      cntView: cntView,
      thumbnails: thumbnails,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
    );
  }

  ProductInfoDto fromJson(Map<String, Object> json) {
    return ProductInfoDto.fromJson(json);
  }
}

/// @nodoc
const $ProductInfoDto = _$ProductInfoDtoTearOff();

/// @nodoc
mixin _$ProductInfoDto {
  String? get id => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get cntView => throw _privateConstructorUsedError;
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductInfoDtoCopyWith<ProductInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductInfoDtoCopyWith<$Res> {
  factory $ProductInfoDtoCopyWith(
          ProductInfoDto value, $Res Function(ProductInfoDto) then) =
      _$ProductInfoDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String imgUrl,
      String title,
      String detail,
      double price,
      int cntView,
      List<String?>? thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated});
}

/// @nodoc
class _$ProductInfoDtoCopyWithImpl<$Res>
    implements $ProductInfoDtoCopyWith<$Res> {
  _$ProductInfoDtoCopyWithImpl(this._value, this._then);

  final ProductInfoDto _value;
  // ignore: unused_field
  final $Res Function(ProductInfoDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? price = freezed,
    Object? cntView = freezed,
    Object? thumbnails = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      cntView: cntView == freezed
          ? _value.cntView
          : cntView // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
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
abstract class _$ProductInfoDtoCopyWith<$Res>
    implements $ProductInfoDtoCopyWith<$Res> {
  factory _$ProductInfoDtoCopyWith(
          _ProductInfoDto value, $Res Function(_ProductInfoDto) then) =
      __$ProductInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String imgUrl,
      String title,
      String detail,
      double price,
      int cntView,
      List<String?>? thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated});
}

/// @nodoc
class __$ProductInfoDtoCopyWithImpl<$Res>
    extends _$ProductInfoDtoCopyWithImpl<$Res>
    implements _$ProductInfoDtoCopyWith<$Res> {
  __$ProductInfoDtoCopyWithImpl(
      _ProductInfoDto _value, $Res Function(_ProductInfoDto) _then)
      : super(_value, (v) => _then(v as _ProductInfoDto));

  @override
  _ProductInfoDto get _value => super._value as _ProductInfoDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? price = freezed,
    Object? cntView = freezed,
    Object? thumbnails = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_ProductInfoDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      cntView: cntView == freezed
          ? _value.cntView
          : cntView // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
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
class _$_ProductInfoDto extends _ProductInfoDto {
  _$_ProductInfoDto(
      {this.id,
      required this.imgUrl,
      required this.title,
      required this.detail,
      required this.price,
      required this.cntView,
      this.thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtUpdated})
      : super._();

  factory _$_ProductInfoDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductInfoDtoFromJson(json);

  @override
  final String? id;
  @override
  final String imgUrl;
  @override
  final String title;
  @override
  final String detail;
  @override
  final double price;
  @override
  final int cntView;
  @override
  final List<String?>? thumbnails;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtUpdated;

  @override
  String toString() {
    return 'ProductInfoDto(id: $id, imgUrl: $imgUrl, title: $title, detail: $detail, price: $price, cntView: $cntView, thumbnails: $thumbnails, dtCreated: $dtCreated, dtUpdated: $dtUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductInfoDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imgUrl, imgUrl) ||
                const DeepCollectionEquality().equals(other.imgUrl, imgUrl)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.cntView, cntView) ||
                const DeepCollectionEquality()
                    .equals(other.cntView, cntView)) &&
            (identical(other.thumbnails, thumbnails) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnails, thumbnails)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imgUrl) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(cntView) ^
      const DeepCollectionEquality().hash(thumbnails) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated);

  @JsonKey(ignore: true)
  @override
  _$ProductInfoDtoCopyWith<_ProductInfoDto> get copyWith =>
      __$ProductInfoDtoCopyWithImpl<_ProductInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductInfoDtoToJson(this);
  }
}

abstract class _ProductInfoDto extends ProductInfoDto {
  factory _ProductInfoDto(
      {String? id,
      required String imgUrl,
      required String title,
      required String detail,
      required double price,
      required int cntView,
      List<String?>? thumbnails,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated}) = _$_ProductInfoDto;
  _ProductInfoDto._() : super._();

  factory _ProductInfoDto.fromJson(Map<String, dynamic> json) =
      _$_ProductInfoDto.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get imgUrl => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get detail => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  int get cntView => throw _privateConstructorUsedError;
  @override
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductInfoDtoCopyWith<_ProductInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDetailDto _$ProductDetailDtoFromJson(Map<String, dynamic> json) {
  return _ProductDetailDto.fromJson(json);
}

/// @nodoc
class _$ProductDetailDtoTearOff {
  const _$ProductDetailDtoTearOff();

  _ProductDetailDto call(
      {@JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated}) {
    return _ProductDetailDto(
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
    );
  }

  ProductDetailDto fromJson(Map<String, Object> json) {
    return ProductDetailDto.fromJson(json);
  }
}

/// @nodoc
const $ProductDetailDto = _$ProductDetailDtoTearOff();

/// @nodoc
mixin _$ProductDetailDto {
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailDtoCopyWith<ProductDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailDtoCopyWith<$Res> {
  factory $ProductDetailDtoCopyWith(
          ProductDetailDto value, $Res Function(ProductDetailDto) then) =
      _$ProductDetailDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated});
}

/// @nodoc
class _$ProductDetailDtoCopyWithImpl<$Res>
    implements $ProductDetailDtoCopyWith<$Res> {
  _$ProductDetailDtoCopyWithImpl(this._value, this._then);

  final ProductDetailDto _value;
  // ignore: unused_field
  final $Res Function(ProductDetailDto) _then;

  @override
  $Res call({
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$ProductDetailDtoCopyWith<$Res>
    implements $ProductDetailDtoCopyWith<$Res> {
  factory _$ProductDetailDtoCopyWith(
          _ProductDetailDto value, $Res Function(_ProductDetailDto) then) =
      __$ProductDetailDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          DateTime dtUpdated});
}

/// @nodoc
class __$ProductDetailDtoCopyWithImpl<$Res>
    extends _$ProductDetailDtoCopyWithImpl<$Res>
    implements _$ProductDetailDtoCopyWith<$Res> {
  __$ProductDetailDtoCopyWithImpl(
      _ProductDetailDto _value, $Res Function(_ProductDetailDto) _then)
      : super(_value, (v) => _then(v as _ProductDetailDto));

  @override
  _ProductDetailDto get _value => super._value as _ProductDetailDto;

  @override
  $Res call({
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_ProductDetailDto(
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
@JsonSerializable()
class _$_ProductDetailDto extends _ProductDetailDto {
  _$_ProductDetailDto(
      {@JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required this.dtUpdated})
      : super._();

  factory _$_ProductDetailDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductDetailDtoFromJson(json);

  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtCreated;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  final DateTime dtUpdated;

  @override
  String toString() {
    return 'ProductDetailDto(dtCreated: $dtCreated, dtUpdated: $dtUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductDetailDto &&
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
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated);

  @JsonKey(ignore: true)
  @override
  _$ProductDetailDtoCopyWith<_ProductDetailDto> get copyWith =>
      __$ProductDetailDtoCopyWithImpl<_ProductDetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductDetailDtoToJson(this);
  }
}

abstract class _ProductDetailDto extends ProductDetailDto {
  factory _ProductDetailDto(
      {@JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtCreated,
      @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
          required DateTime dtUpdated}) = _$_ProductDetailDto;
  _ProductDetailDto._() : super._();

  factory _ProductDetailDto.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailDto.fromJson;

  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductDetailDtoCopyWith<_ProductDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}
