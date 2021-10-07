import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/models/globals/globals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'posts.dart';
part 'posts_dtos.freezed.dart';
part 'posts_dtos.g.dart';

@freezed
class PostDto with _$PostDto {
  @JsonSerializable(explicitToJson: true)
  factory PostDto({
    String? id,
    required PostInfoDto info,
    required ProfileDto profile,
    List<ProductInfoDto?>? product,
    // PostDetail? detail,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtUpdated,
    ListCntDto? tags,
    String? kind,
  }) = _PostDto;
  PostDto._();

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);
  Post toDomain() => Post(
        id: id,
        profile: profile.toDomain(),
        info: info.toDomain(),
        product: product?.map((elem) => elem?.toDomain()).toList(),
        // bookmark: bookmark?.toDomain(),
        // favorite: favorite?.toDomain(),
        tags: tags?.toDomain(),
        dtCreated: dtCreated,
        dtUpdated: dtUpdated,
        kind: kind,
      );
}

@freezed
class PostDetailDto with _$PostDetailDto {
  //사용자 아바타 정보
  @JsonSerializable(explicitToJson: true)
  factory PostDetailDto({
    required int level,
    String? brand,
    double? price,
    double? name,
    String? homeURL,
    String? snsURL,
  }) = _PostDetailDto;
  PostDetailDto._();
  factory PostDetailDto.fromJson(Map<String, dynamic> json) =>
      _$PostDetailDtoFromJson(json);

  PostDetail toDomain() => PostDetail(
        level: level,
        brand: brand,
        price: price,
        name: name,
        homeURL: homeURL,
        snsURL: snsURL,
      );
}

@freezed
class PostInfoDto with _$PostInfoDto {
  @JsonSerializable(explicitToJson: true)
  factory PostInfoDto({
    String? id,
    String? imgUrl,
    String? uid,
    String? title,
    String? content,
    required int cntView,
    required int contentKind,

    ///북마크
    required ListCntDto bookmark,
    required ListCntDto favorite,
    List<String?>? thumbnails,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtUpdated,

    // List<Comment>? comments;
  }) = _PostInfoDto;
  PostInfoDto._();
  factory PostInfoDto.fromJson(Map<String, dynamic> json) =>
      _$PostInfoDtoFromJson(json);

  PostInfo toDomain() => PostInfo(
        id: id,
        imgUrl: imgUrl,
        uid: uid,
        title: title,
        contentKind: contentKind,
        content: content,
        cntView: cntView,
        thumbnails: thumbnails,
        bookmark: bookmark.toDomain(),
        favorite: favorite.toDomain(),
        dtCreated: dtCreated,
        dtUpdated: dtUpdated,
      );
}

@freezed
class PostSummaryDto with _$PostSummaryDto {
  @JsonSerializable(explicitToJson: true)
  factory PostSummaryDto({
    String? id,
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
        required DateTime dtUpdated,

    // List<Comment>? comments;
  }) = _PostSummaryDto;
  PostSummaryDto._();
  factory PostSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$PostSummaryDtoFromJson(json);

  PostSummary toDomain() => PostSummary(
        id: id,
        imgUrl: imgUrl,
        uid: uid,
        title: title,
        contentKind: contentKind,
        content: content,
        cntView: cntView,
        thumbnails: thumbnails,
        dtCreated: dtCreated,
        dtUpdated: dtUpdated,
      );
}

@freezed
class ProductDto with _$ProductDto {
  @JsonSerializable(explicitToJson: true)
  factory ProductDto({
    ///제품 개요
    String? id,
    String? uid,
    String? imgUrl,
    required ProductInfoDto info,
    required ProfileDto profile,
    // ProductDetailDto? detail,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtUpdated,

    ///북마크
    ListCntDto? pin,
    // ListCnt? favorite,
    // ListCnt? tags,
  }) = _ProductDto;
  ProductDto._();

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
  Product toDomain() => Product(
        id: id,
        uid: uid,
        imgUrl: imgUrl,
        info: info.toDomain(),
        // detail: detail?.toDomain(),
        profile: profile.toDomain(),
        dtCreated: dtCreated,
        dtUpdated: dtUpdated,
        pin: pin?.toDomain(),
      );
}

@freezed
class ProductInfoDto with _$ProductInfoDto {
  // @Assert('(phone?.length ?? 0) > 5', '이름은 5자 이하만 입력 가능합니다.')
  @JsonSerializable(explicitToJson: true)
  factory ProductInfoDto({
    String? id,
    required String imgUrl,
    required String title,
    required String detail,
    required double price,
    required int cntView,
    List<String?>? thumbnails,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtUpdated,
  }) = _ProductInfoDto;

  factory ProductInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ProductInfoDtoFromJson(json);

  ProductInfoDto._();
  ProductInfo toDomain() => ProductInfo(
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

@freezed
class ProductDetailDto with _$ProductDetailDto {
  // @Assert('(phone?.length ?? 0) > 5', '이름은 5자 이하만 입력 가능합니다.')
  factory ProductDetailDto({
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtCreated,
    @JsonKey(fromJson: Fbconverter.fromJson, toJson: Fbconverter.toJson)
        required DateTime dtUpdated,
  }) = _ProductDetailDto;

  factory ProductDetailDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailDtoFromJson(json);

  ProductDetailDto._();
  ProductDetail toDomain() => ProductDetail(
        dtCreated: dtCreated,
        dtUpdated: dtUpdated,
      );
}
