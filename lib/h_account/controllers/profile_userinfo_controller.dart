import 'dart:io';

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_account/models/users/users.dart';
import 'package:clay/h_account/models/users/users_dtos.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import 'fb_user_info_module.dart';

class ProfileUserInfoController extends GetxController
    with FbCommonModule, FbUserInfoMoudle, FbStrage {
  static String MENU_POS = 'userinfos';
  late dynamic _instance;
  late dynamic _storage;
  late HanUserInfo? userInfo;
  static ProfileUserInfoController get to => Get.find();

  ProfileUserInfoController() {
    _instance = FirebaseFirestore.instance;
    _storage = FirebaseStorage.instance;
    userInfo = null;
  }

  Profile toProfile() {
    final profile = userInfo?.profile;
    if (profile != null)
      return profile;

    ///TODO 사용자 정보
    else
      throw Exception('사용자 정보 오류');
  }

  ///----------------------
  ///액션 부분
  ///----------------------
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
          id: dto.userId ?? '', instance: _instance, path: MENU_POS, dto: dto);
      userInfo = dto.toDomain();
      update();
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }

  Future<bool> isExistByEmail(String userEmail) async {
    try {
      final _result = await isExistQuery(
          instance: _instance,
          path: MENU_POS,
          target: 'email',
          source: userEmail);

      return _result;
    } catch (e) {
      print(e);
      throw e;
    }
  }

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
