// import 'package:clay/c_config/config.dart';
// import 'package:clay/controllers/globals/globals.dart';
// import 'package:clay/models/models.dart';

// import 'package:get/instance_manager.dart';
// import 'package:http/http.dart' as http;

// class FavorListController extends AbsListController
//     with FbCommonModule, ElCommonModule {
//   static String MENU_POS = 'home/datas/posts';
//   static String path = '/api/characters/';
//   late dynamic _instance;
//   late dynamic _storage;
//   FavorListController({
//     int pageSize = 30,
//   }) : super(pageSize) {
//     _instance = FirebaseFirestore.instance;
//     _storage = FirebaseStorage.instance;
//     // fetchItems();
//   }

//   static FavorListController get to => Get.find();
//   Future<List<dynamic>> getList(
//     int offset,
//     int limit, {
//     String? searchTerm,
//   }) async {
//     var bodyJSON;

//     String where = """
//    """;
//     String orderby = 'ORDER BY cntView DESC';

// // shareCount,
//     bodyJSON = {
//       "query": """
//             select id,title,content,imgUrl,cntView,uid,dtCreated,dtUpdated
//             from afada_posts
            
//             $orderby
//             """,
//     };

//     return [];
// /*

//     final lists = await listFb(instance: _instance, path: MENU_POS);
//     return lists
//         .map(
//             (jsonObject) => PostInfoDto.fromJson(jsonObject['info']).toDomain())
//         .toList();
         
//     String url =
//         '${Const.baseUrl}$path?offset=$offset&limit=$limit${_buildSearchTermQuery(searchTerm)}';
//     return client.get(Uri.parse(url.trim())).mapResponse(
//         (List<dynamic> jsonArray) => jsonArray
//             .map((jsonObject) => PostListItem.fromJson(jsonObject))
//             .toList());
//     */
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

//   Future<void> actionfresh(String id) async {
//     // try {
//     final _item = await readFb(id: id, instance: _instance, path: MENU_POS);

//     if (_item == null) {
//       throw Exception('error');
//     }
//     final _post = PostDto.fromJson(_item).toDomain();
//     var existIndex = cache.indexWhere(
//       (element) => element.id == id,
//     );

//     if (existIndex >= 0) {
//       cache[existIndex] = _post.info;
//     }

//     // final info = PostInfo.fromJson((_info.info));
//     this.item = _post;
//     update();
//     return;
//   }

//   /// API에 사용하는 함수임.
//   String _buildSearchTermQuery(String? searchTerm) =>
//       searchTerm?.isEmpty == false
//           ? '&name=${searchTerm?.replaceAll(' ', '+').toLowerCase()}'
//           : '';
// }
