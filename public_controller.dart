import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

/*
공개/비공개 설정 컨트롤러

*/

enum PUBLIC_STATUS {
  ALL,
  PRIVATE,
}

class PublicController extends GetxController {
  int _selected = 0;
  PUBLIC_STATUS _status = PUBLIC_STATUS.ALL;
  PublicController();

  static PublicController get to => Get.find();

  PUBLIC_STATUS get status => _status;

  set status(PUBLIC_STATUS value) {
    _status = value;
    update();
  }

  int get selected => _selected;

  set selected(int value) {
    _selected = value;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
