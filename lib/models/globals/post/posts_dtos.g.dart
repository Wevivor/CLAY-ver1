// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostDto _$_$_PostDtoFromJson(Map<String, dynamic> json) {
  return _$_PostDto(
    id: json['id'] as String?,
    info: PostInfoDto.fromJson(json['info'] as Map<String, dynamic>),
    profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    product: (json['product'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : ProductInfoDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    dtCreated: Fbconverter.fromJson(json['dtCreated']),
    dtUpdated: Fbconverter.fromJson(json['dtUpdated']),
    tags: json['tags'] == null
        ? null
        : ListCntDto.fromJson(json['tags'] as Map<String, dynamic>),
    kind: json['kind'] as String?,
  );
}

Map<String, dynamic> _$_$_PostDtoToJson(_$_PostDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'info': instance.info.toJson(),
      'profile': instance.profile.toJson(),
      'product': instance.product?.map((e) => e?.toJson()).toList(),
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
      'dtUpdated': Fbconverter.toJson(instance.dtUpdated),
      'tags': instance.tags?.toJson(),
      'kind': instance.kind,
    };

_$_PostDetailDto _$_$_PostDetailDtoFromJson(Map<String, dynamic> json) {
  return _$_PostDetailDto(
    level: json['level'] as int,
    brand: json['brand'] as String?,
    price: (json['price'] as num?)?.toDouble(),
    name: (json['name'] as num?)?.toDouble(),
    homeURL: json['homeURL'] as String?,
    snsURL: json['snsURL'] as String?,
  );
}

Map<String, dynamic> _$_$_PostDetailDtoToJson(_$_PostDetailDto instance) =>
    <String, dynamic>{
      'level': instance.level,
      'brand': instance.brand,
      'price': instance.price,
      'name': instance.name,
      'homeURL': instance.homeURL,
      'snsURL': instance.snsURL,
    };

_$_PostInfoDto _$_$_PostInfoDtoFromJson(Map<String, dynamic> json) {
  return _$_PostInfoDto(
    id: json['id'] as String?,
    imgUrl: json['imgUrl'] as String?,
    uid: json['uid'] as String?,
    title: json['title'] as String?,
    content: json['content'] as String?,
    cntView: json['cntView'] as int,
    contentKind: json['contentKind'] as int,
    bookmark: ListCntDto.fromJson(json['bookmark'] as Map<String, dynamic>),
    favorite: ListCntDto.fromJson(json['favorite'] as Map<String, dynamic>),
    thumbnails: (json['thumbnails'] as List<dynamic>?)
        ?.map((e) => e as String?)
        .toList(),
    dtCreated: Fbconverter.fromJson(json['dtCreated']),
    dtUpdated: Fbconverter.fromJson(json['dtUpdated']),
  );
}

Map<String, dynamic> _$_$_PostInfoDtoToJson(_$_PostInfoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imgUrl': instance.imgUrl,
      'uid': instance.uid,
      'title': instance.title,
      'content': instance.content,
      'cntView': instance.cntView,
      'contentKind': instance.contentKind,
      'bookmark': instance.bookmark.toJson(),
      'favorite': instance.favorite.toJson(),
      'thumbnails': instance.thumbnails,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
      'dtUpdated': Fbconverter.toJson(instance.dtUpdated),
    };

_$_PostSummaryDto _$_$_PostSummaryDtoFromJson(Map<String, dynamic> json) {
  return _$_PostSummaryDto(
    id: json['id'] as String?,
    imgUrl: json['imgUrl'] as String?,
    uid: json['uid'] as String?,
    title: json['title'] as String?,
    content: json['content'] as String?,
    cntView: json['cntView'] as int,
    contentKind: json['contentKind'] as int,
    thumbnails: (json['thumbnails'] as List<dynamic>?)
        ?.map((e) => e as String?)
        .toList(),
    dtCreated: Fbconverter.fromJson(json['dtCreated']),
    dtUpdated: Fbconverter.fromJson(json['dtUpdated']),
  );
}

Map<String, dynamic> _$_$_PostSummaryDtoToJson(_$_PostSummaryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imgUrl': instance.imgUrl,
      'uid': instance.uid,
      'title': instance.title,
      'content': instance.content,
      'cntView': instance.cntView,
      'contentKind': instance.contentKind,
      'thumbnails': instance.thumbnails,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
      'dtUpdated': Fbconverter.toJson(instance.dtUpdated),
    };

_$_ProductDto _$_$_ProductDtoFromJson(Map<String, dynamic> json) {
  return _$_ProductDto(
    id: json['id'] as String?,
    uid: json['uid'] as String?,
    imgUrl: json['imgUrl'] as String?,
    info: ProductInfoDto.fromJson(json['info'] as Map<String, dynamic>),
    profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    dtCreated: Fbconverter.fromJson(json['dtCreated']),
    dtUpdated: Fbconverter.fromJson(json['dtUpdated']),
    pin: json['pin'] == null
        ? null
        : ListCntDto.fromJson(json['pin'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ProductDtoToJson(_$_ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'imgUrl': instance.imgUrl,
      'info': instance.info.toJson(),
      'profile': instance.profile.toJson(),
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
      'dtUpdated': Fbconverter.toJson(instance.dtUpdated),
      'pin': instance.pin?.toJson(),
    };

_$_ProductInfoDto _$_$_ProductInfoDtoFromJson(Map<String, dynamic> json) {
  return _$_ProductInfoDto(
    id: json['id'] as String?,
    imgUrl: json['imgUrl'] as String,
    title: json['title'] as String,
    detail: json['detail'] as String,
    price: (json['price'] as num).toDouble(),
    cntView: json['cntView'] as int,
    thumbnails: (json['thumbnails'] as List<dynamic>?)
        ?.map((e) => e as String?)
        .toList(),
    dtCreated: Fbconverter.fromJson(json['dtCreated']),
    dtUpdated: Fbconverter.fromJson(json['dtUpdated']),
  );
}

Map<String, dynamic> _$_$_ProductInfoDtoToJson(_$_ProductInfoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imgUrl': instance.imgUrl,
      'title': instance.title,
      'detail': instance.detail,
      'price': instance.price,
      'cntView': instance.cntView,
      'thumbnails': instance.thumbnails,
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
      'dtUpdated': Fbconverter.toJson(instance.dtUpdated),
    };

_$_ProductDetailDto _$_$_ProductDetailDtoFromJson(Map<String, dynamic> json) {
  return _$_ProductDetailDto(
    dtCreated: Fbconverter.fromJson(json['dtCreated']),
    dtUpdated: Fbconverter.fromJson(json['dtUpdated']),
  );
}

Map<String, dynamic> _$_$_ProductDetailDtoToJson(
        _$_ProductDetailDto instance) =>
    <String, dynamic>{
      'dtCreated': Fbconverter.toJson(instance.dtCreated),
      'dtUpdated': Fbconverter.toJson(instance.dtUpdated),
    };
