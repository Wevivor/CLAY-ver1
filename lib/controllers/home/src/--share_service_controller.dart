// import 'dart:convert';

// import 'package:clay/c_config/config.dart';
// import 'package:clay/models/models.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/rendering.dart';
// import 'package:get/instance_manager.dart';
// import 'package:get/state_manager.dart';
// import 'package:http/http.dart' as http;
// import 'package:clay/controllers/common/commons.dart';

// class ShareServiceController extends AbsItemController with FbCommonModule {
//   static String MENU_POS = 'board';
//   late FirebaseFirestore _instance;
//   Board? boardItem;
//   ShareServiceController() {
//     _instance = FirebaseFirestore.instance;
//   }
//   final TextEditingController commentController = TextEditingController();
//   static ShareServiceController get to => Get.find();

//   @override
//   void onClose() {
//     commentController.dispose();
//     super.onClose();
//   }

//   //---------------------------------
//   //------------------기본 CRUD 프로토콜
//   //---------------------------------
//   @override
//   Future<Board> actionRead(String id) async {
//     // try {
//     final _item = await readFb(id: id, instance: _instance, path: MENU_POS);

//     if (_item == null) {
//       throw Exception('error');
//     }
//     final _post = BoardDto.fromJson(_item).toDomain();

//     // final info = PostInfo.fromJson((_info.info));
//     this.item = _post.info;
//     update();
//     return _post;
//   }

//   Future<void> actionIns(BoardDto item) async {
//     try {
//       LoadingController.to.isLoading = true;
//       // final _item =
//       //     await insertFb(instance: _instance, path: MENU_POS, item: item);

//       final docRef = _instance.collection('$MENU_POS').doc();
//       //TODO 여러가지의 경우 info 인지 아닌지?
//       final newItem = item.copyWith(
//           boardId: docRef.id, info: item.info.copyWith(boardId: docRef.id));
//       await docRef.set(newItem.toJson(), SetOptions(merge: true));
//     } catch (e) {
//       throw Exception('error');
//     } finally {
//       update();
//       LoadingController.to.isLoading = false;
//     }
//   }

//   Future<void> actionDelete(id) async {
//     try {
//       LoadingController.to.isLoading = true;
//       await deleteFb(instance: _instance, path: MENU_POS, id: id);
//     } catch (e) {
//       throw Exception('error');
//     } finally {
//       update();
//       LoadingController.to.isLoading = false;
//     }
//   }

//   Future<void> actionUpdate() async {
//     try {
//       await updateFb(
//           instance: _instance,
//           path: MENU_POS,
//           id: boardItem?.boardId ?? '',
//           dto: boardItem?.toDto());
//     } catch (e) {
//       throw Exception('error ${e.toString()}');
//     } finally {
//       update();
//       LoadingController.to.isLoading = false;
//     }
//   }

//   Future<void> actionUpdateInfo({id, info}) async {
//     try {
//       LoadingController.to.isLoading = true;
//       await updateInfoFb(
//           instance: _instance,
//           path: MENU_POS,
//           id: id,
//           info: {'info': info.toJson()});
//     } catch (e) {
//       throw Exception('error ${e.toString()}');
//     } finally {
//       update();
//       LoadingController.to.isLoading = false;
//     }
//   }

//   Future<void> actionPin({fix}) async {
//     try {
//       if (boardItem?.info != null) {
//         final _info = boardItem?.info;
//         boardItem = boardItem?.copyWith(info: _info!.copyWith(isFixed: fix));
//         update();
//         await actionUpdateInfo(
//             id: boardItem?.boardId,
//             info: boardItem?.info.copyWith(isFixed: fix).toDto());
//       }
//     } catch (e) {
//       throw Exception('error ${e.toString()}');
//     } finally {
//       LoadingController.to.isLoading = false;
//     }
//   }

//   void actionChangeColor(String color) async {
//     final _newInfo = boardItem!.info.copyWith(boardColor: color);
//     final _newItem = boardItem!.copyWith(info: _newInfo);
//     boardItem = _newItem;

//     update();
//   }

//   void actionChangeShare(int share) async {
//     final _newInfo = boardItem!.info.copyWith(shareCheck: share);
//     final _newItem = boardItem!.copyWith(shareCheck: share, info: _newInfo);
//     boardItem = _newItem;
//     update();
//   }

//   void actionChangeBadge(String badge) async {
//     final _newInfo = boardItem!.info.copyWith(boardBadge: badge);
//     final _newItem = boardItem!.copyWith(info: _newInfo);
//     boardItem = _newItem;
//     update();
//   }

//   void actionChangeName(String name) async {
//     final _newInfo = boardItem!.info.copyWith(boardName: name);
//     final _newItem = boardItem!.copyWith(info: _newInfo);
//     boardItem = _newItem;
//   }

//   // void actionBoardInfo({
//   //   required String name,
//   // }) async {
//   //   final _newInfo = boardItem!.info.copyWith(boardName: name);
//   //   final _newItem = boardItem!.copyWith(info: _newInfo);
//   //   boardItem = _newItem;
//   // }
// }
