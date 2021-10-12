import 'dart:convert';
import 'dart:math';

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter_kakao_login/flutter_kakao_login.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:get/get.dart';

// mixin FbUserInfoStore on FbCommonModule {
mixin FbAuthModule {
  Future<dynamic?> signInWithGoogle({bool isThrow = false}) async {
    try {
      // final _sigin = Const.getGoogleSign();
      final _sigin = GoogleSignIn();
      final googleUser = await _sigin.signIn();
      if (googleUser == null) {
        throw FirebaseAuthException(
            code: 'user-cancelled',
            message: ExceptionMessages.messages('user-cancelled'));
      }

      GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final googleAuthCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      // final _auth = Const.getFbAuth();
      final _auth = FirebaseAuth.instance;
      await _auth.signInWithCredential(googleAuthCredential);
      if (isThrow) throw Exception('Testing');
      return googleAuthCredential;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic?> credntialWithGoogle({bool isThrow = false}) async {
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

  // Future<dynamic?> signinWithEmail(String email, String pswd) async {
  //   try {
  //     // UserCredential userCredential = await Const.getFbAuth()
  //     UserCredential userCredential = await FirebaseAuth.instance
  //         .signInWithEmailAndPassword(email: email, password: pswd);

  //     print('=====> userCredential: ${userCredential.toString()}');
  //     return userCredential;
  //   } on FirebaseAuthException catch (e) {
  //     // if (e.code == 'user-not-found') {
  //     //   print('No user found for that email.');
  //     // } else if (e.code == 'wrong-password') {
  //     //   print('Wrong password provided for that user.');
  //     // }
  //     throw e;
  //   }
  // }

  // void stateChanged() async {
  //   FirebaseAuth.instance.userChanges().listen((User? user) async {
  //     if (user == null) {
  //       print('===============> User is currently signed out!');
  //       // Get.offAllNamed('/login');

  //     } else {
  //       if (!user.emailVerified) {
  //         final actionCodeSettings = ActionCodeSettings(
  //             url: 'https://afada.page.link/email2=${user.email}',
  //             dynamicLinkDomain: "afada.page.link",
  //             androidPackageName: "com.afadadmin.afada",
  //             androidInstallApp: true,
  //             androidMinimumVersion: "12",
  //             iOSBundleId: "com.afadadmin.afada",
  //             handleCodeInApp: true);

  //         await user.sendEmailVerification(actionCodeSettings);
  //       } else {
  //         Get.toNamed('/home');
  //       }
  //     }
  //   });
  // }

  // Future<void> sendVerifyEmail(User? user) async {
  //   if (user == null) throw FirebaseAuthException(code: 'user-notfound');
  //   if (!user.emailVerified) {
  //     // final actionCodeSettings = ActionCodeSettings(
  //     //     url: 'https://afada.page.link/email2=${user.email}',
  //     //     dynamicLinkDomain: "afada.page.link",
  //     //     androidPackageName: "com.afadadmin.afada",
  //     //     androidInstallApp: true,
  //     //     androidMinimumVersion: "12",
  //     //     iOSBundleId: "com.afadadmin.afada",
  //     //     handleCodeInApp: true);

  //     await user.sendEmailVerification();
  //     // await user.sendEmailVerification(actionCodeSettings);
  //   } else {
  //     Get.toNamed('/home');
  //   }
  // }

  ///이메일 검증 이벤트 등록.
  //     FirebaseAuth
  //     .instance
  //     .userChanges()
  //     .listen((User? user) async {
  //   print(
  //       '=========> email Verify ${user?.uid},${RegisterController.to.isEmailVerifyButtonShow.value},${RegisterController.to.isEmailVerify.value},');
  //   if (RegisterController
  //       .to.isEmailVerifyButtonShow.value) {
  //     if (user != null && user.emailVerified) {
  //       print('=========> email Verify Success ');

  //       RegisterController.to.isEmailVerify.value =
  //           true;
  //       RegisterController
  //           .to.isEmailVerifyButtonShow.value = false;
  //       FirebaseAuth.instance
  //           .userChanges()
  //           .listen((User? user) {});
  //     }
  //   }
  // });

  // LoginController.to.profile =
  //     RegisterController.to.profile;

  // LoginController.to.index.value = 0; //로그인으로 이동함.

  // Future<void> sendPasswordResetEmail({
  //   required String email,
  //   ActionCodeSettings? actionCodeSettings,
  // }) async {
  //   try {
  //     await FirebaseAuth.instance.sendPasswordResetEmail(
  //         email: email, actionCodeSettings: actionCodeSettings);
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       print('No user found for that email.');
  //     }
  //     throw e;
  //     // } catch (e) {
  //     //   print('==========' + e.toString());
  //   }
  // }

  // Future<UserCredential> createWithEmail(String email, String pswd) async {
  //   try {
  //     UserCredential userCredential = await FirebaseAuth.instance
  //         .createUserWithEmailAndPassword(email: email, password: pswd);
  //     return userCredential;
  //   } on FirebaseAuthException catch (e) {
  //     throw e;
  //   }
  // }

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

  ///---------------------- sigin in 카카오 ----------------------------
  ///
  Future<int> signInWithKAKAO() async {
    dynamic _result;
    FlutterKakaoLogin kakaoSignIn = FlutterKakaoLogin();

    try {
      _result = await FlutterKakaoLogin().logIn();
    } on PlatformException catch (e) {
      throw Exception('사용자가 취소하였습니다');
    }

    if (_result.status == KakaoLoginStatus.loggedIn) {
      final KakaoToken? token = await (kakaoSignIn.currentToken);
      try {
        final jsonResponse = await kakaoCustomToken(_result.account.userEmail);

        final _fbResult = await FirebaseAuth.instance
            .signInWithCustomToken(jsonResponse['firebase_token']);
        GetStorage().write("logined", 'K');
        AppHelper.showMessage("카카오 아이디로 로그인 되었습니다.");
        return 0;
      } catch (e) {
        // goKakaoSignupPage(token);
        throw Exception('사용자가 취소하였습니다');
      }
    }
    return 0;
  }

  //Example code of how to sign in with Naver.
  Future<int> signInWithNaver() async {
    NaverAccessToken? token;
    try {
      NaverLoginResult _naverLoginResult = await FlutterNaverLogin.logIn();

      if (_naverLoginResult.status == NaverLoginStatus.loggedIn) {
        token = await FlutterNaverLogin.currentAccessToken;
        print('=> 네이어 로그인 토큰: ' + token.accessToken.toString());
      }
    } catch (e) {
      AppHelper.showMessage(e.toString());
      throw Exception(e);
    }

    dynamic jsonResponse;
    try {
      if (token == null) throw Exception('사용자가 취소 하었습니다.');

      final _jsonResponse = await naverCustomToken(token);

      final _fbResult = await FirebaseAuth.instance
          .signInWithCustomToken(_jsonResponse['firebase_token']);

      GetStorage().write("logined", 'K');
      AppHelper.showMessage("카카오 아이디로 로그인 되었습니다.");
      return 0;
    } catch (e) {
      AppHelper.showMessage(e.toString().replaceAll("Exception:", ''));
      throw Exception(e);
    }
  }

  /// 새로운 커스텀 토큰을 받아오는 것. 사용자 정보를 보내지 않음.
  Future<dynamic> kakaoCustomToken(email) async {
    try {
      final _response = await Dio().get(
        Const.apiUrl + '/user/kakao/' + email,
      );
      if (_response.statusCode == 200) {
        final datas = _response.data;

        // final _news = datas['news'];
        // final _banners = datas['banners'];
        // // final _giftrees = datas['giftrees'];
        return datas;
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    }

    return [];
  }

  /// 새로운 커스텀 토큰을 받아오는 것. 사용자 정보를 보내지 않음.
  Future<dynamic> naverCustomToken(token) async {
    try {
      final _response = await Dio().post(Const.apiUrl + '/naverjwt/verifyToken',
          data: {'token': token.accessToken});
      if (_response.statusCode == 200) {
        final datas = _response.data;

        // final _news = datas['news'];
        // final _banners = datas['banners'];
        // // final _giftrees = datas['giftrees'];
        return datas;
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    }

    return [];
  }
}
