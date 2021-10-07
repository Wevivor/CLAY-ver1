import 'package:clay/models/models.dart';
import 'package:clay/models/globals/globals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts.freezed.dart';

@freezed
class Post with _$Post {
  factory Post({
    String? id,
    required PostInfo info,
    required Profile profile,
    List<ProductInfo?>? product,
    // PostDetail? detail,
    required DateTime dtCreated,
    required DateTime dtUpdated,

    // ListCnt? bookmark,
    // ListCnt? favorite,
    ListCnt? tags,
    String? kind,
  }) = _Post;
  Post._();
}

@freezed
class PostDetail with _$PostDetail {
  //사용자 아바타 정보
  factory PostDetail({
    required int level,
    String? brand,
    double? price,
    double? name,
    String? homeURL,
    String? snsURL,
  }) = _PostDetail;
}

@freezed
class PostInfo with _$PostInfo {
  factory PostInfo({
    String? id,
    String? imgUrl,
    String? uid,
    String? title,
    String? content,
    required int contentKind,

    ///북마크
    required ListCnt bookmark,
    required ListCnt favorite,
    required int cntView,
    List<String?>? thumbnails,
    required DateTime dtCreated,
    required DateTime dtUpdated,

    // List<Comment>? comments;
  }) = _PostInfo;
  PostInfo._();

  PostInfoDto toDto() => PostInfoDto(
        id: id,
        imgUrl: imgUrl,
        uid: uid,
        title: title,
        content: content,
        contentKind: contentKind,
        cntView: cntView,
        thumbnails: thumbnails,
        bookmark: bookmark.toDto(),
        favorite: favorite.toDto(),
        dtCreated: dtCreated,
        dtUpdated: dtUpdated,
      );
}

@freezed
class PostSummary with _$PostSummary {
  factory PostSummary({
    String? id,
    String? imgUrl,
    String? uid,
    String? title,
    String? content,
    required int contentKind,
    required int cntView,
    List<String?>? thumbnails,
    required DateTime dtCreated,
    required DateTime dtUpdated,

    // List<Comment>? comments;
  }) = _PostSummary;
  PostSummary._();

  factory PostSummary.fromJson(Map<String, dynamic> json) {
    return PostSummaryDto(
      id: json['id'] as String?,
      imgUrl: json['imgUrl'] as String?,
      contentKind: json['contentKind'] as int,
      uid: json['uid'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      cntView: json['cntView'] as int,
      thumbnails: (json['thumbnails'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      dtCreated: DateTime.parse(json['dtCreated']),
      dtUpdated: DateTime.parse(json['dtUpdated']),
    ).toDomain();
  }

  PostSummaryDto toDto() => PostSummaryDto(
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

@freezed
class Product with _$Product {
  factory Product({
    ///제품 개요
    String? id,
    String? uid,
    String? imgUrl,
    required ProductInfo info,
    required Profile profile,
    // ProductDetail? detail,
    // required UserDetail use,
    // required String homeURL,

    required DateTime dtCreated,
    required DateTime dtUpdated,

    ///북마크
    ListCnt? pin,
    // ListCnt? favorite,
    // ListCnt? tags,
  }) = _Product;
  Product._();
}

@freezed
class ProductInfo with _$ProductInfo {
  factory ProductInfo({
    String? id,
    required String imgUrl,
    required String title,
    required String detail,
    required double price,
    required int cntView,
    List<String?>? thumbnails,
    required DateTime dtCreated,
    required DateTime dtUpdated,
  }) = _ProductInfo;

  ProductInfo._();
  ProductInfoDto toDto() => ProductInfoDto(
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
  factory ProductInfo.fromJson(Map<String, dynamic> json) {
    return ProductInfo(
      id: json['id'] as String?,
      imgUrl: json['imgUrl'] as String,
      title: json['title'] as String,
      detail: json['detail'] as String,
      price: (json['price'] as num).toDouble(),
      cntView: json['cntView'] as int,
      thumbnails: (json['thumbnails'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      dtCreated: DateTime.parse(json['dtCreated']),
      dtUpdated: DateTime.parse(json['dtUpdated']),
    );
  }
}

@freezed
class ProductDetail with _$ProductDetail {
  // @Assert('(phone?.length ?? 0) > 5', '이름은 5자 이하만 입력 가능합니다.')
  factory ProductDetail({
    required DateTime dtCreated,
    required DateTime dtUpdated,
  }) = _ProductDetail;

  ProductDetail._();
}
