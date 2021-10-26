import 'dart:convert';
import 'dart:math';

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter_kakao_login/flutter_kakao_login.dart';
// import 'package:flutter_kakao_login/flutter_kakao_login.dart';
// import 'package:flutter_naver_login/flutter_naver_login.dart';

// mixin FbUserInfoStore on FbCommonModule {
mixin FbAuthModule {
  Future<dynamic?> credntialWithGoogle() async {
    // final _sigin = Const.getGoogleSign();
    final _sigin = GoogleSignIn();
    final googleUser = await _sigin.signIn();
    if (googleUser == null) {
      throw FirebaseAuthException(
          code: 'user-cancelled',
          message: ExceptionMessages.messages('user-cancelled'));
    }

    return googleUser;
  }

  Future<void> signInWithGoogleCredential(final googleUser) async {
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final googleAuthCredential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final _auth = FirebaseAuth.instance;
    await _auth.signInWithCredential(googleAuthCredential);
  }

  //--------------------------
  //애플 로그인 부분
  //--------------------------
  String generateNonce([int length = 32]) {
    final charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

/*
  Future<UserCredential> signInWithApple() async {
    // To prevent replay attacks with the credential returned from Apple, we
    // include a nonce in the credential request. When signing in in with
    // Firebase, the nonce in the id token returned by Apple, is expected to
    // match the sha256 hash of `rawNonce`.
    final rawNonce = generateNonce();
    final nonce = sha256ofString(rawNonce);

    // Request credential for the currently signed in Apple account.
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: nonce,
    );

    // Create an `OAuthCredential` from the credential returned by Apple.
    final oauthCredential = OAuthProvider("apple.com").credential(
      idToken: appleCredential.identityToken,
      rawNonce: rawNonce,
    );

    // Sign in the user with Firebase. If the nonce we generated earlier does
    // not match the nonce in `appleCredential.identityToken`, sign in will fail.
    return await FirebaseAuth.instance.signInWithCredential(oauthCredential);
  }
*/
  ///---------------------- sigin in 카카오 ----------------------------
  ///

  Future<Map<String, dynamic?>?> credntialWithKakao() async {
    // final _sigin = Const.getGoogleSign();
    dynamic _result;
    final FlutterKakaoLogin kakaoSignIn = new FlutterKakaoLogin();
    _result = await kakaoSignIn.logIn();
    if (_result.status == KakaoLoginStatus.loggedIn) {
      final KakaoToken? token = await (kakaoSignIn.currentToken);
      final result = await kakaoSignIn.getUserMe();
      final resultMap = {'token': token, 'account': result.account};
      return resultMap;
    }
  }

  Future<void> signInWithCustomToken(final kakaoToken) async {
    final jsonResponse = await kakaoCustomToken(kakaoToken.accessToken);

    await FirebaseAuth.instance
        .signInWithCustomToken(jsonResponse['firebase_token']);
  }

  Future<int> signInWithKAKAO() async {
    dynamic _result;
    final FlutterKakaoLogin kakaoSignIn = new FlutterKakaoLogin();

    try {
      _result = await kakaoSignIn.logIn();
      if (_result.status == KakaoLoginStatus.loggedIn) {
        final KakaoToken? token = await (kakaoSignIn.currentToken);

        final result = await kakaoSignIn.getUserMe();
        final KakaoAccountResult? account = result.account;
        if (account != null) {
          final jsonResponse = await kakaoCustomToken(token?.accessToken);

          final _fbResult = await FirebaseAuth.instance
              .signInWithCustomToken(jsonResponse['firebase_token']);
          GetStorage().write("logined", 'K');
          return 0;
        }
      }
    } on PlatformException catch (e) {
      throw Exception('사용자가 취소하였습니다');
    } catch (e) {
      debugPrint('--------${e.toString()}');
      throw e;
    }
    return -1;
  }

  /// 새로운 커스텀 토큰을 받아오는 것. 사용자 정보를 보내지 않음.
  Future<dynamic> kakaoCustomToken(token) async {
    try {
      Dio dio = new Dio();

      final _response = await dio.post(
        Const.apiUrl + '/kakao/verifyToken',
        data: {'token': token},
      );

      if (_response.statusCode == 200) {
        final datas = _response.data;

        return datas;
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    }

    return [];
  }
}
