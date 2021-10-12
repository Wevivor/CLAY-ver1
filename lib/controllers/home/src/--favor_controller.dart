// import 'package:clay/c_config/config.dart';
// import 'package:clay/controllers/globals/globals.dart';
// import 'package:clay/models/models.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// import 'package:get/instance_manager.dart';
// import 'package:http/http.dart' as http;

// class FavorController extends AbsListController
//     with FbCommonModule, ElCommonModule {
//   static String MENU_POS = 'history/favor/favor_info';
//   late dynamic _instance;
//   FavorController({
//     int pageSize = 30,
//   }) : super(pageSize) {
//     _instance = FirebaseFirestore.instance;
//     // super.fetchItems();
//   }

//   static FavorController get to => Get.find();
//   Future<List<dynamic>> getList(
//     int offset,
//     int limit, {
//     String? searchTerm,
//   }) async {
//     final bodyJSON = {
//       "query": {
//         "bool": {
//           "must": [
//             {
//               "match": {"owner.uid": AuthController.to.getUser?.uid}
//             }
//           ],
//         }
//       },
//       "sort": [
//         {"dtCreated": "desc"}
//       ]
//     };

//     final lists = await listFilter('/afada_favors/_search', bodyJSON);
//     return lists.map((jsonList) {
//       return FavorDto.fromJson(jsonList['_source']).toDomain();
//     }).toList();

//     // final lists = await listFb(instance: _instance, path: MENU_POS);
//     // return lists.map((jsonObject) {
//     //   return BookmarkDto.fromJson(jsonObject).toDomain();
//     // }).toList();
//   }

//   //  =>
//   //     client
//   //         .get(Uri.parse(
//   //             '${Const.baseUrl}$path?offset=$offset&limit=$limit${_buildSearchTermQuery(searchTerm)}'))
//   //         .mapResponse((List<dynamic> jsonArray) => jsonArray
//   //             .map((jsonObject) => ProfileBookmark.fromJson(jsonObject))
//   //             .toList());

//   Future<void> insert({required Favor item}) async {
//     final favor = item.toDto();
//     await insertFb(instance: _instance, path: MENU_POS, item: favor);
//   }

//   Future<void> delete({required String postId, required String uid}) async {
//     final _collectionRef = _instance.collection(MENU_POS);

//     final querySnap = await _collectionRef
//         .where('postId', isEqualTo: postId)
//         .where('owner.uid', isEqualTo: uid)
//         .get();
//     List<dynamic> _tmp = [];
//     querySnap.docs.forEach((doc) {
//       final data = doc.data();
//       _tmp.add(data);
//     });
//     _tmp.forEach((element) async {
//       await deleteFb(instance: _instance, path: MENU_POS, id: element['id']);
//     });
//   }

//   Future<Favor?> read({required String id}) async {
//     final _item = await readFb(id: id, instance: _instance, path: MENU_POS);

//     if (_item == null) {
//       throw Exception('error');
//     }
//     final info = FavorDto.fromJson(_item).toDomain();
//     return info;
//   }
// }
