import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_account/models/remind/remind.dart';
import 'package:clay/h_account/models/remind/remind_dto.dart';
import 'package:clay/h_board/models/board_dtos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class RemindController extends AbsItemController with FbCommonModule {
  // static String MENU_POS = 'etc/remind/alarm';
  static String MENU_POS = 'etc/messages/remind_alarm';
  late FirebaseFirestore _instance;
  Remind? remindItem;
  DateTime? date;
  DateTime? time;
  final TextEditingController txtController = TextEditingController();
  FocusNode? myFocusNode;
  RxBool isTxtEditble = true.obs;

  RemindController() {
    _instance = FirebaseFirestore.instance;
    init();
  }

  static RemindController get to => Get.find();

  @override
  void onClose() {
    myFocusNode?.dispose();
    txtController.dispose();
    super.onClose();
  }

  void init() {
    date = null;
    time = null;
    myFocusNode = null;
    isTxtEditble.value = true;
    txtController.clear();
  }

  //---------------------------------
  //------------------기본 CRUD 프로토콜
  //---------------------------------
  @override
  Future<Remind> actionRead(String id) async {
    // try {
    final _item = await readFb(id: id, instance: _instance, path: MENU_POS);

    if (_item == null) {
      throw Exception('error');
    }
    final _post = RemindDto.fromJson(_item).toDomain();

    // final info = PostInfo.fromJson((_info.info));
    this.item = _post;
    update();
    return _post;
  }

  Future<void> actionIns(RemindDto item) async {
    try {
      LoadingController.to.isLoading = true;
      // final _item =
      //     await insertFb(instance: _instance, path: MENU_POS, item: item);

      final docRef = _instance.collection('$MENU_POS').doc();
      //TODO 여러가지의 경우 info 인지 아닌지?
      final newItem = item.copyWith(
        remindId: docRef.id,
      );
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

  Future<void> actionUpdate(RemindDto item) async {
    try {
      await updateFb(
          instance: _instance,
          path: MENU_POS,
          id: item.remindId ?? '',
          dto: item);
    } catch (e) {
      throw Exception('error ${e.toString()}');
    } finally {
      update();
      LoadingController.to.isLoading = false;
    }
  }

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
}
