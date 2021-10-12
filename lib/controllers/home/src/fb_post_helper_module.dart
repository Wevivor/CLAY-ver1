import 'dart:io';

import 'package:clay/c_config/libarays.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FbPostHelperModule {
  //SUBJECT 파이어베이스 글쓰기 에 추가되는 기능을 모음

  ///--------------
  ///파일 업로드
  ///--------------
  Future<String?> uploadFile(
      FirebaseStorage instance, File file, String posistion) async {
    try {
      final item = await instance.ref().child(posistion).putFile(file);

      var downloadUrl = await item.ref.getDownloadURL();

      return downloadUrl;
    } catch (err) {
      print(err);
    }
  }

  ///--------------
  ///북마크 기능
  ///--------------

  Future<void> updateBookmarkFb(
      {required FirebaseFirestore instance,
      required String path,
      required String id,
      dynamic dto}) async {
    try {
      await instance.collection('$path').doc(id).update({'info.bookmark': dto});
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }

  ///--------------
  ///즐겨찾기 기능
  ///--------------

  Future<void> updateFavorFb(
      {required FirebaseFirestore instance,
      required String path,
      required String id,
      dynamic dto}) async {
    try {
      await instance.collection('$path').doc(id).update({'info.favorite': dto});
    } catch (e) {
      print('===>' + e.toString());
      throw e;
    }
  }
}
