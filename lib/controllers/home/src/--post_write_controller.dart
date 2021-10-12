// import 'dart:io';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:clay/c_config/config.dart';
// import 'package:clay/controllers/globals/globals.dart';
// import 'package:clay/models/models.dart';
// import 'package:uuid/uuid.dart';
// import 'package:get/get.dart';
// import 'package:image/image.dart' as image;

// /*
//   글쓰기 컨트롤러 
// */

// class PostWriteController extends GetxController
//     with FbCommonModule, FbPostHelperModule {
//   static String MENU_POS = 'home/datas/posts';
//   late dynamic _instance;
//   late dynamic _storage;
//   bool _isSubmit = false;

//   List<Map<dynamic, dynamic>> uploadUrls = [];
//   PostWriteController() {
//     _instance = FirebaseFirestore.instance;
//     _storage = FirebaseStorage.instance;

//     textEditController = TextEditingController();
//     textEditController.addListener(() {
//       if (textEditController.text.length > 0) {
//         _isSubmit = true;
//         update();
//       }
//     });
//   }
//   String _placceHoder = '';

//   late TextEditingController textEditController;
//   static PostWriteController get to => Get.find();

//   String get placceHoder => _placceHoder;
//   set placeHoder(String value) => _placceHoder = value;
//   bool get isSubmit => _isSubmit;
//   set isSubmit(bool value) => _isSubmit = value;

//   Future<void> delImage(int index) async {
//     //TODO 이미지 삭제 부분. 현재 권한이 없어서 삭제가 안됨
//     // imagaDeleteFb(index);
//     update();
//   }

//   ////-----------------------------
//   /// 글쓰기 액션 부분
//   ////-----------------------------
//   static const String SPACE_ID = 'K3UVNXElWmjWt38tQxKR';

//   // Future<void> insPostFb(PostDto item) async {
//   //   CollectionReference _collectionRef =
//   //       FirebaseFirestore.instance.collection('spaces/$SPACE_ID/posts/');

//   //   try {
//   //     await _collectionRef.add(item.toJson()).then((value) {
//   //       value.update({'post_id': value.id});
//   //     });
//   //   } catch (e) {
//   //     print(e.toString());
//   //   }
//   // }

//   Future<Map<String, dynamic>> uploadImage(File file) async {
//     final _auth = FirebaseAuth.instance;

//     // final _uuid = ;
//     final fileId = Uuid().v4();

//     ///original 파일 업로드
//     final original = image.decodeImage(file.readAsBytesSync())!;
//     final directory = (await getApplicationDocumentsDirectory()).path;
//     File fileOriginal = File('$directory/original.jpg');
//     fileOriginal.writeAsBytesSync(image.encodeJpg(original));

//     final uid = _auth.currentUser?.uid;
//     final originURL = await uploadFile(
//         _storage, fileOriginal, 'posts/$uid/$fileId/original.jpg');

//     ///썸네일 375 파일 업로드

//     final nail03 = image.copyResize(original, width: 375);
//     final file375 = File('$directory/375.jpg');
//     file375.writeAsBytesSync(image.encodeJpg(nail03));

//     final url375 =
//         await uploadFile(_storage, file375, 'posts/$uid/$fileId/375.jpg');

//     /// 파일의 다운로드 URL

//     Map<String, dynamic> imgURL = {
//       'original': originURL,
//       // '1024px': url1024,
//       // '32px': url32,
//       '375px': url375,
//     };
//     return imgURL;
//   }

//   Future<void> imgUpload(File file) async {
//     final _auth = FirebaseAuth.instance;

//     final _uuid = Uuid();
//     final fileId = _uuid.v4();

//     ///original 파일 업로드
//     final original = image.decodeImage(File(file.path).readAsBytesSync())!;
//     final directory = (await getApplicationDocumentsDirectory()).path;
//     File fileOriginal = File('$directory/original.jpg');
//     fileOriginal.writeAsBytesSync(image.encodeJpg(original));

//     final uid = _auth.currentUser?.uid;
//     final originURL =
//         await uploadFile(_instance, fileOriginal, '$uid/$fileId/original.jpg}');

//     ///썸네일 1024 파일 업로드

//     final nail01 = image.copyResize(original, width: 1024);
//     final file1024 = File('$directory/1024.jpg');
//     file1024.writeAsBytesSync(image.encodeJpg(nail01));
//     // final url1024 = await uploadFile(
//     //     file1024, _auth.currentUser?.uid ?? '', fileId, '1024.jpg');
//     final url1024 =
//         await uploadFile(_instance, file1024, '$uid/$fileId/1024.jpg}');

//     ///썸네일 32 파일 업로드

//     final nail02 = image.copyResize(original, width: 32);
//     final file32 = File('$directory/32.jpg');
//     file32.writeAsBytesSync(image.encodeJpg(nail02));
//     // final url32 = await uploadFile(
//     //     file32, _auth.currentUser?.uid ?? '', fileId, '32.jpg');
//     final url32 = await uploadFile(_instance, file32, '$uid/$fileId/32.jpg}');

//     ///썸네일 375 파일 업로드

//     final nail03 = image.copyResize(original, width: 375);
//     final file375 = File('$directory/375.jpg');
//     file375.writeAsBytesSync(image.encodeJpg(nail03));

//     // final url375 = await uploadFile(
//     //     file375, _auth.currentUser?.uid ?? '', fileId, '375.jpg');
//     final url375 =
//         await uploadFile(_instance, file375, '$uid/$fileId/375.jpg}');

//     /// 파일의 다운로드 URL

//     Map imgURL = {
//       'original': originURL,
//       '1024px': url1024,
//       '32px': url32,
//       '375px': url375,
//     };
//     uploadUrls.add(imgURL);
//   }

//   // 이미지 삭제 부분. 현재 권한이 없어서 삭제가 안됨
//   void imagaDeleteFb(int index) {
//     final item = uploadUrls[index];
//     try {
//       item.entries.forEach((element) {
//         print(element.value);
//         FirebaseStorage.instance.refFromURL(element.value).delete();
//       });
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   Future<bool> actionWrite(PostDto item) async {
//     try {
//       // await insertPostFb(instance: _instance, path: MENU_POS, item: item);

//       return true;
//     } catch (e) {
//       //TODO 에러 메시지
//       throw e;
//     }
//   }

//   ////
//   ///   post write에만 추가되는 기능
//   /*
//   Future<void> insertPostFb(
//       {required FirebaseFirestore instance,
//       required String path,
//       dynamic item}) async {
//     try {
//       var docRef;
//       var newItem;
//       // if (Const.isTest) {
//       //   docRef = instance.collection('$path').doc(item.id);
//       //   newItem = item;
//       // } else {
//         docRef = instance.collection('$path').doc();
//         final newInfo = item.info.copyWith(id: docRef.id);
//         newItem = item.copyWith(id: docRef.id, info: newInfo);
//       // }
//       await docRef.set(newItem.toJson(), SetOptions(merge: true));

//       // newItem = item;

//     } catch (e) {
//       print('===>' + e.toString());
//       throw e;
//     }
//   }
//   */

//   @override
//   void onInit() {
//     super.onInit();
//   }

//   @override
//   void onClose() {
//     super.onClose();
//   }
// }
