// import 'package:clay/c_config/config.dart';
// import 'package:clay/models/models.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:get/instance_manager.dart';
// import '../../controllers.dart';
// import 'fb_post_helper_module.dart';

// class PostController extends AbsItemController
//     with FbCommonModule, FbPostHelperModule {
//   static String MENU_POS = 'home/datas/posts';
//   late dynamic _instance;
//   late dynamic _storage;
//   PostController() {
//     _instance = FirebaseFirestore.instance;
//     _storage = FirebaseStorage.instance;
//   }

//   static PostController get to => Get.find();
//   //---------------------------------
//   //------------------기본 CRUD 프로토콜
//   //---------------------------------

//   Future<Contents> actionRead(String id) async {
//     // try {
//     final _item = await readFb(id: id, instance: _instance, path: MENU_POS);

//     if (_item == null) {
//       throw Exception('error');
//     }
//     final postItem = ContentsDto.fromJson(_item).toDomain();

//     return postItem;
//   }
// }
