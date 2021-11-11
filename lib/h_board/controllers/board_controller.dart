import 'dart:math';

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_account/models/users/users.dart';
import 'package:clay/h_board/models/board_dtos.dart';
import 'package:clay/h_board/models/boards.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

class BoardController extends AbsItemController
    with FbCommonModule, ElCommonModule {
  static String MENU_POS = 'board';
  late FirebaseFirestore _instance;
  Board? boardItem;
  BoardController() {
    _instance = FirebaseFirestore.instance;
  }
  final TextEditingController boardNameController = TextEditingController();
  static BoardController get to => Get.find();

  @override
  void onClose() {
    boardNameController.dispose();
    super.onClose();
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

  // Future<void> actionIns(BoardDto item) async {
  //   try {
  //     LoadingController.to.isLoading = true;
  //     // final _item =
  //     //     await insertFb(instance: _instance, path: MENU_POS, item: item);
  //
  //     final docRef = _instance.collection('$MENU_POS').doc();
  //     //TODO 여러가지의 경우 info 인지 아닌지?
  //     final newItem = item.copyWith(
  //         boardId: docRef.id, info: item.info.copyWith(boardId: docRef.id));
  //     await docRef.set(newItem.toJson(), SetOptions(merge: true));
  //   } catch (e) {
  //     throw Exception('error');
  //   } finally {
  //     update();
  //     LoadingController.to.isLoading = false;
  //   }
  // }

  ///--------------------------
  ///처음가입시에 보드 3개 자동생성
  ///--------------------------
  Future<void> actionDefalutCreate(Profile? profile) async {
    try {
      final _board01 = createBoardInit(profile, name: '자기계발', type: '자기계발');
      final _board02 = createBoardInit(profile, name: '일/공부', type: '일/공부');
      final _board03 = createBoardInit(profile, name: 'LIKE', type: 'LIKE');
    } catch (e) {
      throw Exception('error');
    } finally {
      update();
      LoadingController.to.isLoading = false;
    }
  }

  Future<BoardDto?> createBoardInit(Profile? profile,
      {required String name, required type}) async {
    final docRef = _instance.collection('$MENU_POS').doc();

    if (profile == null) throw Exception();

    final _item = initItem(profile, name: name, type: type);
    //TODO 여러가지의 경우 info 인지 아닌지?
    return FirebaseFirestore.instance
        .runTransaction((transaction) async {
          final newItem = _item.copyWith(
              boardId: docRef.id,
              info: _item.info.copyWith(boardId: docRef.id));

          var _itemJson = newItem.toJson();
          await docRef.set(_itemJson, SetOptions(merge: true));

          _itemJson['register_date'] = newItem.registerDate.toIso8601String();
          _itemJson['info']['register_date'] =
              newItem.registerDate.toIso8601String();
          _itemJson['board_creator']['register_date'] =
              newItem.boardCreator.registerDate.toIso8601String();

          await insertEl(
            index: '/clay_boards/',
            id: docRef.id,
            body: _itemJson,
          );

          return _item;
        })
        .then((value) => null)
        //TODO: Exception에 추가함
        .catchError((error) {
          LoadingController.to.isLoading = false;
          debugPrint("Failed to update user followers: $error");
          throw Exception('error');
        });
  }

  Future<void> actionDelete(id) async {
    LoadingController.to.isLoading = true;
    return FirebaseFirestore.instance.runTransaction((transaction) async {
      await deleteFb(instance: _instance, path: MENU_POS, id: id);

      await deleteEl(index: '/clay_boards', id: id); //EL 보드 삭제.
      //보드에 소속된 컨텐츠를 삭제함.
      final bodyJSON = {
        "query": {
          "match": {"board_info.board_id": id}
        }
      };
      await deleteElByQuery(index: '/clay_contents', body: bodyJSON);
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

  Future<void> actionUpdate({id, Board? info}) async {
    LoadingController.to.isLoading = true;
    return FirebaseFirestore.instance.runTransaction((transaction) async {
      await updateFb(
          instance: _instance,
          path: MENU_POS,
          id: boardItem?.boardId ?? '',
          dto: info?.toDto());

      var _itemJson = info?.toDto().toJson();
      _itemJson?['register_date'] = info?.registerDate.toIso8601String();
      _itemJson?['info']['register_date'] =
          info?.registerDate.toIso8601String();
      _itemJson?['board_creator']['register_date'] =
          info?.boardCreator.registerDate.toIso8601String();

      await updateEl(index: '/clay_boards/', id: id, body: _itemJson);
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

  Future<void> actionPin({fix}) async {
    LoadingController.to.isLoading = true;
    if (boardItem?.info != null) {
      final _info = boardItem?.info;
      boardItem = boardItem?.copyWith(info: _info!.copyWith(isFixed: fix));

      await actionUpdate(id: boardItem?.boardId, info: boardItem);
      update();
    }
    LoadingController.to.isLoading = false;
  }

  ///----------------------------------
  ///보드 정보 수정 액션 -------------------
  ///----------------------------------
  void actionChangeColor(String color) async {
    if (boardItem == null) boardItem = initBoardItem();
    final _newInfo = boardItem!.info.copyWith(boardColor: color);
    final _newItem = boardItem!.copyWith(info: _newInfo);
    boardItem = _newItem;

    update();
  }

  void actionChangeShare(int share) async {
    if (boardItem == null) boardItem = initBoardItem();
    final _newInfo = boardItem!.info.copyWith(shareCheck: share);
    final _newItem = boardItem!.copyWith(shareCheck: share, info: _newInfo);
    boardItem = _newItem;
    update();
  }

  void actionChangeBadge(String badge) async {
    if (boardItem == null) boardItem = initBoardItem();

    final _newInfo = boardItem!.info.copyWith(boardBadge: badge);
    final _newItem = boardItem!.copyWith(info: _newInfo);
    boardItem = _newItem;
    update();
  }

  void actionChangeName(String name) async {
    if (boardItem == null) boardItem = initBoardItem();
    final _newInfo = boardItem!.info.copyWith(boardName: name);
    final _newItem = boardItem!.copyWith(info: _newInfo);
    boardItem = _newItem;
  }

  Board initBoardItem() {
    final _profile = HanUserInfoController.to.toProfile();
    final _info = BoardInfo(
      boardName: '',
      boardColor: 'FFfc5e20',
      boardBadge: '',
      shareCheck: 0,
      isFixed: false,
      shareCount: 0,
      registerDate: DateTime.now(),
    );
    final _item = Board(
      boardCreator: _profile,
      info: _info,
      shareCheck: 0,
      contentsCount: 0,
      registerDate: DateTime.now(),
      listDate: DateTime.now(),
    );

    return _item;
  }

  BoardDto initItem(Profile profile, {required String name, required type}) {
    List colors = [
      'FFfc5e20',
      'FFFFA178',
      'FFFFC700',
      'FFFFE999',
      'FF159B4D',
      'FFB0E6A3',
      'FF1B75FC',
      'FFCAF2FF',
      'FF9A71BB',
      'FFD6B8EE',
      'FFFE4A75',
      'FFFEB5C7'
    ];
    var rng = new Random().nextInt(colors.length);

    final _profile = profile;
    final _info = BoardInfoDto(
      boardName: name,
      boardColor: colors[rng],
      boardBadge: type,
      shareCheck: 0,
      isFixed: false,
      shareCount: 0,
      registerDate: DateTime.now(),
    );
    final _item = BoardDto(
      boardCreator: _profile.toDto(),
      info: _info,
      shareCheck: 0,
      contentsCount: 0,
      registerDate: DateTime.now(),
      listDate: DateTime.now(),
    );
    return _item;
  }
}
