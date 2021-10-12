// import 'package:clay/c_config/config.dart';
// import 'package:clay/controllers/globals/globals.dart';
// import 'package:clay/models/models.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:get/instance_manager.dart';
// import 'package:http/http.dart' as http;

// ////포스트 간략정보 리스트를 가져오는 컨틀로러

// class PostInfoController extends AbsListController with FbCommonModule {
//   static String MENU_POS = 'home/datas/posts';
//   static String path = '/api/characters/';
//   late dynamic _instance;
//   late dynamic _storage;
//   PostInfoController({
//     int pageSize = 30,
//     required http.Client client,
//   }) : super(pageSize) {
//     _instance = FirebaseFirestore.instance;
//     _storage = FirebaseStorage.instance;
//     // fetchItems();
//   }

//   static PostInfoController get to => Get.find();
//   Future<List<dynamic>> getList(
//     int offset,
//     int limit, {
//     String? searchTerm,
//   }) async {
//     final lists = await listFb(instance: _instance, path: MENU_POS);
//     return lists.map((jsonObject) {
//       return PostInfoDto.fromJson(jsonObject['info']).toDomain();
//     }).toList();
//     /*
//     String url =
//         '${Const.baseUrl}$path?offset=$offset&limit=$limit${_buildSearchTermQuery(searchTerm)}';
//     return client.get(Uri.parse(url.trim())).mapResponse(
//         (List<dynamic> jsonArray) => jsonArray
//             .map((jsonObject) => PostInfo.fromJson(jsonObject))
//             .toList());
//             */
//   }

//   //---------------------------------
//   //------------------기본 CRUD 프로토콜
//   //---------------------------------

//   Future<PostInfo> read(String id) async {
//     // try {
//     final _item = await readFb(id: id, instance: _instance, path: MENU_POS);

//     if (_item == null) {
//       throw Exception('error');
//     }
//     final info = PostInfoDto.fromJson(_item).toDomain();
//     this.item = info;
//     update();
//     return info;
//   }
// }
