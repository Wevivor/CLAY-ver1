import 'package:get/get.dart';

enum PICK_KIND { NONE, GALLERY, CAMERA }
/*
카메라/앨법을 선택하는 다이얼로그 박스에 사용되는 컨트롤러
*/

class CarmeraDailogController extends GetxController {
  late PICK_KIND _selector;
  static CarmeraDailogController get to => Get.find();

  CarmeraDailogController() {
    this._selector = PICK_KIND.NONE;
  }

  PICK_KIND get selector => _selector;

  void set(PICK_KIND index) {
    this._selector = index;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
