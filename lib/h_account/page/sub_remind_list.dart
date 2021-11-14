// Account > 리마인드 알림 설정
import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_account/controllers/remind_controller.dart';
import 'package:clay/h_account/controllers/remind_list_controller.dart';
import 'package:clay/h_account/models/remind/remind.dart';
import 'package:clay/h_content/controllers/contents_controller.dart';
import 'package:clay/h_content/part_bs/src/part_bs_calendar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class RemindListSUB extends StatelessWidget with AppbarHelper, BSValidator {
  final _formKey = GlobalKey<FormState>();
  final tileTitleStyle = baseStyle.copyWith(
    fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
    fontSize: 12,
    color: Get.locale?.languageCode == 'ko'
        ? Color(0xFF000000)
        : Color(0xFF353535),
    fontWeight:
        Get.locale?.languageCode == 'ko' ? FontWeight.w700 : FontWeight.w800,
    height: Get.locale?.languageCode == 'ko' ? 1.17 : 1.37, // 14.06px, 16.39px
  );

  final dateStyle = baseStyle.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: Colors.black,
    height: 1.17,
  ); // 11.72px

  final titleStyle = baseStyle.copyWith(
      fontSize: 12,
      color: ThemeController.to.isLightOn ? Color(0xFF353535) : Colors.white,
      fontWeight: FontWeight.w700);

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return GlobalStyle.primary;
    }
    return GlobalStyle.primary;
  }

  Color getColorCancel(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Color(0xffC1C1C1);
    }
    return Color(0xffC1C1C1);
  }

  Color getGrayBg() {
    return ThemeController.to.isLightOn
        ? Color(0xFFF6F6F6)
        : Colors.grey[400] ?? Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    MySize().init(context);
    final appbarHeight = 0 + kToolbarHeight;
    return Scaffold(
      backgroundColor: getGrayBg(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appbarHeight),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 4.0,
          shadowColor: Color.fromRGBO(0, 0, 0, 0.2),
          title: Text(
            'account.appbar.title.reminder'.tr,
            style: appBarStyle.copyWith(
                fontFamily:
                    Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w900,
                height: Get.locale?.languageCode == 'ko'
                    ? 1.17
                    : 1.37), // 21.09px, 24.59px
          ),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.chevron_left,
              color: Color(0xff373737),
            ),
          ),
          backgroundColor: Colors.white,
          actions: actionBlankList(),

          ///구코포들를 등록
          flexibleSpace: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [],
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              //color: getGrayBg(),
              color: Color.fromRGBO(246, 246, 246, 0.7),
              padding:
                  EdgeInsets.only(left: 19, right: 20.0, top: 18, bottom: 17),
              child: Container(
                child: HanListTile(
                  padding: EdgeInsets.zero,
                  leading: Text(
                    'account.setting.reminder.title.list'.tr, // 설정된 알림 리스트
                    style: tileTitleStyle,
                  ),
                  // trailing: Icon(MdiIcons.chevronRight),
                ),
              ),
            ),
            GetBuilder<RemindListController>(builder: (controller) {
              return Expanded(
                child: Container(
                  color: getBg(),
                  child: HanListView(
                    controller: controller,
                    isSliver: false,
                    direction: Axis.vertical,
                    itemBuilder: (context, idx) {
                      final cache = controller.cache;
                      final size = controller.cache.length;
                      Remind item = cache[idx];

                      //SUBJECT:보드 만들기
                      //TODO : 보드 위젯 이후에 작업
                      //TODO: 공유부분을 추가해야함. 고정을 추가해야 함

                      return Column(children: [
                        HanListTile(
                          padding: EdgeInsets.only(
                              top: 8, left: 16, bottom: 8, right: 16),
                          leading: Container(
                            width: 52,
                            height: 50,
                            alignment: Alignment.center,
                            // padding:
                            //     EdgeInsets.only(left: 6, top: 12, bottom: 12),'
                            margin: EdgeInsets.only(left: 2.0),
                            decoration: BoxDecoration(
                              color: Color(0xFFF6F6F6),
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            // TODO : [SH] 시간 형식을 다시 정리해야 함. 한글 : 10월07일\n5:35 PM, 영문 : Oct. 7th\n5:35 PM
                            child: Text(
                              Jiffy(item.rAlarmTime).format('MM월dd일 hh:mm a'),
                              textAlign: TextAlign.center,
                              style: dateStyle,
                            ),
                          ),
                          title: Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.title ?? '',
                                    style: baseStyle.copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF000000),
                                      height: 1.17, // 15.23px
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                  heightSpace(5.0),
                                  Text(
                                    item.contentsInfo.contentsTitle ?? '',
                                    style: baseStyle.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF707070),
                                      height: 1.17, // 11.72px
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ),
                            flex: 15,
                          ),
                          trailing: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                // onTap: () async {
                                //   await _actionSelect(context, item);
                                // },

                                onTap: () => _actionSelect(context, item),

                                child: reminderButton(
                                  iconUrl: 'icon/icon_alarm.png',
                                ),
                              ),
                              widthSpace(8.0),

                              InkWell(
                                // onTap: () async {
                                //   await _actionDelete(context, item);
                                // },

                                onTap: () => _actionDelete(context, item),

                                child: reminderButton(
                                  iconUrl: 'icon/icon_close.png',
                                ),
                              ),

                              // ImageButton(
                              //   // onTap: () async {
                              //   //   await _actionDelete(context, item);
                              //   // },
                              //   onTap: () => _actionDelete(context, item),
                              //   width: 30,
                              //   height: 30,
                              //   holder: Const.assets + 'icon/icon_close.png',
                              // ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 0.5,
                          color: Color(0xFFDEDEDE),
                          height: 0,
                          indent: 10.0,
                          endIndent: 10.0,
                        )
                      ]);
                    },
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  Future<void> _actionDelete(BuildContext context, final item) async {
    var _responce = false;
    await DialogHelper.MessageDialog(
      context,
      (context) => DeleteDialog(
        title: '알람을 삭제하시겠습니까?',
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
      await RemindListController.to.actionDelete(item.remindId);
      // RemindListController.to.actionDelteItem(item.info.contentsId ?? '');
    }
    return;
  }

  Future<void> _actionSelect(BuildContext context, final item) async {
    Get.lazyPut(() => ContentsController());
    Get.lazyPut(() => RemindController());
    RemindController.to.init();
    _showBS(
        context,
        BottomSheetCalendar(
          contents: null,
          remind: item,
        ));
  }

  void _showBS(context, child) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        isScrollControlled: true,
        // barrierColor: Colors.red,
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext buildContext) {
          return WillPopScope(
            onWillPop: () {
              //SUBJECT: BS 시스템네비바 검게 방지하는
              delaySetSysyemUIOverlays(250);

              return Future.value(true);
            },
            // child: AnnotatedRegion<SystemUiOverlayStyle>(
            //   value: GlobalStyle.configStatusTheme,
            child: Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                child: Wrap(
                  children: [child],
                ),
              ),
            ),
            // ),
          );
        });
  }
}

class reminderButton extends StatelessWidget {
  final double height;
  final double width;
  final iconUrl;

  reminderButton({
    this.height = 20,
    this.width = 20,
    this.iconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFF6F6F6),
        ),
        child: Image.asset(
          Const.assets + iconUrl,
          width: width,
          height: height,
          fit: BoxFit.none,
        ));
  }
}
