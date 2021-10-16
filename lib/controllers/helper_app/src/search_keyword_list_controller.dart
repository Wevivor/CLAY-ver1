import 'dart:core';

import 'package:clay/c_config/config.dart';
import 'package:clay/controllers/common/commons.dart';

import 'package:clay/models/models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:sprintf/sprintf.dart';

import 'fb_search_history_module.dart';

class SearchKeyWordListController extends GetxController
    with FbCommonModule, FbSearchHistoryModule {
  static String MENU_POS = 'history/searchwords/users';
  late dynamic _instance;

  SearchKeyWordListController() {
    _instance = FirebaseFirestore.instance;
  }
  static SearchKeyWordListController get to => Get.find();
  List<SearchKeyword> cache = [];
  List<SearchKeyword> backup = [];

  List<SearchKeyword> get suggestions => cache;

  ///--------------------------------------
  /// 액션 부분
  ///--------------------------------------
  void insertNode(SearchKeyword keyword) {
    final exist = cache.where((element) => element.word == keyword.word);
    if (exist.length > 0)
      return;
    else {
      cache.insert(0, keyword);
      backup = [...backup, keyword];
      final _cache = backup.map((e) => e.toJson()).toList();

      final item = SearchKeywordList(
          strUid: AuthController.to.getUser?.uid,
          name: AuthController.to.getUser?.displayName,
          node: _cache);

      setFb(
          instance: _instance,
          // path: sprintf('%s/%s', [MENU_POS, AuthController.to.getUser?.uid]),
          path: sprintf('%s', [
            MENU_POS,
          ]),
          id: AuthController.to.getUser?.uid ?? '',
          dto: item.toJson());
    }
  }

  Future<void> removeNode(String keyword) async {
    backup.removeWhere((e) => e.word == keyword);
    cache.removeWhere((e) => e.word == keyword);

    update();

    try {
      final _cache = cache.map((e) => e.toJson()).toList();
      final item = SearchKeywordList(
          strUid: AuthController.to.getUser?.uid,
          name: AuthController.to.getUser?.displayName,
          node: _cache);
      setFb(
          instance: _instance,
          path: sprintf('%s', [
            MENU_POS,
          ]),
          id: AuthController.to.getUser?.uid ?? '',
          dto: item.toJson());
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }

  Future<void> actionRead(String uid) async {
    var item = null;
    try {
      item = await readFb(instance: _instance, path: MENU_POS, id: uid);
      if (item != null) {
        final data = SearchKeywordList.fromJson(item);
        if (data.node != null) {
          var list = data.node?.map((e) => SearchKeyword.fromJson(e)).toList();
          list?.sort((a, b) => b.dtCreated.compareTo(a.dtCreated));
          cache = [...(list ?? [])];
          backup = [...cache];
        }
      } else {
        List<SearchKeyword> node = [];
        await actionWrite(node);
      }
      update();
    } on FirebaseException catch (e) {
      print(e);
      // item = await readFb(instance: _instance, path: MENU_POS, uid: uid);
    } catch (e) {
      if (e.toString().contains('isValidCollectionPath(collectionPath)')) {
        List<SearchKeyword> node = [];
        await actionWrite(node);
      }
      print('===>' + e.toString());
      throw e;
    }
  }

  Future<void> actionWrite(final node) async {
    try {
      final item = SearchKeywordList(
          strUid: AuthController.to.getUser?.uid,
          name: AuthController.to.getUser?.displayName,
          node: node == null ? cache : node);

      insertFb(instance: _instance, path: MENU_POS, item: item);
      update();
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }
}
