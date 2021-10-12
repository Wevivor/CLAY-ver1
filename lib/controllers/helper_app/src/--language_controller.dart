// import 'dart:io';

// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';

// /*
// 공개/비공개 설정 컨트롤러

// */

// enum LANG_STATUS {
//   KO,
//   EN,
// }

// class PublicController extends GetxController {
//   int _selected = 0;
//   LANG_STATUS _status = LANG_STATUS.KO;
//   PublicController();

//   static PublicController get to => Get.find();

//   LANG_STATUS get status => _status;

//   set status(LANG_STATUS value) {
//     _status = value;
//     update();
//   }

//   int get selected => _selected;

//   set selected(int value) {
//     _selected = value;
//     update();
//   }

//   @override
//   void onInit() {
//     super.onInit();
//   }

//   @override
//   void onClose() {
//     super.onClose();
//   }
// }
