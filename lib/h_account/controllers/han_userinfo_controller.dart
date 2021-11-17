import 'dart:io';

import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/c_globals/utils/src/han_userinfo_exception.dart';
import 'package:clay/h_account/models/users/users.dart';
import 'package:clay/h_account/models/users/users_dtos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:clay/c_config/config.dart';

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

    ///사용자 정보
    else
      throw Exception('사용자 정보 오류');
  }

  ///-------------------action -------------
  /// 액션
  ///----------------------------------------

  Future<void> actionInsert(HanUserInfoDto user) async {
    userInfo = user.toDomain();
    await insertFbByUserInfo(instance: _instance, path: MENU_POS, item: user);
  }

  Future<void> actionVisitInc() async {
    try {
      final docRef = await _instance.collection(MENU_POS).doc(userInfo?.userId);

      await docRef.update({'cntVisit': FieldValue.increment(1)});
    } catch (e) {
      print('-------${e.toString()}------------');
    }
  }

  Future<void> actionRemindTxt(String remindTxt) async {
    try {
      final docRef = await _instance.collection(MENU_POS).doc(userInfo?.userId);

      await docRef.update({'remind_txt': remindTxt});
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

  Future<HanUserInfo?> actionRead(User? user) async {
    // try {
    if (user != null) {
      final _item =
          await readFb(id: user.uid, instance: _instance, path: MENU_POS);

      if (_item == null) {
        throw HanUserInfoException(code: 'userinfo-not-found');
      }
      final info = HanUserInfoDto.fromJson(_item).toDomain();
      userInfo = info;
      return info;
    }
  }

  Future<void> actionUpdate(HanUserInfoDto dto) async {
    print('==============> ' + DateTime.now().toIso8601String());
    try {
      await updateFb(
          id: dto.userId ?? '', instance: _instance, path: MENU_POS, dto: dto);
      userInfo = dto.toDomain();
      update();
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }

  Future<HanUserInfo?> actionExistByEmail(String userEmail,
      {String? snsLogin}) async {
    try {
      final _result = await existQueryByEmail(
        instance: _instance,
        path: MENU_POS,
        email: 'profile.user_email',
        source: userEmail,
        snsLogin: snsLogin,
      );

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

  // 이미지 업로드 및 업데이터함.
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
