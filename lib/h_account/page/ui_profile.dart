import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_account/controllers/push_alaram_controller.dart';
import 'package:clay/h_account/controllers/push_controller.dart';
import 'package:clay/h_board/controllers/board_list_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_kakao_login/flutter_kakao_login.dart';

import 'package:get/get.dart';

class ProfileUI extends StatelessWidget with AppbarHelper {
  final tileTitleStyle = baseStyle.copyWith(
      fontSize: 16, color: Color(0xFF333333), fontWeight: FontWeight.normal);
  final tileTrailingStyle = baseStyle.copyWith(
      fontSize: 14, color: Color(0xFF333333), fontWeight: FontWeight.normal);

  final tileTrailingWeakStyle = baseStyle.copyWith(
      fontSize: 14, color: Color(0xFF828282), fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    Get.put(PushAlarmController('userinfos'));
    final appbarHeight = 0 + kToolbarHeight;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appbarHeight),
        //SUBJECT : 앱바의 액션
        child: vwAppBar(
          title: 'Account',
          actions: [
            ImageButton(
                height: 17.0,
                width: 15.0,
                onTap: () {
                  final _controller = Get.put(PushController());
                  _controller.fetchItems();
                  Get.toNamed('/push');
                },
                holder: 'assets/icon/ph_bell-ringing.png'),
            widthSpace(8.5),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 14, right: 14.0),
            child: GetBuilder<HanUserInfoController>(
              builder: (_) => ListView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  heightSpace(27.0),
                  //SUBJECT: 프로필 정보
                  //TODO: 프로필 정보
                  //// ---------------------------------
                  /// 프로파일 정보
                  //// ---------------------------------

                  HanListTile(
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
                      margin: Spacing.left(15),
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
                              ),
                            ),
                          ),
                          heightSpace(5.0),
                          Container(
                            child: Text(
                              'wevivors@gmail.com',
                              style: baseStyle.copyWith(
                                color: Color(0xff707070),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        AppHelper.showMessage('플로핑 클릭');
                      },
                    ),
                  ),

                  heightSpace(34.0),
                  vwTitle('튜토리얼'),
                  heightSpace(10.0),
                  Container(
                    height: 148,
                    padding: EdgeInsets.only(left: 19),
                    child: HanListView(
                      isSliver: false,
                      direction: Axis.horizontal,
                      controller: BoardListController.to,
                      itemBuilder: (context, idx) {
                        final cache = BoardListController.to.cache;

                        return Row(
                          children: [
                            Container(
                                // height: 62 + 20 + 10,
                                // child: BSBoardItemWidget(
                                //   title: '새로운 보드',
                                //   category: '새보드',
                                // ),
                                ),
                            widthSpace(24.0),
                          ],
                        );
                      },
                    ),
                  ),

                  //이미지 링크 리스트

                  heightSpace(25.0),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10.0),
                    child: Container(
                      // padding: EdgeInsets.only(
                      //   left: 24,
                      // ),
                      decoration: DecoHelper.roundDeco.copyWith(
                        // color: Color(0xFFF8F8F8),
                        border: Border.all(width: 1, color: Color(0xFFDEDEDE)),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.only(left: 24),
                            dense: true,
                            title: Text(
                              '공지사항',
                              style: tileTitleStyle,
                            ),
                            // trailing: Icon(MdiIcons.chevronRight),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          ListTile(
                            onTap: () {
                              Get.toNamed('/setting');
                            },
                            contentPadding: EdgeInsets.only(left: 24),
                            dense: true,
                            title: Text(
                              '설정',
                              style: tileTitleStyle,
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.only(left: 24),
                            dense: true,
                            title: Text(
                              '문의하기/도움말',
                              style: tileTitleStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10.0),
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 24,
                      ),
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
                                '로그아웃',
                                style: tileTitleStyle.copyWith(
                                  decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.solid,
                                ),
                              ),
                            ),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            title: Container(
                              alignment: Alignment.center,
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
            fontSize: 16,
            color: Color(0xff353535),
            fontWeight: FontWeight.w900),
      ),
    );
  }
}
