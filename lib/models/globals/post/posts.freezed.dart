// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'posts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostTearOff {
  const _$PostTearOff();

  _Post call(
      {String? id,
      required PostInfo info,
      required Profile profile,
      List<ProductInfo?>? product,
      required DateTime dtCreated,
      required DateTime dtUpdated,
      ListCnt? tags,
      String? kind}) {
    return _Post(
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
}

/// @nodoc
const $Post = _$PostTearOff();

/// @nodoc
mixin _$Post {
  String? get id => throw _privateConstructorUsedError;
  PostInfo get info => throw _privateConstructorUsedError;
  Profile get profile => throw _privateConstructorUsedError;
  List<ProductInfo?>? get product =>
      throw _privateConstructorUsedError; // PostDetail? detail,
  DateTime get dtCreated => throw _privateConstructorUsedError;
  DateTime get dtUpdated =>
      throw _privateConstructorUsedError; // ListCnt? bookmark,
// ListCnt? favorite,
  ListCnt? get tags => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      PostInfo info,
      Profile profile,
      List<ProductInfo?>? product,
      DateTime dtCreated,
      DateTime dtUpdated,
      ListCnt? tags,
      String? kind});

  $PostInfoCopyWith<$Res> get info;
  $ProfileCopyWith<$Res> get profile;
  $ListCntCopyWith<$Res>? get tags;
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

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
              as PostInfo,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ProductInfo?>?,
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
              as ListCnt?,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $PostInfoCopyWith<$Res> get info {
    return $PostInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $ListCntCopyWith<$Res>? get tags {
    if (_value.tags == null) {
      return null;
    }

    return $ListCntCopyWith<$Res>(_value.tags!, (value) {
      return _then(_value.copyWith(tags: value));
    });
  }
}

/// @nodoc
abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      PostInfo info,
      Profile profile,
      List<ProductInfo?>? product,
      DateTime dtCreated,
      DateTime dtUpdated,
      ListCnt? tags,
      String? kind});

  @override
  $PostInfoCopyWith<$Res> get info;
  @override
  $ProfileCopyWith<$Res> get profile;
  @override
  $ListCntCopyWith<$Res>? get tags;
}

/// @nodoc
class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

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
    return _then(_Post(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PostInfo,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ProductInfo?>?,
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
              as ListCnt?,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Post extends _Post {
  _$_Post(
      {this.id,
      required this.info,
      required this.profile,
      this.product,
      required this.dtCreated,
      required this.dtUpdated,
      this.tags,
      this.kind})
      : super._();

  @override
  final String? id;
  @override
  final PostInfo info;
  @override
  final Profile profile;
  @override
  final List<ProductInfo?>? product;
  @override // PostDetail? detail,
  final DateTime dtCreated;
  @override
  final DateTime dtUpdated;
  @override // ListCnt? bookmark,
// ListCnt? favorite,
  final ListCnt? tags;
  @override
  final String? kind;

  @override
  String toString() {
    return 'Post(id: $id, info: $info, profile: $profile, product: $product, dtCreated: $dtCreated, dtUpdated: $dtUpdated, tags: $tags, kind: $kind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Post &&
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
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);
}

abstract class _Post extends Post {
  factory _Post(
      {String? id,
      required PostInfo info,
      required Profile profile,
      List<ProductInfo?>? product,
      required DateTime dtCreated,
      required DateTime dtUpdated,
      ListCnt? tags,
      String? kind}) = _$_Post;
  _Post._() : super._();

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  PostInfo get info => throw _privateConstructorUsedError;
  @override
  Profile get profile => throw _privateConstructorUsedError;
  @override
  List<ProductInfo?>? get product => throw _privateConstructorUsedError;
  @override // PostDetail? detail,
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override // ListCnt? bookmark,
// ListCnt? favorite,
  ListCnt? get tags => throw _privateConstructorUsedError;
  @override
  String? get kind => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostCopyWith<_Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$PostDetailTearOff {
  const _$PostDetailTearOff();

  _PostDetail call(
      {required int level,
      String? brand,
      double? price,
      double? name,
      String? homeURL,
      String? snsURL}) {
    return _PostDetail(
      level: level,
      brand: brand,
      price: price,
      name: name,
      homeURL: homeURL,
      snsURL: snsURL,
    );
  }
}

/// @nodoc
const $PostDetail = _$PostDetailTearOff();

/// @nodoc
mixin _$PostDetail {
  int get level => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get name => throw _privateConstructorUsedError;
  String? get homeURL => throw _privateConstructorUsedError;
  String? get snsURL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostDetailCopyWith<PostDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDetailCopyWith<$Res> {
  factory $PostDetailCopyWith(
          PostDetail value, $Res Function(PostDetail) then) =
      _$PostDetailCopyWithImpl<$Res>;
  $Res call(
      {int level,
      String? brand,
      double? price,
      double? name,
      String? homeURL,
      String? snsURL});
}

/// @nodoc
class _$PostDetailCopyWithImpl<$Res> implements $PostDetailCopyWith<$Res> {
  _$PostDetailCopyWithImpl(this._value, this._then);

  final PostDetail _value;
  // ignore: unused_field
  final $Res Function(PostDetail) _then;

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
abstract class _$PostDetailCopyWith<$Res> implements $PostDetailCopyWith<$Res> {
  factory _$PostDetailCopyWith(
          _PostDetail value, $Res Function(_PostDetail) then) =
      __$PostDetailCopyWithImpl<$Res>;
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
class __$PostDetailCopyWithImpl<$Res> extends _$PostDetailCopyWithImpl<$Res>
    implements _$PostDetailCopyWith<$Res> {
  __$PostDetailCopyWithImpl(
      _PostDetail _value, $Res Function(_PostDetail) _then)
      : super(_value, (v) => _then(v as _PostDetail));

  @override
  _PostDetail get _value => super._value as _PostDetail;

  @override
  $Res call({
    Object? level = freezed,
    Object? brand = freezed,
    Object? price = freezed,
    Object? name = freezed,
    Object? homeURL = freezed,
    Object? snsURL = freezed,
  }) {
    return _then(_PostDetail(
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

class _$_PostDetail implements _PostDetail {
  _$_PostDetail(
      {required this.level,
      this.brand,
      this.price,
      this.name,
      this.homeURL,
      this.snsURL});

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
    return 'PostDetail(level: $level, brand: $brand, price: $price, name: $name, homeURL: $homeURL, snsURL: $snsURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostDetail &&
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
  _$PostDetailCopyWith<_PostDetail> get copyWith =>
      __$PostDetailCopyWithImpl<_PostDetail>(this, _$identity);
}

abstract class _PostDetail implements PostDetail {
  factory _PostDetail(
      {required int level,
      String? brand,
      double? price,
      double? name,
      String? homeURL,
      String? snsURL}) = _$_PostDetail;

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
  _$PostDetailCopyWith<_PostDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PostInfoTearOff {
  const _$PostInfoTearOff();

  _PostInfo call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      required int contentKind,
      required ListCnt bookmark,
      required ListCnt favorite,
      required int cntView,
      List<String?>? thumbnails,
      required DateTime dtCreated,
      required DateTime dtUpdated}) {
    return _PostInfo(
      id: id,
      imgUrl: imgUrl,
      uid: uid,
      title: title,
      content: content,
      contentKind: contentKind,
      bookmark: bookmark,
      favorite: favorite,
      cntView: cntView,
      thumbnails: thumbnails,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
    );
  }
}

/// @nodoc
const $PostInfo = _$PostInfoTearOff();

/// @nodoc
mixin _$PostInfo {
  String? get id => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  int get contentKind => throw _privateConstructorUsedError;

  ///북마크
  ListCnt get bookmark => throw _privateConstructorUsedError;
  ListCnt get favorite => throw _privateConstructorUsedError;
  int get cntView => throw _privateConstructorUsedError;
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  DateTime get dtCreated => throw _privateConstructorUsedError;
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostInfoCopyWith<PostInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostInfoCopyWith<$Res> {
  factory $PostInfoCopyWith(PostInfo value, $Res Function(PostInfo) then) =
      _$PostInfoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      int contentKind,
      ListCnt bookmark,
      ListCnt favorite,
      int cntView,
      List<String?>? thumbnails,
      DateTime dtCreated,
      DateTime dtUpdated});

  $ListCntCopyWith<$Res> get bookmark;
  $ListCntCopyWith<$Res> get favorite;
}

/// @nodoc
class _$PostInfoCopyWithImpl<$Res> implements $PostInfoCopyWith<$Res> {
  _$PostInfoCopyWithImpl(this._value, this._then);

  final PostInfo _value;
  // ignore: unused_field
  final $Res Function(PostInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? uid = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? contentKind = freezed,
    Object? bookmark = freezed,
    Object? favorite = freezed,
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
      contentKind: contentKind == freezed
          ? _value.contentKind
          : contentKind // ignore: cast_nullable_to_non_nullable
              as int,
      bookmark: bookmark == freezed
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as ListCnt,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as ListCnt,
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

  @override
  $ListCntCopyWith<$Res> get bookmark {
    return $ListCntCopyWith<$Res>(_value.bookmark, (value) {
      return _then(_value.copyWith(bookmark: value));
    });
  }

  @override
  $ListCntCopyWith<$Res> get favorite {
    return $ListCntCopyWith<$Res>(_value.favorite, (value) {
      return _then(_value.copyWith(favorite: value));
    });
  }
}

/// @nodoc
abstract class _$PostInfoCopyWith<$Res> implements $PostInfoCopyWith<$Res> {
  factory _$PostInfoCopyWith(_PostInfo value, $Res Function(_PostInfo) then) =
      __$PostInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      int contentKind,
      ListCnt bookmark,
      ListCnt favorite,
      int cntView,
      List<String?>? thumbnails,
      DateTime dtCreated,
      DateTime dtUpdated});

  @override
  $ListCntCopyWith<$Res> get bookmark;
  @override
  $ListCntCopyWith<$Res> get favorite;
}

/// @nodoc
class __$PostInfoCopyWithImpl<$Res> extends _$PostInfoCopyWithImpl<$Res>
    implements _$PostInfoCopyWith<$Res> {
  __$PostInfoCopyWithImpl(_PostInfo _value, $Res Function(_PostInfo) _then)
      : super(_value, (v) => _then(v as _PostInfo));

  @override
  _PostInfo get _value => super._value as _PostInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? uid = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? contentKind = freezed,
    Object? bookmark = freezed,
    Object? favorite = freezed,
    Object? cntView = freezed,
    Object? thumbnails = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_PostInfo(
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
      contentKind: contentKind == freezed
          ? _value.contentKind
          : contentKind // ignore: cast_nullable_to_non_nullable
              as int,
      bookmark: bookmark == freezed
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as ListCnt,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as ListCnt,
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

class _$_PostInfo extends _PostInfo {
  _$_PostInfo(
      {this.id,
      this.imgUrl,
      this.uid,
      this.title,
      this.content,
      required this.contentKind,
      required this.bookmark,
      required this.favorite,
      required this.cntView,
      this.thumbnails,
      required this.dtCreated,
      required this.dtUpdated})
      : super._();

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
  final int contentKind;
  @override

  ///북마크
  final ListCnt bookmark;
  @override
  final ListCnt favorite;
  @override
  final int cntView;
  @override
  final List<String?>? thumbnails;
  @override
  final DateTime dtCreated;
  @override
  final DateTime dtUpdated;

  @override
  String toString() {
    return 'PostInfo(id: $id, imgUrl: $imgUrl, uid: $uid, title: $title, content: $content, contentKind: $contentKind, bookmark: $bookmark, favorite: $favorite, cntView: $cntView, thumbnails: $thumbnails, dtCreated: $dtCreated, dtUpdated: $dtUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostInfo &&
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
            (identical(other.contentKind, contentKind) ||
                const DeepCollectionEquality()
                    .equals(other.contentKind, contentKind)) &&
            (identical(other.bookmark, bookmark) ||
                const DeepCollectionEquality()
                    .equals(other.bookmark, bookmark)) &&
            (identical(other.favorite, favorite) ||
                const DeepCollectionEquality()
                    .equals(other.favorite, favorite)) &&
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
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(contentKind) ^
      const DeepCollectionEquality().hash(bookmark) ^
      const DeepCollectionEquality().hash(favorite) ^
      const DeepCollectionEquality().hash(cntView) ^
      const DeepCollectionEquality().hash(thumbnails) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated);

  @JsonKey(ignore: true)
  @override
  _$PostInfoCopyWith<_PostInfo> get copyWith =>
      __$PostInfoCopyWithImpl<_PostInfo>(this, _$identity);
}

abstract class _PostInfo extends PostInfo {
  factory _PostInfo(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      required int contentKind,
      required ListCnt bookmark,
      required ListCnt favorite,
      required int cntView,
      List<String?>? thumbnails,
      required DateTime dtCreated,
      required DateTime dtUpdated}) = _$_PostInfo;
  _PostInfo._() : super._();

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
  int get contentKind => throw _privateConstructorUsedError;
  @override

  ///북마크
  ListCnt get bookmark => throw _privateConstructorUsedError;
  @override
  ListCnt get favorite => throw _privateConstructorUsedError;
  @override
  int get cntView => throw _privateConstructorUsedError;
  @override
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  @override
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostInfoCopyWith<_PostInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PostSummaryTearOff {
  const _$PostSummaryTearOff();

  _PostSummary call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      required int contentKind,
      required int cntView,
      List<String?>? thumbnails,
      required DateTime dtCreated,
      required DateTime dtUpdated}) {
    return _PostSummary(
      id: id,
      imgUrl: imgUrl,
      uid: uid,
      title: title,
      content: content,
      contentKind: contentKind,
      cntView: cntView,
      thumbnails: thumbnails,
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
    );
  }
}

/// @nodoc
const $PostSummary = _$PostSummaryTearOff();

/// @nodoc
mixin _$PostSummary {
  String? get id => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  int get contentKind => throw _privateConstructorUsedError;
  int get cntView => throw _privateConstructorUsedError;
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  DateTime get dtCreated => throw _privateConstructorUsedError;
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostSummaryCopyWith<PostSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostSummaryCopyWith<$Res> {
  factory $PostSummaryCopyWith(
          PostSummary value, $Res Function(PostSummary) then) =
      _$PostSummaryCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      int contentKind,
      int cntView,
      List<String?>? thumbnails,
      DateTime dtCreated,
      DateTime dtUpdated});
}

/// @nodoc
class _$PostSummaryCopyWithImpl<$Res> implements $PostSummaryCopyWith<$Res> {
  _$PostSummaryCopyWithImpl(this._value, this._then);

  final PostSummary _value;
  // ignore: unused_field
  final $Res Function(PostSummary) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? uid = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? contentKind = freezed,
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
      contentKind: contentKind == freezed
          ? _value.contentKind
          : contentKind // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$PostSummaryCopyWith<$Res>
    implements $PostSummaryCopyWith<$Res> {
  factory _$PostSummaryCopyWith(
          _PostSummary value, $Res Function(_PostSummary) then) =
      __$PostSummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      int contentKind,
      int cntView,
      List<String?>? thumbnails,
      DateTime dtCreated,
      DateTime dtUpdated});
}

/// @nodoc
class __$PostSummaryCopyWithImpl<$Res> extends _$PostSummaryCopyWithImpl<$Res>
    implements _$PostSummaryCopyWith<$Res> {
  __$PostSummaryCopyWithImpl(
      _PostSummary _value, $Res Function(_PostSummary) _then)
      : super(_value, (v) => _then(v as _PostSummary));

  @override
  _PostSummary get _value => super._value as _PostSummary;

  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? uid = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? contentKind = freezed,
    Object? cntView = freezed,
    Object? thumbnails = freezed,
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_PostSummary(
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
      contentKind: contentKind == freezed
          ? _value.contentKind
          : contentKind // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$_PostSummary extends _PostSummary {
  _$_PostSummary(
      {this.id,
      this.imgUrl,
      this.uid,
      this.title,
      this.content,
      required this.contentKind,
      required this.cntView,
      this.thumbnails,
      required this.dtCreated,
      required this.dtUpdated})
      : super._();

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
  final int contentKind;
  @override
  final int cntView;
  @override
  final List<String?>? thumbnails;
  @override
  final DateTime dtCreated;
  @override
  final DateTime dtUpdated;

  @override
  String toString() {
    return 'PostSummary(id: $id, imgUrl: $imgUrl, uid: $uid, title: $title, content: $content, contentKind: $contentKind, cntView: $cntView, thumbnails: $thumbnails, dtCreated: $dtCreated, dtUpdated: $dtUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostSummary &&
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
            (identical(other.contentKind, contentKind) ||
                const DeepCollectionEquality()
                    .equals(other.contentKind, contentKind)) &&
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
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(contentKind) ^
      const DeepCollectionEquality().hash(cntView) ^
      const DeepCollectionEquality().hash(thumbnails) ^
      const DeepCollectionEquality().hash(dtCreated) ^
      const DeepCollectionEquality().hash(dtUpdated);

  @JsonKey(ignore: true)
  @override
  _$PostSummaryCopyWith<_PostSummary> get copyWith =>
      __$PostSummaryCopyWithImpl<_PostSummary>(this, _$identity);
}

abstract class _PostSummary extends PostSummary {
  factory _PostSummary(
      {String? id,
      String? imgUrl,
      String? uid,
      String? title,
      String? content,
      required int contentKind,
      required int cntView,
      List<String?>? thumbnails,
      required DateTime dtCreated,
      required DateTime dtUpdated}) = _$_PostSummary;
  _PostSummary._() : super._();

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
  int get contentKind => throw _privateConstructorUsedError;
  @override
  int get cntView => throw _privateConstructorUsedError;
  @override
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  @override
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostSummaryCopyWith<_PostSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {String? id,
      String? uid,
      String? imgUrl,
      required ProductInfo info,
      required Profile profile,
      required DateTime dtCreated,
      required DateTime dtUpdated,
      ListCnt? pin}) {
    return _Product(
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
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  ///제품 개요
  String? get id => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  ProductInfo get info => throw _privateConstructorUsedError;
  Profile get profile =>
      throw _privateConstructorUsedError; // ProductDetail? detail,
// required UserDetail use,
// required String homeURL,
  DateTime get dtCreated => throw _privateConstructorUsedError;
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  ///북마크
  ListCnt? get pin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? uid,
      String? imgUrl,
      ProductInfo info,
      Profile profile,
      DateTime dtCreated,
      DateTime dtUpdated,
      ListCnt? pin});

  $ProductInfoCopyWith<$Res> get info;
  $ProfileCopyWith<$Res> get profile;
  $ListCntCopyWith<$Res>? get pin;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

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
              as ProductInfo,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
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
              as ListCnt?,
    ));
  }

  @override
  $ProductInfoCopyWith<$Res> get info {
    return $ProductInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $ListCntCopyWith<$Res>? get pin {
    if (_value.pin == null) {
      return null;
    }

    return $ListCntCopyWith<$Res>(_value.pin!, (value) {
      return _then(_value.copyWith(pin: value));
    });
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? uid,
      String? imgUrl,
      ProductInfo info,
      Profile profile,
      DateTime dtCreated,
      DateTime dtUpdated,
      ListCnt? pin});

  @override
  $ProductInfoCopyWith<$Res> get info;
  @override
  $ProfileCopyWith<$Res> get profile;
  @override
  $ListCntCopyWith<$Res>? get pin;
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

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
    return _then(_Product(
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
              as ProductInfo,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
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
              as ListCnt?,
    ));
  }
}

/// @nodoc

class _$_Product extends _Product {
  _$_Product(
      {this.id,
      this.uid,
      this.imgUrl,
      required this.info,
      required this.profile,
      required this.dtCreated,
      required this.dtUpdated,
      this.pin})
      : super._();

  @override

  ///제품 개요
  final String? id;
  @override
  final String? uid;
  @override
  final String? imgUrl;
  @override
  final ProductInfo info;
  @override
  final Profile profile;
  @override // ProductDetail? detail,
// required UserDetail use,
// required String homeURL,
  final DateTime dtCreated;
  @override
  final DateTime dtUpdated;
  @override

  ///북마크
  final ListCnt? pin;

  @override
  String toString() {
    return 'Product(id: $id, uid: $uid, imgUrl: $imgUrl, info: $info, profile: $profile, dtCreated: $dtCreated, dtUpdated: $dtUpdated, pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
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
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);
}

abstract class _Product extends Product {
  factory _Product(
      {String? id,
      String? uid,
      String? imgUrl,
      required ProductInfo info,
      required Profile profile,
      required DateTime dtCreated,
      required DateTime dtUpdated,
      ListCnt? pin}) = _$_Product;
  _Product._() : super._();

  @override

  ///제품 개요
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  String? get imgUrl => throw _privateConstructorUsedError;
  @override
  ProductInfo get info => throw _privateConstructorUsedError;
  @override
  Profile get profile => throw _privateConstructorUsedError;
  @override // ProductDetail? detail,
// required UserDetail use,
// required String homeURL,
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override

  ///북마크
  ListCnt? get pin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProductInfoTearOff {
  const _$ProductInfoTearOff();

  _ProductInfo call(
      {String? id,
      required String imgUrl,
      required String title,
      required String detail,
      required double price,
      required int cntView,
      List<String?>? thumbnails,
      required DateTime dtCreated,
      required DateTime dtUpdated}) {
    return _ProductInfo(
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
}

/// @nodoc
const $ProductInfo = _$ProductInfoTearOff();

/// @nodoc
mixin _$ProductInfo {
  String? get id => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get cntView => throw _privateConstructorUsedError;
  List<String?>? get thumbnails => throw _privateConstructorUsedError;
  DateTime get dtCreated => throw _privateConstructorUsedError;
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductInfoCopyWith<ProductInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductInfoCopyWith<$Res> {
  factory $ProductInfoCopyWith(
          ProductInfo value, $Res Function(ProductInfo) then) =
      _$ProductInfoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String imgUrl,
      String title,
      String detail,
      double price,
      int cntView,
      List<String?>? thumbnails,
      DateTime dtCreated,
      DateTime dtUpdated});
}

/// @nodoc
class _$ProductInfoCopyWithImpl<$Res> implements $ProductInfoCopyWith<$Res> {
  _$ProductInfoCopyWithImpl(this._value, this._then);

  final ProductInfo _value;
  // ignore: unused_field
  final $Res Function(ProductInfo) _then;

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
abstract class _$ProductInfoCopyWith<$Res>
    implements $ProductInfoCopyWith<$Res> {
  factory _$ProductInfoCopyWith(
          _ProductInfo value, $Res Function(_ProductInfo) then) =
      __$ProductInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String imgUrl,
      String title,
      String detail,
      double price,
      int cntView,
      List<String?>? thumbnails,
      DateTime dtCreated,
      DateTime dtUpdated});
}

/// @nodoc
class __$ProductInfoCopyWithImpl<$Res> extends _$ProductInfoCopyWithImpl<$Res>
    implements _$ProductInfoCopyWith<$Res> {
  __$ProductInfoCopyWithImpl(
      _ProductInfo _value, $Res Function(_ProductInfo) _then)
      : super(_value, (v) => _then(v as _ProductInfo));

  @override
  _ProductInfo get _value => super._value as _ProductInfo;

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
    return _then(_ProductInfo(
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

class _$_ProductInfo extends _ProductInfo {
  _$_ProductInfo(
      {this.id,
      required this.imgUrl,
      required this.title,
      required this.detail,
      required this.price,
      required this.cntView,
      this.thumbnails,
      required this.dtCreated,
      required this.dtUpdated})
      : super._();

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
  final DateTime dtCreated;
  @override
  final DateTime dtUpdated;

  @override
  String toString() {
    return 'ProductInfo(id: $id, imgUrl: $imgUrl, title: $title, detail: $detail, price: $price, cntView: $cntView, thumbnails: $thumbnails, dtCreated: $dtCreated, dtUpdated: $dtUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductInfo &&
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
  _$ProductInfoCopyWith<_ProductInfo> get copyWith =>
      __$ProductInfoCopyWithImpl<_ProductInfo>(this, _$identity);
}

abstract class _ProductInfo extends ProductInfo {
  factory _ProductInfo(
      {String? id,
      required String imgUrl,
      required String title,
      required String detail,
      required double price,
      required int cntView,
      List<String?>? thumbnails,
      required DateTime dtCreated,
      required DateTime dtUpdated}) = _$_ProductInfo;
  _ProductInfo._() : super._();

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
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductInfoCopyWith<_ProductInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProductDetailTearOff {
  const _$ProductDetailTearOff();

  _ProductDetail call(
      {required DateTime dtCreated, required DateTime dtUpdated}) {
    return _ProductDetail(
      dtCreated: dtCreated,
      dtUpdated: dtUpdated,
    );
  }
}

/// @nodoc
const $ProductDetail = _$ProductDetailTearOff();

/// @nodoc
mixin _$ProductDetail {
  DateTime get dtCreated => throw _privateConstructorUsedError;
  DateTime get dtUpdated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailCopyWith<ProductDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailCopyWith<$Res> {
  factory $ProductDetailCopyWith(
          ProductDetail value, $Res Function(ProductDetail) then) =
      _$ProductDetailCopyWithImpl<$Res>;
  $Res call({DateTime dtCreated, DateTime dtUpdated});
}

/// @nodoc
class _$ProductDetailCopyWithImpl<$Res>
    implements $ProductDetailCopyWith<$Res> {
  _$ProductDetailCopyWithImpl(this._value, this._then);

  final ProductDetail _value;
  // ignore: unused_field
  final $Res Function(ProductDetail) _then;

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
abstract class _$ProductDetailCopyWith<$Res>
    implements $ProductDetailCopyWith<$Res> {
  factory _$ProductDetailCopyWith(
          _ProductDetail value, $Res Function(_ProductDetail) then) =
      __$ProductDetailCopyWithImpl<$Res>;
  @override
  $Res call({DateTime dtCreated, DateTime dtUpdated});
}

/// @nodoc
class __$ProductDetailCopyWithImpl<$Res>
    extends _$ProductDetailCopyWithImpl<$Res>
    implements _$ProductDetailCopyWith<$Res> {
  __$ProductDetailCopyWithImpl(
      _ProductDetail _value, $Res Function(_ProductDetail) _then)
      : super(_value, (v) => _then(v as _ProductDetail));

  @override
  _ProductDetail get _value => super._value as _ProductDetail;

  @override
  $Res call({
    Object? dtCreated = freezed,
    Object? dtUpdated = freezed,
  }) {
    return _then(_ProductDetail(
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

class _$_ProductDetail extends _ProductDetail {
  _$_ProductDetail({required this.dtCreated, required this.dtUpdated})
      : super._();

  @override
  final DateTime dtCreated;
  @override
  final DateTime dtUpdated;

  @override
  String toString() {
    return 'ProductDetail(dtCreated: $dtCreated, dtUpdated: $dtUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductDetail &&
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
  _$ProductDetailCopyWith<_ProductDetail> get copyWith =>
      __$ProductDetailCopyWithImpl<_ProductDetail>(this, _$identity);
}

abstract class _ProductDetail extends ProductDetail {
  factory _ProductDetail(
      {required DateTime dtCreated,
      required DateTime dtUpdated}) = _$_ProductDetail;
  _ProductDetail._() : super._();

  @override
  DateTime get dtCreated => throw _privateConstructorUsedError;
  @override
  DateTime get dtUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductDetailCopyWith<_ProductDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
