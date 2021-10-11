// ignore: must_be_immutable
import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:get/get.dart';

import 'wgt_choice_color.dart';

class BottomSheetBoardInfo extends StatelessWidget with AppbarHelper {
  final onMenu;
  BottomSheetBoardInfo({
    this.onMenu,
  });

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Column(
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
            if (onMenu != null) onMenu();
          },
          title: '보드 접보 수정',
          actions: [
            Container(
              alignment: Alignment.center,
              // color: Colors.red,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Text(
                  '완료',
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
        heightSpace(20.0),
        Padding(
          padding: EdgeInsets.only(left: 19.0, right: 19.0),
          child: vwTitle('보드 이름'),
        ),
        heightSpace(10.0),
        Padding(
          padding: EdgeInsets.only(left: 19.0, right: 19.0),
          child: Container(
            height: 38,
            decoration: DecoHelper.roundDeco.copyWith(
              color: Color(0xFFF6F6F6),
            ),
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 16.0,
            ),
            child: TextFormField(
              maxLines: 1,
              onTap: () {},

              // style: accountEditTextStyle,
              decoration: kInputDecoration.copyWith(
                fillColor: Color(0xFFF6F6F6),
                hintText: '홈베이킹 레시피|',
                hintStyle: baseStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(
                      0xFFCACACA,
                    )),
                isDense: true,
              ),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.newline,
              onEditingComplete: () => node.unfocus(),
              // controller: CertificateEditController.to.buyController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '체결 금액을 입력해 주세요';
                }
                return null;
              },
              // inputFormatters: <TextInputFormatter>[
              //   NumericTextFormatter(),
              //   LengthLimitingTextInputFormatter(13),
              // ],
            ),
          ),
        ),
        heightSpace(16.0),
        Padding(
          padding: EdgeInsets.only(left: 19.0, right: 19.0),
          child: vwTitle('배치 선택'),
        ),
        heightSpace(10.0),

        Container(
          height: 64,
          padding: EdgeInsets.only(left: 19),
          child: HanListView(
            isSliver: false,
            direction: Axis.horizontal,
            controller: BoardListController.to,
            itemBuilder: (context, idx) {
              final cache = BoardListController.to.cache;
              return Container(
                height: 54,
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ImageWidget(
                      holder: Const.assets + 'icon/hart.png',
                      height: 28,
                      width: 28,
                      onTap: () {
                        Get.toNamed('/collect_detail?index=$idx');
                      },
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'test',
                        textAlign: TextAlign.center,
                        style: baseStyle.copyWith(
                            fontSize: 12,
                            color: Color(0xFF3A3A3A),
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        heightSpace(16.0),
        Padding(
          padding: EdgeInsets.only(left: 19.0, right: 19.0),
          child: vwTitle('색상 변경'),
        ),
        heightSpace(10.0),
        //SUBJECT : 색상변경
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Divider(height: 1),
              Container(
                padding:
                    EdgeInsets.only(left: 0, right: 0, top: 19, bottom: 15),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BSChoiceColorWidget(
                          boardColor: Color(0xFFfc5e20),
                        ),
                        BSChoiceColorWidget(
                          boardColor: Color(0xFFffc700),
                        ),
                        BSChoiceColorWidget(
                          boardColor: Color(0xFF159b4d),
                        ),
                        BSChoiceColorWidget(
                          boardColor: Color(0xFF1b9dfc),
                        ),
                        BSChoiceColorWidget(
                          boardColor: Color(0xFF9a71bb),
                        ),
                        BSChoiceColorWidget(
                          boardColor: Color(0xFF9a71bb),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BSChoiceColorWidget(
                          boardColor: Color(0xFFff78d9),
                        ),
                        BSChoiceColorWidget(
                          boardColor: Color(0xFFcaf2ff),
                        ),
                        BSChoiceColorWidget(
                          boardColor: Color(0xFF9dffd0),
                        ),
                        BSChoiceColorWidget(
                          boardColor: Color(0xFFc1a27c),
                        ),
                        BSChoiceColorWidget(
                          boardColor: Color(0xFFfff1a7),
                        ),
                        BSChoiceColorWidget(
                          boardColor: Color(0xFFfff1a7),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        heightSpace(16.0),
        //SUBJECT: 스위치 버턴.
        Padding(
          padding: EdgeInsets.only(left: 19.0, right: 19.0),
          child: Row(
            children: [
              vwTitle('공유하기'),
              Flexible(child: Container()),
              Switch(value: false, onChanged: (value) {}),
            ],
          ),
        ),
        heightSpace(16.0),
      ],
      // ),
    );
  }

  Widget vwTitle(final title) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: baseStyle.copyWith(
            fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
      ),
    );
  }
}
