import 'package:get/get.dart';

class LoadingController extends GetxController {
  // RxBool isLoading = false.obs;
  bool _isLoading = false;
  static LoadingController get to => Get.find();
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
  }

  setLoading(bool value, id) {
    _isLoading = value;
    update([id]);
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
