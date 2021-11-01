//

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_account/controllers/alarm_controller.dart';
import 'package:clay/h_account/controllers/push_list_controller.dart';
import 'package:clay/h_account/controllers/remind_list_controller.dart';
import 'package:clay/h_account/part_profile/src/wgt_item_tutorial.dart';
import 'package:clay/h_board/controllers/board_list_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_kakao_login/flutter_kakao_login.dart';

import 'package:get/get.dart';

class ProfileUI extends StatelessWidget with AppbarHelper {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    final appbarHeight = 0 + kToolbarHeight;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appbarHeight),
        //SUBJECT : 앱바의 액션
        child: vwAppBar(
          title: 'account.appbar.title.account'.tr,
          titleStyle: appBarStyle.copyWith(
            fontFamily: 'Avenir',
            height: 1.37, // line height : 32.78px
          ),
          actions: [
            ImageButton(
                height: 17.0,
                width: 15.0,
                onTap: () {
                  final _controller = Get.put(PushListController());
                  _controller.fetchItems();
                  Get.toNamed('/push_list');
                },
                holder: 'assets/icon/ph_bell-ringing.png'),
            widthSpace(20),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            // color: Colors.red,
            // padding: EdgeInsets.only(left: 14, right: 14.0),
            child: GetBuilder<HanUserInfoController>(
              builder: (_) => ListView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  heightSpace(27.0), // 83 - preferredSize(56)

                  //SUBJECT: 프로필 정보
                  //TODO: 프로필 정보
                  //// ---------------------------------
                  /// 프로파일 정보
                  //// ---------------------------------

                  Container(
                    padding: EdgeInsets.only(left: 10, right: 0.0),
                    child: HanListTile(
                      leading: ImageCircleWidget(
                        onTap: () {
                          // if (onTap != null) onTap!();
                        },
                        isAll: true,
                        height: 60,
                        width: 60,
                        imgUrl: null,
                        holder: Const.assets + 'images/avatar-4.jpg',
                      ),
                      title: Container(
                        margin: Spacing.left(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                // displayName ?? '',
                                '김수민',
                                style: baseStyle.copyWith(
                                  fontSize: 18,
                                  color: Color(0xFF353535),
                                  fontWeight: FontWeight.w900,
                                  height: 1.17, // line height : 21.09px
                                ),
                              ),
                            ),
                            heightSpace(5.0),
                            Container(
                              child: Text(
                                'wevivors@gmail.com',
                                style: baseStyle.copyWith(
                                  fontFamily: 'Avenir',
                                  color: Color(0xff707070),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  height: 1.37, // line height : 17.76
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.chevron_right,
                          color: Color(0xFF707070),
                        ),
                        onPressed: () {
                          AppHelper.showMessage(
                              '플로핑 클릭'); // TODO : [SH] 현재 번역하지 않음.
                        },
                      ),
                    ),
                  ),
                  heightSpace(7.0),
                  Divider(
                    thickness: 0.3,
                    color: Color(0xFFDEDEDE),
                    height: 0.0,
                  ),
                  heightSpace(25.0),

                  // 튜토리얼
                  Container(
                    padding: EdgeInsets.only(left: 4.0),
                    child: vwTitle('account.body.subtitle.tutorial'.tr),
                  ),
                  heightSpace(12.0),

                  // ----------------------------------------------
                  // Container(
                  //   height: 148,
                  //   padding: EdgeInsets.only(left: 20),
                  //   child: HanListView(
                  //     isSliver: false,
                  //     direction: Axis.horizontal,
                  //     controller: BoardListController.to,
                  //     itemBuilder: (context, idx) {
                  //       final cache = BoardListController.to.cache;

                  //       return Row(
                  //         children: [
                  //           Container(
                  //               // height: 62 + 20 + 10,
                  //               // child: BSBoardItemWidget(
                  //               //   title: '새로운 보드',
                  //               //   category: '새보드',
                  //               // ),
                  //               ),
                  //           widthSpace(24.0),
                  //         ],
                  //       );
                  //     },
                  //   ),
                  // ),
                  // -------------------------------------
                  // 튜토리얼 부분 Sample Code ------------
                  Container(
                    height: 148,
                    padding: EdgeInsets.only(left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          // TODO : [SH]
                          TutorialItemWidget(
                              onTap: () {
                                AppHelper.showMessage('튜토리얼');
                              },
                              imgUrl: 'img/smpl_tutorial.png',
                              tutorialText: 'account.body.tutorials.title'.tr),
                          TutorialItemWidget(
                              onTap: () {
                                AppHelper.showMessage('튜토리얼');
                              },
                              imgUrl: 'img/smpl_tutorial.png',
                              tutorialText: 'account.body.tutorials.title'.tr),
                          TutorialItemWidget(
                              onTap: () {
                                AppHelper.showMessage('튜토리얼');
                              },
                              imgUrl: 'img/smpl_tutorial.png',
                              tutorialText: 'account.body.tutorials.title'.tr),
                          TutorialItemWidget(
                              onTap: () {
                                AppHelper.showMessage('튜토리얼');
                              },
                              imgUrl: 'img/smpl_tutorial.png',
                              tutorialText: 'account.body.tutorials.title'.tr),
                          TutorialItemWidget(
                              onTap: () {
                                AppHelper.showMessage('튜토리얼');
                              },
                              imgUrl: 'img/smpl_tutorial.png',
                              tutorialText: 'account.body.tutorials.title'.tr),
                        ],
                      ),
                    ),
                  ),
                  // ----------------------------------------

                  // Account 메뉴 리스트
                  heightSpace(18.0),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20.0),
                    child: Container(
                      decoration: DecoHelper.roundDeco.copyWith(
                        border:
                            Border.all(width: 0.5, color: Color(0xFFDEDEDE)),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          //공지사항
                          ListTile(
                            contentPadding: EdgeInsets.only(left: 20),
                            dense: true,
                            title: vaTitle('account.body.subtitle.notice'.tr),
                            // Text(
                            //   'account.body.subtitle.notice'.tr,
                            //   style: tileTitleStyle,
                            // ),
                            // trailing: Icon(MdiIcons.chevronRight),
                          ),
                          Divider(
                            thickness: 0.5,
                            height: 0,
                            color: Color(0xFFDEDEDE),
                          ),

                          //설정
                          ListTile(
                            onTap: () {
                              Get.toNamed('/setting');
                            },
                            contentPadding: EdgeInsets.only(left: 20),
                            dense: true,
                            title: vaTitle('account.body.subtitle.setting'.tr),
                          ),
                          Divider(
                            thickness: 0.5,
                            height: 0,
                            color: Color(0xFFDEDEDE),
                          ),

                          //리마인드 알림 설정
                          ListTile(
                            onTap: () {
                              final _ctl = Get.put(RemindListController());
                              _ctl.fetchItems();

                              Get.toNamed('/remind');
                            },
                            contentPadding: EdgeInsets.only(left: 20),
                            dense: true,
                            title: vaTitle('account.body.subtitle.reminder'.tr),
                          ),
                          Divider(
                            thickness: 0.5,
                            height: 0,
                            color: Color(0xFFDEDEDE),
                          ),

                          //문의하기 / 도움말
                          ListTile(
                            contentPadding: EdgeInsets.only(left: 20),
                            dense: true,
                            title: vaTitle('account.body.subtitle.help'.tr),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10.0),
                    child: Container(
                      //padding: EdgeInsets.only(left: 24),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            onTap: () async {
                              final _loginKind =
                                  HanUserInfoController.to.userInfo?.snsLogin;

                              if ('K' == _loginKind) {
                                FlutterKakaoLogin kakaoSignIn =
                                    new FlutterKakaoLogin();

                                kakaoSignIn.logOut();
                              } else if ('G' == _loginKind) {
                                GoogleSignIn googleSignIn = new GoogleSignIn();
                                googleSignIn.isSignedIn().then((value) {
                                  if (value) googleSignIn.signOut();
                                });
                              }
                              await FirebaseAuth.instance.signOut();
                              Get.offAllNamed('start');
                            },
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            title: Container(
                              alignment: Alignment.center,
                              child: Text(
                                'account.body.btn.logout'.tr, // 로그아웃
                                style: baseStyle.copyWith(
                                  fontFamily: Get.locale?.languageCode == 'ko'
                                      ? 'Roboto'
                                      : 'Avenir',
                                  fontSize: 11,
                                  color: Color(0xFF707070),
                                  fontWeight: Get.locale?.languageCode == 'ko'
                                      ? FontWeight.w400
                                      : FontWeight.w500,
                                  height: Get.locale?.languageCode == 'ko'
                                      ? 1.17
                                      : 1.37, // 12.89px, 15.03px
                                  decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.solid,
                                ),
                              ),
                            ),
                          ),

                          // TODO : [SH] 패딩이 잡히지 않음
                          ListTile(
                            //contentPadding: EdgeInsets.zero,
                            dense: true,
                            title: Container(
                              alignment: Alignment.topCenter,
                              child: AppVersionWidget(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Positioned(bottom: 5.0, right: 20.0, child: AppVersionWidget()),
        ],
      ),
      bottomNavigationBar: BNBarWidget(),
    );
  }

  Widget vwTitle(final title) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: baseStyle.copyWith(
          fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
          fontSize: Get.locale?.languageCode == 'ko' ? 14 : 16,
          color: Color(0xFF353535),
          fontWeight: FontWeight.w900,
          height: Get.locale?.languageCode == 'ko'
              ? 1.17
              : 1.37, // 16.41px, 21.86px
        ),
      ),
    );
  }

  // Account 메뉴 타이틀 스타일
  Widget vaTitle(final title) {
    return Container(
      child: Text(
        title,
        style: baseStyle.copyWith(
          fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
          fontSize: Get.locale?.languageCode == 'ko' ? 12 : 13,
          color: Color(0xFF353535),
          fontWeight: Get.locale?.languageCode == 'ko'
              ? FontWeight.w400
              : FontWeight.w500,
          height: Get.locale?.languageCode == 'ko'
              ? 1.17
              : 1.37, // 14.06px, 17.76px
        ),
      ),
    );
  }
}
