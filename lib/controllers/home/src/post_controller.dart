// import 'package:clay/c_config/config.dart';
// import 'package:clay/controllers/globals/globals.dart';
// import 'package:clay/models/models.dart';
// import 'package:clay/models/models.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:get/instance_manager.dart';
// import 'package:http/http.dart' as http;
// import 'fb_post_helper_module.dart';

// class PostController extends AbstractItemController
//     with FbCommonModule, FbPostHelperModule {
//   static String MENU_POS = 'home/datas/posts';
//   late dynamic _instance;
//   late dynamic _storage;
//   PostController() {
//     _instance = FirebaseFirestore.instance;
//     _storage = FirebaseStorage.instance;
//   }

//   static PostController get to => Get.find();
//   bool _isBookmark = false;
//   bool _isFavor = false;

//   bool get isBookmark => _isBookmark;
//   bool get isFavor => _isFavor;
//   //---------------------------------
//   //------------------기본 CRUD 프로토콜
//   //---------------------------------

//   Future<Post> read(String id) async {
//     // try {
//     final _item = await readFb(id: id, instance: _instance, path: MENU_POS);

//     if (_item == null) {
//       throw Exception('error');
//     }
//     final postItem = PostDto.fromJson(_item).toDomain();

//     final _uid = AuthController.to.getUser?.uid;

//     /// 좋아요 설정
//     final existUid = postItem.info.favorite.lists
//         .firstWhere((element) => element == _uid, orElse: () {
//       return null;
//     });
//     _isFavor = existUid != null ? true : false;

//     /// 북마크 설정

//     final exist = postItem.info.bookmark.lists
//         .firstWhere((element) => element == _uid, orElse: () {
//       return null;
//     });
//     _isBookmark = exist != null ? true : false;

//     return postItem;
//   }

//   ///--------------------------------------
//   ///북마크 액션
//   ///--------------------------------------
//   Future<bool> actionBookmark(String uid) async {
//     final bookmarkLists = item.info.bookmark.lists;
//     final exist =
//         bookmarkLists.firstWhere((element) => element == uid, orElse: () {
//       return null;
//     });
//     if (exist != null) {
//       bookmarkLists.removeWhere((element) => element == uid);

//       _isBookmark = false;
//     } else {
//       bookmarkLists.add(uid);
//       _isBookmark = true;
//     }
//     update();
//     ListCntDto? newBookmark =
//         ListCnt(cnt: bookmarkLists.length, lists: bookmarkLists).toDto();

//     await updateBookmarkFb(
//         instance: _instance,
//         path: MENU_POS,
//         id: item.info.id,
//         dto: newBookmark.toJson());

//     final newItem = item.copyWith.info(bookmark: newBookmark.toDomain());
//     item = newItem;

//     return _isBookmark;
//   }

//   ///--------------
//   ///즐겨찾기 액션
//   ///--------------
//   Future<bool> actionFavor(String uid) async {
//     final favorLists = item.info.favorite.lists;
//     final exist =
//         favorLists.firstWhere((element) => element == uid, orElse: () {
//       return null;
//     });
//     // var newFavor = null;

//     if (exist != null) {
//       favorLists.removeWhere((element) => element == uid);

//       _isFavor = false;
//     } else {
//       favorLists.add(uid);
//       _isFavor = true;
//     }
//     update();
//     ListCntDto? newFavor =
//         ListCnt(cnt: favorLists.length, lists: favorLists).toDto();

//     print('----------> ${DateTime.now()},${newFavor.toString()}');
//     final _now = DateTime.now();
//     await updateFavorFb(
//         instance: _instance,
//         path: MENU_POS,
//         id: item.info.id,
//         dto: newFavor.toJson());
//     print('----------> ${_now.difference(DateTime.now())}');

//     final newItem = item.copyWith.info(favorite: newFavor.toDomain());
//     item = newItem;

//     return _isFavor;
//   }

//   int get level => item.author.level;
// }
