import 'package:clay/c_config/config.dart';
import 'package:clay/h_account/models/users/users_dtos.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

// mixin FbUserInfoStore on FbCommonModule {
class FbUserInfoMoudle {
  Future<void> insertFbByUserInfo(
      {required FirebaseFirestore instance,
      required String path,
      required HanUserInfoDto item}) async {
    try {
      final docRef = instance.collection('$path').doc(item.profile.userId);

      await docRef.set(item.toJson(), SetOptions(merge: true));
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }

  Future<void> updateListCntFbByTarget(
      {required FirebaseFirestore instance,
      required String path,
      required String id,
      required String target,
      dynamic dto}) async {
    try {
      await instance.collection('$path').doc(id).update({target: dto});
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }
}
