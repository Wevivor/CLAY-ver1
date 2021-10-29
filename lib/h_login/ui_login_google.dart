import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_account/models/users/users_dtos.dart';
import 'package:clay/h_push/controllers/push_controller.dart';
import 'package:clay/h_share/h_share.dart';
import 'package:clay/h_share/share_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import 'widget/login_title_widget.dart';
import 'widget/sns_wide_widget.dart';

class LoginGoogleUI extends StatelessWidget with AppbarHelper {
  late ThemeData themeData;
  final _controller = Get.put(HanUserInfoController());

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 24, right: 24),
        alignment: Alignment.center,
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            ///상위 타이틀.
            Container(
              height: MySize.safeHeight / 2,
              child: LoginTitleWidget(themeData),
            ),

            /// 로그인 버턴
            Container(
              height: MySize.safeHeight / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StackWithButton(
                    loadingId: 'G',
                    child: SnsWideWidget(
                      title: '구글로 로그인',
                      assetName: 'assets/sns_login/google_wide.png',
                      onTap: _actionGoogleSignin,
                    ),
                  ),
                  heightSpace(16.0),

                  StackWithButton(
                    loadingId: 'K',
                    child: SnsWideWidget(
                      title: '',
                      assetName: 'assets/sns_login/wide_kakao.png',
                      onTap: _actionKakaoSignin,
                    ),
                  ),
                  // heightSpace(16.0),
                  // StackWithButton(
                  //   child: SnsWideWidget(
                  //     title: '',
                  //     assetName: 'assets/sns_login/wide_kakao.png',
                  //     onTap: _actionAppleSignin(),
                  //   ),
                  // ),
                  heightSpace(20.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  HanUserInfoDto _createUserInfo(final profile, final snsLogin) {
    final _profile = ProfileDto(
      userId: profile?.uid,
      userEmail: profile?.email ?? '',
      userName: profile?.displayName,
      profileImg: profile?.photoURL,
      token: PushController.to.token,
      level: 3,
      registerDate: DateTime.now(),
    );

    final _userInfo = HanUserInfoDto(
      userId: profile?.uid,
      profile: _profile,
      // userPhone: '010-5391-3862',
      intro: null,
      isDisabled: false,
      snsLogin: snsLogin,
      cntVisit: 0,
      level: 3,
      registerDate: DateTime.now(),
    );
    return _userInfo;
  }

  Future<void> _actionGoogleSignin() async {
    LoadingController.to.setLoading(true, 'G');

    try {
      final googleUser = await AuthController.to.credntialWithGoogle();

      final _exist = await HanUserInfoController.to
          .actionExistByEmail(googleUser?.email ?? '', snsLogin: 'G');
      if (_exist != null) {
        AppHelper.showMessage(
            HanExceptionMessage.keys['email-already-exists'] ?? '');
        return;
      }

      await AuthController.to.signInWithGoogleCredential(googleUser);

      try {
        final _userInfo = await HanUserInfoController.to
            .actionRead(AuthController.to.getUser);
        if (PushController.to.token != null && _userInfo != null) {
          HanUserInfoController.to.actionUpdate(_userInfo
              .copyWith(
                  profile: _userInfo.profile
                      .copyWith(token: PushController.to.token))
              .toDto());
        }
      } on HanUserInfoException catch (e) {
        final userDto = _createUserInfo(AuthController.to.getUser, 'G');
        HanUserInfoController.to.actionCreate(userDto);
      }

      if (ShareController.to.isShare.value)
        Get.to(() => ShareServiceUI());
      else {
        var route = '/main_menu';
        if (PushController.to.messageArguments != null) {
          route = '/message';
        }
        Get.offNamed(route);
      }
    } on FirebaseAuthException catch (e) {
      if (['user-cancelled', 'user-not-found'].contains(e.code)) {
        AppHelper.showMessage(HanExceptionMessage.keys[e.code] ?? '');
      }
      debugPrint('>>> FirebaseAuthException ${e.toString()}');
    } catch (e) {
      debugPrint('>>>  ${e.toString()}');
      AppHelper.showMessage(e.toString());
    } finally {
      LoadingController.to.setLoading(false, 'G');
    }
  }

  _actionKakaoSignin() async {
    LoadingController.to.setLoading(true, 'K');
    try {
      final _kakoLoginResult = await AuthController.to.credntialWithKakao();
      final _exist = await HanUserInfoController.to.actionExistByEmail(
          _kakoLoginResult!['account'].userEmail,
          snsLogin: 'K');
      if (_exist != null) {
        AppHelper.showMessage(
            HanExceptionMessage.keys['email-already-exists'] ?? '');
        return;
      }

      await AuthController.to.signInWithCustomToken(_kakoLoginResult['token']);
      try {
        final _userInfo = await HanUserInfoController.to
            .actionRead(AuthController.to.getUser);
        if (PushController.to.token != null && _userInfo != null) {
          HanUserInfoController.to.actionUpdate(_userInfo
              .copyWith(
                  profile: _userInfo.profile
                      .copyWith(token: PushController.to.token))
              .toDto());
          // HanUserInfoController.to.actionUpdate(
          //     _userInfo.copyWith(token: PushController.to.token).toDto());
        }
      } on HanUserInfoException catch (e) {
        final userDto = _createUserInfo(AuthController.to.getUser, 'K');
        HanUserInfoController.to.actionCreate(userDto);
      }
      // await GetStorage().write("logined", 'K');
      if (ShareController.to.isShare.value)
        Get.to(() => ShareServiceUI());
      else {
        var route = '/main_menu';
        if (PushController.to.messageArguments != null) {
          route = '/message';
        }
        Get.offNamed(route);
      }

      AppHelper.showMessage("카카오 아이디로 로그인 되었습니다.");
    } on Exception catch (ex) {
      final _message = ex.toString().replaceFirst('Exception:', '');
      AppHelper.showMessage(_message);
    } catch (e) {
      print('======: ${e.toString()}');
    } finally {
      LoadingController.to.setLoading(false, 'K');
    }
  }

  _actionAppleSignin() async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      webAuthenticationOptions: WebAuthenticationOptions(
        // TODO: Set the `clientId` and `redirectUri` arguments to the values you entered in the Apple Developer portal during the setup
        clientId: 'com.aboutyou.dart_packages.sign_in_with_apple.example',
        redirectUri: Uri.parse(
          'https://flutter-sign-in-with-apple-example.glitch.me/callbacks/sign_in_with_apple',
        ),
      ),
    );
  }
}
