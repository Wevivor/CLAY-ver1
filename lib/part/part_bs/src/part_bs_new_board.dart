// ignore: must_be_immutable
import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:get/get.dart';

class BottomSheetNewBoard extends StatelessWidget with AppbarHelper {
  final onMenu;
  BottomSheetNewBoard({
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
          title: '보드 만들기',
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
                hintText: '|“DIY”, “레시피”와 같은 제목을 추가하세요.',
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
          child: vwTitle('보드에 배치 달기'),
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
