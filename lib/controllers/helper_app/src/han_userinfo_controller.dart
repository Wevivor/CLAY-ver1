import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:clay/c_config/config.dart';
import 'package:clay/controllers/common/commons.dart';

import 'package:clay/models/models.dart';
import 'package:get/get.dart';
import 'fb_user_info_module.dart';

class HanUserInfoController extends GetxController
    with FbCommonModule, FbUserInfoMoudle, FbStrage {
  static String MENU_POS = 'userinfos';
  late FirebaseFirestore _instance;
  late FirebaseStorage _storage;
  late HanUserInfo? userInfo;
  static HanUserInfoController get to => Get.find();

  HanUserInfoController() {
    _instance = FirebaseFirestore.instance;
    _storage = FirebaseStorage.instance;
    userInfo = null;
  }
  //------------------기본 CRUD 프로토콜
  //create the firestore user in users collection
  Future<void> insert(HanUserInfoDto user) async {
    userInfo = user.toDomain();
    insertFb(instance: _instance, path: MENU_POS, item: user);
  }

  Profile toProfile() {
    final profile = userInfo?.profile;
    if (profile != null)
      return profile;

    ///TODO 사용자 정보
    else
      throw Exception('사용자 정보 오류');
  }

  ///-------------------action -------------
  /// 액션
  ///----------------------------------------

  // Future<bool> actionFollowing(Profile profile) async {
  //   final exist = userInfo?.following.lists
  //       .firstWhere((element) => element == profile.uid, orElse: () {
  //     return null;
  //   });
  //   bool _isFollow = false;
  //   if (exist != null) {
  //     userInfo?.following.lists
  //         .removeWhere((element) => element == profile.uid);
  //   } else {
  //     userInfo?.following.lists.add(profile.uid);
  //     _isFollow = true;
  //   }

  //   final newFollowing = ListCntDto(
  //       cnt: userInfo?.following.lists.length ?? 0,
  //       lists: userInfo?.following.lists ?? []);
  //   await updateListCntFbByTarget(
  //       instance: _instance,
  //       path: MENU_POS,
  //       id: userInfo?.uid ?? '',
  //       target: 'following',
  //       dto: newFollowing.toJson());

  //   userInfo = userInfo?.copyWith(following: newFollowing.toDomain());
  //   // update();
  //   return _isFollow;
  // }

  Future<void> actionInsert(HanUserInfoDto user) async {
    userInfo = user.toDomain();
    await insertFbByUserInfo(instance: _instance, path: MENU_POS, item: user);
  }

  Future<void> actionVisitInc() async {
    try {
      final docRef = await _instance.collection(MENU_POS).doc(userInfo?.uid);

      await docRef.update({'cntVisit': FieldValue.increment(1)});
    } catch (e) {
      print('-------${e.toString()}------------');
    }
  }

  Future<void> actionCreate(HanUserInfoDto user) async {
    userInfo = user.toDomain();
    await insertFbByUserInfo(instance: _instance, path: MENU_POS, item: user);
  }

  Future<void> actionDelete(String uid) async {
    try {
      await deleteFb(
        id: uid,
        instance: _instance,
        path: MENU_POS,
      );
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }

  Future<HanUserInfo> actionRead(String uid) async {
    // try {
    final _item = await readFb(id: uid, instance: _instance, path: MENU_POS);

    if (_item == null) {
      throw Exception('error');
    }
    final info = HanUserInfoDto.fromJson(_item);
    this.userInfo = info.toDomain();
    update();
    return info.toDomain();
  }

  Future<void> actionUpdate(HanUserInfoDto dto) async {
    print('==============> ' + DateTime.now().toIso8601String());
    try {
      await updateFb(
          id: dto.uid ?? '', instance: _instance, path: MENU_POS, dto: dto);
      userInfo = dto.toDomain();
      update();
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }

  Future<HanUserInfo?> actionExistByEmail(String userEmail) async {
    try {
      final _result = await existQuery(
          instance: _instance,
          path: MENU_POS,
          target: 'profile.email',
          source: userEmail);

      if (_result != null) {
        userInfo = HanUserInfoDto.fromJson(_result).toDomain();
        return userInfo;
      }

      return _result;
    } catch (e) {
      print(e);
      throw e;
    }
  }
  //create the firestore user in users collection
  //TODO 이미지 업로드 및 업데이터함.

  Future<String?> actionUpload(File file) async {
    try {
      String basename = file.path.split('/').last;

      final _url = uploadFile(
          instance: _storage, path: MENU_POS + '/' + basename, file: file);
      return _url;
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
