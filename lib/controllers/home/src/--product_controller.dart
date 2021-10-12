// import 'package:clay/c_config/config.dart';
// import 'package:clay/c_globals/helper/helpers.dart';
// import 'package:clay/controllers/globals/globals.dart';
// import 'package:clay/models/models.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:get/instance_manager.dart';

// class ProductController extends AbstractItemController with FbCommonModule {
//   static String MENU_POS = 'home/datas/products';
//   static String path = '/api/characters/';
//   late dynamic _instance;
//   late dynamic _storage;
//   ProductController() {
//     _instance = FirebaseFirestore.instance;
//     _storage = FirebaseStorage.instance;
//     // fetchItems();
//   }

//   static ProductController get to => Get.find();
//   bool _isPin = false;

//   bool get isPin => _isPin;
//   //---------------------------------
//   //------------------기본 프로토콜
//   //---------------------------------

//   Future<Product> read(String id) async {
//     // try {
//     final _item = await readFb(id: id, instance: _instance, path: MENU_POS);

//     if (_item == null) {
//       throw Exception('error');
//     }
//     final info = ProductDto.fromJson(_item).toDomain();

//     // final user = 'NE5YNZ2tkFbVUHSfTqY62eZIE0p1';
//     final user = AuthController.to.getUser!.uid;

//     ///=============================================
//     /// 핀 설정
//     ///=============================================
//     final existUid =
//         info.pin?.lists.firstWhere((element) => element == user, orElse: () {
//       return null;
//     });
//     if (existUid != null)
//       _isPin = true;
//     else
//       _isPin = false;
//     return info;
//   }

//   ///=============================================
//   /// 액션 파트
//   ///=============================================

//   Future<void> actionPin(String uid) async {
//     final exist =
//         item.pin.lists.firstWhere((element) => element == uid, orElse: () {
//       return null;
//     });
//     var newPin = null;
//     if (exist != null) {
//       item.pin.lists.removeWhere((element) => element == uid);

//       newPin =
//           item.pin.copyWith(cnt: item.pin.lists.length, lists: item.pin.lists);
//       _isPin = false;
//     } else {
//       item.pin.lists.add(uid);
//       newPin =
//           item.pin.copyWith(cnt: item.pin.lists.length, lists: item.pin.lists);
//       _isPin = true;
//     }
//     final newItem = item.copyWith(pin: newPin);
//     await updateFb(
//         instance: _instance, path: MENU_POS, id: newItem.info.id, dto: newItem);
//     item = newItem;
//     update();

//     ///TODO 자신의 정보를 넣어야 함.
//   }

//   Future<void> actionLaunch() async {
//     await AppHelper.launchURL(item.homeURL);
//   }

//   int get level => item.author.level;
// }
