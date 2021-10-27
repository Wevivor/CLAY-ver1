import 'package:get/get.dart';

import '../ui_push_messages.dart';

class PushController extends GetxController {
  MessageArguments? messageArguments;
  String? token;
  PushController({this.messageArguments}) {}

  static PushController get to => Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
