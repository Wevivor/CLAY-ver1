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
  static String MENU_POS = 'etc/remind/alarm';
  late dynamic _instance;
  final TextEditingController alarmTextController = TextEditingController();

  RemindListController({
    int pageSize = 30,
  }) : super(pageSize) {
    _instance = FirebaseFirestore.instance;
  }

  static RemindListController get to => Get.find();

  void init() {
    alarmTextController.clear();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    alarmTextController.dispose();
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
        "match": {"board_creator.user_id": AuthController.to.getUser?.uid}
      }
    ];
    if (searchTerm != null && searchTerm.isNotEmpty) {
      queryList.add({
        "match": {"info.board_badge": searchTerm}
      });
    }

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

    final lists = await listFilter('/clay_boards/_search', bodyJSON);
    final tmp = lists.map((jsonList) {
      final item = BoardDto.fromJson(jsonList['_source']).toDomain();
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

  Future<void> actionDelete(String uid) async {
    // try {
    //   await deleteFb(
    //     id: uid,
    //     instance: _instance,
    //     path: MENU_POS,
    //   );
    // } catch (e) {
    //   print('===>' + e.toString());
    //   throw e;
    // }
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

  Future<void> actionUpdate(RemindDto dto) async {
    print('==============> ' + DateTime.now().toIso8601String());
    // try {
    //   await updateFb(
    //       id: dto.userId ?? '', instance: _instance, path: MENU_POS, dto: dto);
    //   userInfo = dto.toDomain();
    //   update();
    // } catch (e) {
    //   print('===>' + e.toString());
    //   throw e;
    // }
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
