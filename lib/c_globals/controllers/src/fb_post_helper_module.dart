import 'dart:io';

import 'package:clay/c_config/libarays.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:image/image.dart' as image;

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

  Future<Map<String, dynamic>> uploadImage(
      FirebaseStorage _storage, File file) async {
    final _auth = FirebaseAuth.instance;

    // final _uuid = ;
    final fileId = Uuid().v4();

    ///original 파일 업로드
    final original = image.decodeImage(file.readAsBytesSync())!;
    final directory = (await getApplicationDocumentsDirectory()).path;
    File fileOriginal = File('$directory/original.jpg');
    fileOriginal.writeAsBytesSync(image.encodeJpg(original));

    final uid = _auth.currentUser?.uid;
    final originURL = await uploadFile(
        _storage, fileOriginal, 'posts/$uid/$fileId/original.jpg');

    ///썸네일 375 파일 업로드

    final nail03 = image.copyResize(original, width: 375);
    final file375 = File('$directory/375.jpg');
    file375.writeAsBytesSync(image.encodeJpg(nail03));

    final url375 =
        await uploadFile(_storage, file375, 'posts/$uid/$fileId/375.jpg');

    /// 파일의 다운로드 URL

    Map<String, dynamic> imgURL = {
      'original': originURL,
      '375px': url375,
    };
    return imgURL;
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
