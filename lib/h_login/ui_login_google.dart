import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_account/models/users/users_dtos.dart';
import 'package:clay/h_share/h_share.dart';
import 'package:clay/h_share/share_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/c_globals/widgets/widgets.dart';

import 'widget/login_title_widget.dart';
import 'widget/sns_wide_widget.dart';

class LoginGoogleUI extends StatelessWidget with AppbarHelper {
  late ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    themeData = Theme.of(context);
    Get.put(HanUserInfoController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: GlobalStyle.configStatusTheme,
        child: Container(
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
                                userId: _user?.uid,
                                userEmail: _user?.email ?? '',
                                userName: _user?.displayName,
                                profileImg: _user?.photoURL,
                                level: 3,
                                registerDate: DateTime.now(),
                                // dtUpdated: DateTime.now(),
                              );

                              // final _detail = UserDetailDto(
                              //   phone: '010-5391-3862',
                              //   intro: null,
                              //   // isPush: false,
                              //   // token: null,
                              // );

                              // final _regiInfo = UserRegiInfoDto(
                              //     isProvision: false,
                              //     isPersonInfo: false,
                              //     isReceive: false);

                              final _userInfo = HanUserInfoDto(
                                userId: _user?.uid,
                                profile: _profile,
                                userPhone: '010-5391-3862',
                                intro: null,
                                // info: _detail,
                                // regiInfo: _regiInfo,
                                isDisabled: false,
                                cntVisit: 0,
                                level: 3,
                                // following: ListCntDto(cnt: 0, lists: []),
                                registerDate: DateTime.now(),
                                // dtUpdated: DateTime.now(),
                              );

                              HanUserInfoController.to.actionCreate(_userInfo);
                            }
                            print(
                                '---------------actionVisitInc ${_exist.toString()}--------------------');

                            // await HanUserInfoController.to.actionVisitInc();
                            if (ShareController.to.isShare.value)
                              Get.to(() => ShareServiceUI());
                            else
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
                    StackWithButton(
                      child: SnsWideWidget(
                        title: '',
                        assetName: 'assets/sns_login/wide_kakao.png',
                        onTap: () async {
                          // try {
                          //   await AuthController.to.signInWithKAKAO();
                          // } catch (e) {
                          //   print('======: {e.toString()}');
                          // }
                        },
                      ),
                    ),
                    heightSpace(16.0),
                    StackWithButton(
                      child: SnsWideWidget(
                        title: '',
                        assetName: 'assets/sns_login/wide_naver.png',
                        onTap: () {},
                      ),
                    ),

                    //  InkWell(
                    //     splashColor: Colors.yellow,
                    //     onTap: () {

                    //     },
                    //     child: _isLoadingKAKAO
                    //         ? stackWithButton(SnsWideButton(
                    //             title: _signup ? '카카오로 간편가입' : '카카오로 로그인',
                    //             assetFilename:
                    //                 'assets/sns_login/kakao_wide.png'))
                    //         : SnsWideButton(
                    //             title: _signup ? '카카오로 간편가입' : '카카오로 로그인',
                    //             assetFilename:
                    //                 'assets/sns_login/kakao_wide.png'),
                    //     // : buttonCustomKAKAO(),
                    //   ),
                    heightSpace(20.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
