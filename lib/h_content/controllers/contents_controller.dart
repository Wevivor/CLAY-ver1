import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/c_globals/controllers/src/fb_post_helper_module.dart';
import 'package:clay/h_account/models/users/users.dart';
import 'package:clay/h_board/models/board_dtos.dart';
import 'package:clay/h_board/models/boards.dart';
import 'package:clay/h_content/models/content_dtos.dart';
import 'package:clay/h_content/models/contents.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

class ContentsController extends AbsItemController
    with FbCommonModule, FbPostHelperModule, ElCommonModule {
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
    LoadingController.to.isLoading = true;
    return FirebaseFirestore.instance.runTransaction((transaction) async {
      final docRef = _instance.collection('$MENU_POS').doc();
      //TODO 여러가지의 경우 info 인지 아닌지?
      final newItem = item.copyWith(
          contentsId: docRef.id,
          info: item.info.copyWith(contentsId: docRef.id));

      await docRef.set(newItem.toJson(), SetOptions(merge: true));

      final _itemJson = converterToDate(newItem);

      await insertEl(
        index: '/clay_contents/',
        id: docRef.id,
        body: _itemJson,
      );

      return newItem;
    }).then((value) {
      update();
      LoadingController.to.isLoading = false;
    }).catchError((error) {
      LoadingController.to.isLoading = false;
      //TODO: Exception에 추가함
      debugPrint("Failed to update user followers: $error");
      throw Exception('error');
    });
  }

  Future<void> actionDelete(id) async {
    LoadingController.to.isLoading = true;
    return FirebaseFirestore.instance.runTransaction((transaction) async {
      await deleteFb(instance: _instance, path: MENU_POS, id: id);

      await deleteEl(index: '/clay_contents/', id: id);
    }).then((value) {
      update();
      LoadingController.to.isLoading = false;
    }).catchError((error) {
      //TODO: Exception에 추가함
      LoadingController.to.isLoading = false;
      debugPrint("Failed to update user followers: $error");
      throw Exception('error');
    });
  }

  Future<void> actionContentsUpdate(ContentsDto item) async {
    LoadingController.to.isLoading = true;
    return FirebaseFirestore.instance.runTransaction((transaction) async {
      await updateFb(
          instance: _instance,
          path: MENU_POS,
          id: item.contentsId ?? '',
          dto: item);

      final _itemJson = converterToDate(item);

      await updateEl(
          index: '/clay_contents/', id: item.contentsId, body: _itemJson);

      //SUBJET: 에러 수정.
      //TODO: 보드의 아이템 숫자조정
    }).then((value) {
      update();
      LoadingController.to.isLoading = false;
    }).catchError((error) {
      //TODO: Exception에 추가함
      LoadingController.to.isLoading = false;
      debugPrint("Failed to update user followers: $error");
      throw Exception('error');
    });
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

  dynamic converterToDate(ContentsDto? info) {
    var _itemJson = info?.toJson();
    _itemJson?['user_info']['register_date'] =
        info?.userInfo.registerDate.toIso8601String();

    _itemJson?['board_info']['register_date'] =
        info?.boardInfo?.registerDate.toIso8601String();

    _itemJson?['contents_create_date'] =
        info?.contentsCreateDate.toIso8601String();
    _itemJson?['contents_upt_date'] =
        info?.contentsUpdateDate.toIso8601String();

    _itemJson?['info']['contents_create_date'] =
        info?.info.contentsCreateDate.toIso8601String();
    _itemJson?['info']['contents_upt_date'] =
        info?.info.contentsUpdateDate.toIso8601String();
    return _itemJson;
  }

  Future<void> actionPin({fix}) async {
    LoadingController.to.isLoading = true;
    return FirebaseFirestore.instance.runTransaction((transaction) async {
      final _info = contentsItem?.info;
      contentsItem =
          contentsItem?.copyWith(info: _info!.copyWith(contentsFixed: fix));
      await actionUpdateInfo(
          id: contentsItem?.contentsId,
          info: contentsItem?.info.copyWith(contentsFixed: fix).toDto());

      //시간 변경 함.
      final _itemEL = converterToDate(contentsItem?.toDto());
      await updateEl(
          index: '/clay_contents/',
          id: contentsItem?.contentsId,
          body: _itemEL);
    }).then((value) {
      update();
      LoadingController.to.isLoading = false;
    }).catchError((error) {
      //TODO: Exception에 추가함
      LoadingController.to.isLoading = false;
      debugPrint("Failed to update user followers: $error");
      throw Exception('error');
    });
  }

  ContentsDto createContentsDto(Profile profile, BoardInfo? boardInfo,
      {required String comment}) {
    final _profile = profile;
    final _info = ContentsInfoDto(
      //  contentsId: contentsId,
      contentsTitle: '',
      contentsUrl: '',
      contentsFixed: false,
      contentsImages: '',
      contentsDescription: '',
      contentsComment: comment,
      contentsType: 'comment',
      thumbnails: null,
      contentsUniqueLink: '',
      contentsCreateDate: DateTime.now(),
      contentsUpdateDate: DateTime.now(),
    );

    //SUBJECT comment 타입 변경 필요
    //TODO: comment 타입 변경
    final _item = ContentsDto(
      boardInfo: boardInfo?.toDto(),
      userInfo: _profile.toDto(),
      info: _info,
      contentsAllviewCount: 0,
      contentsMyviewCount: 0,
      contentsAlarmCheck: 0,
      shareInfo: null,
      contentsComment: null,
      contentsCreateDate: DateTime.now(),
      contentsUpdateDate: DateTime.now(),
    );

    return _item;
  }
}
