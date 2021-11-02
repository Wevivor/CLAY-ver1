import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_account/models/remind/remind.dart';
import 'package:clay/h_account/models/remind/remind_dto.dart';
import 'package:clay/h_board/models/board_dtos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class RemindListController extends AbsListController
    with FbCommonModule, ElCommonModule {
  // static String MENU_POS = 'etc/remind/alarm';
  static String MENU_POS = 'etc/messages/remind_alarm';
  late dynamic _instance;

  RemindListController({
    int pageSize = 30,
  }) : super(pageSize) {
    _instance = FirebaseFirestore.instance;
  }

  static RemindListController get to => Get.find();

  void init() {}

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  Future<List<dynamic>> getList(
    int offset,
    int limit, {
    String? searchTerm,
  }) async {
    var queryList = [
      {
        "match": {"from.user_id": AuthController.to.getUser?.uid}
      }
    ];
    // if (searchTerm != null && searchTerm.isNotEmpty) {
    //   queryList.add({
    //     "match": {"info.board_badge": searchTerm}
    //   });
    // }

    final bodyJSON = {
      "from": offset,
      "size": limit,
      "query": {
        "bool": {
          "must": queryList,
        },
      },
      "sort": [
        // {"cntView": "desc"}
      ]
    };

    final lists = await listFilter('/clay_reminds/_search', bodyJSON);
    final tmp = lists.map((jsonList) {
      final item = RemindDto.fromJson(jsonList['_source']).toDomain();
      return item;
    }).toList();
    return tmp;
  }

  ///-------------------action -------------
  /// 액션
  ///----------------------------------------

  Future<void> actionInsert(RemindDto user) async {
    // userInfo = user.toDomain();
    // await insertFbByUserInfo(instance: _instance, path: MENU_POS, item: user);
  }

  Future<void> actionCreate(RemindDto user) async {
    // userInfo = user.toDomain();
    // await insertFbByUserInfo(instance: _instance, path: MENU_POS, item: user);
  }

  Future<void> actionDelete(id) async {
    try {
      LoadingController.to.isLoading = true;
      await deleteFb(instance: _instance, path: MENU_POS, id: id);
      var existIndex = cache.indexWhere(
        (element) => element.remindId == id,
      );

      if (existIndex >= 0) {
        cache.removeAt(existIndex);
      }
    } catch (e) {
      throw Exception('error');
    } finally {
      update();
      LoadingController.to.isLoading = false;
    }
  }

  Future<Remind?> actionRead(User? user) async {
    // try {
    if (user != null) {
      // final _item =
      //     await readFb(id: user.uid, instance: _instance, path: MENU_POS);

      // if (_item == null) {
      //   // throw HanUserInfoException(code: 'userinfo-not-found');
      // }
      // final info = RemindDto.fromJson(_item).toDomain();
      // userInfo = info;
      return null;
    }
  }

  Future<void> actionUpdateItem(Remind item) async {
    var existIndex = cache.indexWhere(
      (element) => element.remindId == item.remindId,
    );

    if (existIndex >= 0) {
      cache[existIndex] = item;
    }
    update();
  }

  Future<Remind?> actionExistByEmail(String userEmail,
      {String? snsLogin}) async {
    try {
      // final _result = await existQueryByEmail(
      //   instance: _instance,
      //   path: MENU_POS,
      //   email: 'profile.user_email',
      //   source: userEmail,
      //   snsLogin: snsLogin,
      // );

      // if (_result != null) {
      //   userInfo = RemindDto.fromJson(_result).toDomain();
      //   return userInfo;
      // }

      return null;
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
