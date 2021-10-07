import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BottomNaviController extends GetxController {
  RxInt _index = 0.obs;

  List<String> stack = [];
  int get getIndex => _index.value;
  static BottomNaviController get to => Get.find();

  set index(int index) {
    _index.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }
}
