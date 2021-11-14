import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

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

/// Message route arguments.
class MessageArguments {
  /// The RemoteMessage
  final RemoteMessage message;

  /// Whether this message caused the application to open.
  final bool openedApplication;

  // ignore: public_member_api_docs
  MessageArguments(this.message, this.openedApplication);
}
