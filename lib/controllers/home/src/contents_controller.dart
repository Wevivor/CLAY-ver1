import 'dart:convert';
import 'dart:io';

import 'package:clay/c_config/config.dart';
import 'package:clay/models/models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/rendering.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:clay/controllers/common/commons.dart';
import 'package:path_provider/path_provider.dart';

import 'fb_post_helper_module.dart';

class ContentsController extends AbsItemController
    with FbCommonModule, FbPostHelperModule {
  static String MENU_POS = 'contents';
  late FirebaseFirestore _instance;
  bool isCommentShow = false;
  // Board? boardItem;
  Contents? contentsItem;
  final TextEditingController linkController = TextEditingController();
  final TextEditingController commentController = TextEditingController();
  final TextEditingController memoController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  ContentsController() {
    _instance = FirebaseFirestore.instance;
  }

  static ContentsController get to => Get.find();

  @override
  void onClose() {
    titleController.dispose();
    memoController.dispose();
    commentController.dispose();
    linkController.dispose();
    super.onClose();
  }

  void initTextController() {
    titleController.text = '';
    memoController.text = '';
    commentController.text = '';
    linkController.text = '';
  }

  //---------------------------------
  //------------------기본 CRUD 프로토콜
  //---------------------------------
  @override
  Future<Board> actionRead(String id) async {
    // try {
    final _item = await readFb(id: id, instance: _instance, path: MENU_POS);

    if (_item == null) {
      throw Exception('error');
    }
    final _post = BoardDto.fromJson(_item).toDomain();

    // final info = PostInfo.fromJson((_info.info));
    this.item = _post.info;
    update();
    return _post;
  }

  Future<void> actionIns(ContentsDto item) async {
    try {
      LoadingController.to.isLoading = true;
      // final _item =
      //     await insertFb(instance: _instance, path: MENU_POS, item: item);

      final docRef = _instance.collection('$MENU_POS').doc();
      //TODO 여러가지의 경우 info 인지 아닌지?
      final newItem = item.copyWith(
          contentsId: docRef.id,
          info: item.info.copyWith(contentsId: docRef.id));
      await docRef.set(newItem.toJson(), SetOptions(merge: true));
    } catch (e) {
      throw Exception('error');
    } finally {
      update();
      LoadingController.to.isLoading = false;
    }
  }

  Future<void> actionDelete(id) async {
    try {
      LoadingController.to.isLoading = true;
      await deleteFb(instance: _instance, path: MENU_POS, id: id);
    } catch (e) {
      throw Exception('error');
    } finally {
      update();
      LoadingController.to.isLoading = false;
    }
  }

  Future<void> actionContentsUpdate(ContentsDto item) async {
    try {
      await updateFb(
          instance: _instance,
          path: MENU_POS,
          id: item.contentsId ?? '',
          dto: item);
    } catch (e) {
      throw Exception('error ${e.toString()}');
    } finally {
      update();
      LoadingController.to.isLoading = false;
    }
  }

  // Future<void> actionUpdate() async {
  //   try {
  //     await updateFb(
  //         instance: _instance,
  //         path: MENU_POS,
  //         id: boardItem?.boardId ?? '',
  //         dto: boardItem?.toDto());
  //   } catch (e) {
  //     throw Exception('error ${e.toString()}');
  //   } finally {
  //     update();
  //     LoadingController.to.isLoading = false;
  //   }
  // }

  Future<void> actionUpdateInfo({id, info}) async {
    try {
      LoadingController.to.isLoading = true;
      await updateInfoFb(
          instance: _instance,
          path: MENU_POS,
          id: id,
          info: {'info': info.toJson()});
    } catch (e) {
      throw Exception('error ${e.toString()}');
    } finally {
      update();
      LoadingController.to.isLoading = false;
    }
  }

  Future<void> actionPin({fix}) async {
    try {
      if (contentsItem?.info != null) {
        final _info = contentsItem?.info;
        contentsItem =
            contentsItem?.copyWith(info: _info!.copyWith(contentsFixed: fix));
        await actionUpdateInfo(
            id: contentsItem?.contentsId,
            info: contentsItem?.info.copyWith(contentsFixed: fix).toDto());
      }
    } catch (e) {
      throw Exception('error ${e.toString()}');
    } finally {
      LoadingController.to.isLoading = false;
    }
  }
}
