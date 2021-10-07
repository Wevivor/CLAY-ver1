// import 'package:clay/c_config/config.dart';
// import 'package:clay/controllers/globals/globals.dart';
// import 'package:clay/models/models.dart';

// import 'package:get/instance_manager.dart';
// import 'package:http/http.dart' as http;

// class PostProductListController extends AbsListController
//     with FbCommonModule, ElCommonModule {
//   static String MENU_POS = 'home/datas/products';
//   static String path = '/api/characters/';
//   late dynamic _instance;
//   late dynamic _storage;
//   PostProductListController({
//     int pageSize = 30,
//   }) : super(pageSize) {
//     _instance = FirebaseFirestore.instance;
//     _storage = FirebaseStorage.instance;
//   }

//   static PostProductListController get to => Get.find();
//   Future<List<dynamic>> getList(
//     int offset,
//     int limit, {
//     String? searchTerm,
//   }) async {
//     final searchQuery = {
//       "prefix": {"title": searchTerm}
//     };

//     final bodyJSON = {
//       "query": {
//         "bool": {
//           "must": [searchQuery],
//         }
//       },
//       "sort": [
//         {"dtCreated": "desc"}
//       ]
//     };

//     final lists = await listFilter('/afada_products/_search', bodyJSON);
//     return lists.map((jsonList) {
//       return ProductInfo.fromJson(jsonList['_source']);
//     }).toList();
//   }

//   //------------------기본 CRUD 프로토콜

//   Future<HanUserInfo> read(String id) async {
//     // try {
//     final _item = await readFb(id: id, instance: _instance, path: MENU_POS);

//     if (_item == null) {
//       throw Exception('error');
//     }
//     final info = HanUserInfoDto.fromJson(_item);

//     update();
//     return info.toDomain();
//   }

//   /// API에 사용하는 함수임.
//   String _buildSearchTermQuery(String? searchTerm) =>
//       searchTerm?.isEmpty == false
//           ? '&name=${searchTerm?.replaceAll(' ', '+').toLowerCase()}'
//           : '';
// }
