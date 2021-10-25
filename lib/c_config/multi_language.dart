import 'package:get/get.dart';

class MultiLanguage extends Translations {
  //SUBJECT: 다국어.
  //TODO: SH 언어 설정.
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'Hello World from US',
        },
        'ko': {
          'title': '안녕하세요',
        },
      };
}
