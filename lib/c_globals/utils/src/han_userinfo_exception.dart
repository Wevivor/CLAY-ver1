import 'package:clay/c_config/config.dart';

class HanUserInfoException extends FirebaseException implements Exception {
  HanUserInfoException({
    String? message,
    required String code,
  }) : super(plugin: 'firebase_auth', message: message, code: code);
}
