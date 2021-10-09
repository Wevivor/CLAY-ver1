import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/app/home/homes.dart';
import 'package:clay/controllers/controllers.dart';

import 'package:clay/page/ui_borad_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

// ignore: must_be_immutable
class BoardListPART extends StatelessWidget with AppbarHelper {
  final listController = Get.put(
    BoardListController(),
  );
  BoardListPART();
  Future<void> initFetch() async {
    listController.cache = [];
    await listController.fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    initFetch();
    return Padding(
      padding: const EdgeInsets.only(left: 2.0, right: 2.0),
      child: Column(
        children: [
          ///--------------------------
          /// 보드 리스트
          ///-------------------------
          Expanded(
            child: GetBuilder<BoardListController>(builder: (controller) {
              final cache = controller.cache;
              final loading = controller.loading;
              print(
                  ' ==========> MyBoardListController Exist ${cache.toString()}');

              return Container(
                // padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                child: HanListView(
                  controller: controller,
                  isSliver: false,
                  direction: Axis.vertical,
                  itemBuilder: (context, idx) {
                    final cache = controller.cache;
                    final size = controller.cache.length;
                    //SUBJECT:보드 만들기
                    //TODO : 보드 위젯 이후에 작업

                    return Column(
                      children: [
                        ListTile(
                          onTap: () {
                            Get.to(() => BoardContentUI(board: '1'));
                          },
                          contentPadding: EdgeInsets.zero,
                          title: Row(children: [
                            Container(
                              width: (MySize.safeWidth - 16 * 2) * 203 / 360,
                              child: Text(
                                '수익실현 리뷰시 스타벅스 쿠폰 증정',
                                overflow: TextOverflow.ellipsis,
                                style: baseStyle.copyWith(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4A4A4A),
                                ),
                              ),
                            ),
                            widthSpace(14),
                            InkWell(
                              onTap: () {
                                _showBS(context, vwBoardMenu(context));
                              },
                              child: Container(
                                width: (MySize.safeWidth - 16 * 2) * 59 / 360,
                                child: Text(
                                  '2020.03.12',
                                  style: baseStyle.copyWith(
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xFF4A4A4A),
                                  ),
                                ),
                              ),
                            ),
                            widthSpace(26.3),
                            // Expanded(
                            //   child: Container(
                            //     alignment: Alignment.center,
                            //     child: Image.asset(
                            //       'assets/icon/letter_1.png',
                            //     ),

                            //     // Icon(
                            //     //   Icons.text_format,
                            //     //   color: Color(0xFF08519E),
                            //     // ),
                            //   ),
                            // )
                          ]),
                        ),
                        Divider(
                          color: Color(0xFFEEEFF2),
                        )
                      ],
                    );
                  },
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget vwBoardMenu(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        heightSpace(2.0),
        Container(
            alignment: Alignment.bottomCenter,
            height: 11,
            child: Image.asset(Const.assets + 'images/rect_40.png')),
        heightSpace(34),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () {
            //SUBJECT : BS: 상단 고정
            //TODO: 데이터베이스고정.
            Get.back();
          },
          leading: Image.asset(Const.assets + 'icon/icon_pin_fix.png'),
          title: Text('상단고정'),
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () {
            //SUBJECT : BS: 공유 권한 변경
            //TODO: 패딩조정.
            Get.back();
            _showBS(context, vwBoardShare(context));
          },
          leading: Image.asset(Const.assets + 'icon/icon_share.png'),
          title: Text('공유'),
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () {
            //SUBJECT : BS: 보드 체인지
            //TODO: 공유....
            Get.back();
          },
          leading: Image.asset(Const.assets + 'icon/icon_boardchange.png'),
          title: Text('보드정보 수정'),
        ),
        HanListTile(
          padding: EdgeInsets.only(
            left: 19.0,
            bottom: 26.17,
          ),
          onTap: () async {
            //SUBJECT : BS: 보드 삭제
            //TODO: 삭제....
            Get.back();
            // AppHelper.show
            // Get.toNamed('/yaggwan/2');
            var _responce = false;
            await DialogHelper.MessageDialog(
              context,
              (context) => DeleteDialog(
                title: '보드를 삭제하시겠습니까?',
                deleteTitle: '삭제',
                okTitle: '취소',
                okTap: () {
                  _responce = false;
                },
                deleteTap: () {
                  _responce = true;
                },
              ),
            );
            if (_responce) {
              AppHelper.showMessage('보드를 삭제');
            }
          },
          leading: Image.asset(Const.assets + 'icon/icon_trashcan.png'),
          title: Text('삭제'),
        ),
      ],
    );
  }

  Widget vwBoardShare(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          heightSpace(2.0),
          Container(
              alignment: Alignment.bottomCenter,
              height: 11,
              child: Image.asset(Const.assets + 'images/rect_40.png')),
          vwBSAppBar(
            onBack: () {
              Get.back();
              _showBS(context, vwBoardMenu(context));
            },
            title: '공유방식 선택',
            actions: [
              Container(
                alignment: Alignment.center,
                // color: Colors.red,
                child: InkWell(
                  onTap: () {
                    // FindController.to.searchWord = '';
                    // FindController.to.update();
                    Get.back();
                  },
                  child: Text(
                    '공유하기',
                    style: baseStyle.copyWith(
                        fontSize: 13,
                        color: Color(0xff017BFE),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              widthSpace(18.87),
            ],
          ),
          HanListTile(
            onTap: () {
              //SUBJECT : 상단 고정
              //TODO: 데이터베이스고정.
            },
            leading: Image.asset(Const.assets + 'icon/radio_off.png'),
            title: Text('읽기 허용'),
          ),
          HanListTile(
            onTap: () {
              //SUBJECT : 공유 방법
              //TODO: 공유....
            },
            leading: Image.asset(Const.assets + 'icon/radio_on.png'),
            title: Text('편집 허용'),
          ),
        ],
      ),
    );
  }

  Widget vwBoardInfo(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          heightSpace(2.0),
          Container(
              alignment: Alignment.bottomCenter,
              height: 11,
              child: Image.asset(Const.assets + 'images/rect_40.png')),
          vwBSAppBar(
            onBack: () {
              Get.back();
              _showBS(context, vwBoardMenu(context));
            },
            title: '공유방식 선택',
            actions: [
              Container(
                alignment: Alignment.center,
                // color: Colors.red,
                child: InkWell(
                  onTap: () {
                    // FindController.to.searchWord = '';
                    // FindController.to.update();
                    Get.back();
                  },
                  child: Text(
                    '공유하기',
                    style: baseStyle.copyWith(
                        fontSize: 13,
                        color: Color(0xff017BFE),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              widthSpace(18.87),
            ],
          ),
          HanListTile(
            onTap: () {
              //SUBJECT : 상단 고정
              //TODO: 데이터베이스고정.
            },
            leading: Image.asset(Const.assets + 'icon/radio_off.png'),
            title: Text('읽기 허용'),
          ),
          HanListTile(
            onTap: () {
              //SUBJECT : 공유 방법
              //TODO: 공유....
            },
            leading: Image.asset(Const.assets + 'icon/radio_on.png'),
            title: Text('편집 허용'),
          ),
        ],
      ),
    );
  }

  void _showBS(context, child) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: context,
        enableDrag: false,
        builder: (BuildContext buildContext) {
          return child;
        });
  }

  Widget vwTitle(final title) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: baseStyle.copyWith(
            fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
      ),
    );
  }
}
