import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/models/models.dart';

import '../part/part_signin/src/login_title_widget.dart';
import '../part/part_signin/src/sns_wide_widget.dart';

class LoginGoogleUI extends StatelessWidget with AppbarHelper {
  late ThemeData themeData;

  // void creeatUserinfo(User _user, bool _exist) async {
  //   if (!_exist) {
  //     final _userinfo = UserInfoStore(
  //         strEmail: _user.email,
  //         strDisplayName: _user.displayName,
  //         strUid: _user.uid,
  //         strPhotoURL: _user.photoURL,
  //         dtCreated: DateTime.now(),
  //         dtUpdated: DateTime.now(),
  //         intVisit: 1);

  //     await StoreUserInfoController.to.createUserFirestore(_userinfo, _user);
  //   }
  // }

  // String generateNonce([int length = 32]) {
  //   final charset =
  //       '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
  //   final random = Random.secure();
  //   return List.generate(length, (_) => charset[random.nextInt(charset.length)])
  //       .join();
  // }

  // /// Returns the sha256 hash of [input] in hex notation.
  // String sha256ofString(String input) {
  //   final bytes = utf8.encode(input);
  //   final digest = sha256.convert(bytes);
  //   return digest.toString();
  // }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    themeData = Theme.of(context);
    Get.put(HanUserInfoController());

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
                    // loading: LoadingController.to,
                    child: SnsWideWidget(
                      title: '구글로 로그인',
                      assetName: 'assets/sns_login/google_wide.png',
                      onTap: () async {
                        LoadingController.to.isLoading = true;

                        try {
                          await AuthController.to.signInWithGoogle();
                          User? _user = AuthController.to.getUser;

                          final _exist = await HanUserInfoController.to
                              .actionExistByEmail(_user?.email ?? '');
                          print(
                              '----------------actionExistByEmail ${_exist.toString()}------------------');
                          if (_exist == null) {
                            final _profile = ProfileDto(
                              uid: _user?.uid,
                              email: _user?.email ?? '',
                              displayName: _user?.displayName,
                              photoURL: _user?.photoURL,
                              level: 3,
                              dtCreated: DateTime.now(),
                              dtUpdated: DateTime.now(),
                            );

                            final _detail = UserDetailDto(
                              phone: '010-5391-3862',
                              intro: null,
                              // isPush: false,
                              // token: null,
                            );

                            final _regiInfo = UserRegiInfoDto(
                                isProvision: false,
                                isPersonInfo: false,
                                isReceive: false);

                            final _userInfo = HanUserInfoDto(
                                uid: _user?.uid,
                                profile: _profile,
                                info: _detail,
                                regiInfo: _regiInfo,
                                isDisabled: false,
                                cntVisit: 0,
                                level: 3,
                                following: ListCntDto(cnt: 0, lists: []),
                                dtCreated: DateTime.now(),
                                dtUpdated: DateTime.now());

                            HanUserInfoController.to.actionCreate(_userInfo);
                          }
                          print(
                              '---------------actionVisitInc ${_exist.toString()}--------------------');

                          await HanUserInfoController.to.actionVisitInc();

                          Get.toNamed('/main_menu');
                        } on FirebaseAuthException catch (e) {
                          print(
                              '============ FirebaseAuthException ${e.toString()}=================');
                          if (['user-cancelled', 'user-not-found']
                              .contains(e.code)) {
                            AppHelper.showMessage(
                                ExceptionMessages.messages(e.code));
                          }
                        } catch (e) {
                          print(
                              '============ ERROR CHekc CATCH ${e.toString()}=================');
                          AppHelper.showMessage(e.toString());
                        } finally {
                          LoadingController.to.isLoading = false;
                        }
                      },
                    ),
                  ),
                  heightSpace(16.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
