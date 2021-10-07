import 'dart:convert';
import 'dart:ui';

// import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
// import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
// import 'package:firebase_storage_mocks/firebase_storage_mocks.dart';
// import 'package:google_sign_in_mocks/google_sign_in_mocks.dart';
import 'package:intl/intl.dart';

class Const {
  // 192.168.0.41입니다.
  //language
  static String assets = 'assets/';

  ///DEV FLUTTER
  static const String GLOBAL_URL = 'https://devkit.ijteknologi.com';
  static const String AFADA_PSWD = 'afada1234@!';
  static const String kakaoKey = '5466fe258c403448896b7c8a80d3f4ff';

  //============= URL 세팅 =============================
  static String urlCommunity = 'https://m.naver.com';
  static String apiUrl = 'https://teachingprice.com/_api/list_contents.php?';
  static String apiDetailUrl = 'https://teachingprice.com/_api/contents.php?';
  // 'http://10.0.2.2:5001/kkongyouapp/asia-northeast3/api';

  static String postHolder =
      'https://vignette.wikia.nocookie.net/breakingbad/images/9/95/JesseS5.jpg/revision/latest?cb=20120620012441';

  static String profileHolder =
      'https://firebasestorage.googleapis.com/v0/b/afad-5b458.appspot.com/o/afada%2Fprofile_holder.png?alt=media&token=037807cb-0901-4f22-af5f-a4cded1c0d74';

  static const baseUrl = 'https://www.breakingbadapi.com';

  //============= 에라스틱  세팅 =============================

  // static String elasticEndPoint =
  //     'https://i-o-optimized-deployment-5fd178.es.us-west1.gcp.cloud.es.io:9243';
  static String elasticEndPoint =
      'https://72bd870ab02e4f95b27df41768619f18.ap-northeast-2.aws.elastic-cloud.com:9243';

  static String elasticApikey =
      'aUFuNnNIc0JjZTVEbUJ1RHlQT186SWhlMks4TXZRV0twby0wV1NjX2hWZw==';

  static Map<String, String> headers = {
    "Content-type": "application/json",
    'Authorization':
        'ApiKey aUFuNnNIc0JjZTVEbUJ1RHlQT186SWhlMks4TXZRV0twby0wV1NjX2hWZw==',
  };
  //============= 아페드 API 세팅 =============================

  static String afadaAPI =
      'https://asia-northeast3-afad-5b458.cloudfunctions.net/api/';

  //========== 언어 세팅 =====================
  static final String defaultLanguage = 'en';
  static Locale english = Locale('en');
  static Locale korea = Locale('ko');

  //=========== 앱 모드 설정 ================
  static bool isDarkTheme = false;
  static int darkMode = 2;
  static int lightMode = 1;
  //==============================
  static final numFormat = NumberFormat('###,###', "ko_KR");
  static final df = new DateFormat('yyyy-MM-dd');
  static String formatTime(int timeNum) {
    return timeNum < 10 ? "0" + timeNum.toString() : timeNum.toString();
  }
}
