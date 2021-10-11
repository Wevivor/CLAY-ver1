// ignore: must_be_immutable
import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:get/get.dart';

class BottomSheetShare extends StatelessWidget with AppbarHelper {
  final onMenu;
  BottomSheetShare({
    this.onMenu,
  });

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
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

              //SUBJECT: 바텀시트 색상...

              if (onMenu != null) onMenu();
              // Future.delayed(
              //     Duration(milliseconds: 200),
              //     () =>
              //         // SystemChrome.setSystemUIOverlayStyle(
              //         //     SystemUiOverlayStyle.dark));
              //         SystemChrome.setSystemUIOverlayStyle(
              //             SystemUiOverlayStyle.light.copyWith(
              //                 systemNavigationBarColor: Color(0xFFEEEEEE),
              //                 // systemNavigationBarColor: Colors.transparent,
              //                 systemNavigationBarIconBrightness:
              //                     Brightness.dark)));
            },
            title: '공유방식 선택',
            actions: [
              Container(
                alignment: Alignment.center,
                // color: Colors.red,
                child: InkWell(
                  onTap: () async {
                    Get.back();

                    await Share.share('https://www.naver.com');
                    Future.delayed(
                        Duration(milliseconds: 300),
                        () =>
                            // SystemChrome.setSystemUIOverlayStyle(
                            //     SystemUiOverlayStyle.dark));
                            SystemChrome.setSystemUIOverlayStyle(
                                SystemUiOverlayStyle.light.copyWith(
                                    systemNavigationBarColor: Color(0xFFEEEEEE),
                                    // systemNavigationBarColor: Colors.transparent,
                                    systemNavigationBarIconBrightness:
                                        Brightness.dark)));
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
            padding: EdgeInsets.only(left: 47.0),
            onTap: () {
              //SUBJECT : 상단 고정
              //TODO: 데이터베이스고정.
            },
            leading: Image.asset(Const.assets + 'icon/radio_off.png'),
            title: Text('읽기 허용'),
          ),
          heightSpace(34.0),
          HanListTile(
            padding: EdgeInsets.only(left: 47.0),
            onTap: () {
              //SUBJECT : 공유 방법
              //TODO: 공유....
            },
            leading: Image.asset(Const.assets + 'icon/radio_on.png'),
            title: Text('편집 허용'),
          ),
          heightSpace(37.0),
        ],
      ),
    );
  }

  Widget vwTitle(final title) {
    return Container(
      padding: EdgeInsets.only(left: 18),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: baseStyle.copyWith(
            fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
      ),
    );
  }
}
