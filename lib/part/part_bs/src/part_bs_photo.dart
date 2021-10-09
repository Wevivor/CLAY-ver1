// ignore: must_be_immutable
import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:get/get.dart';

class BottomSheetPhoto extends StatelessWidget with AppbarHelper {
  final onMenu;
  BottomSheetPhoto({
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
              if (onMenu != null) onMenu();
            },
            title: '사진/비디오',
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

          Container(
            padding: EdgeInsets.only(
              left: 25.0,
            ),
            alignment: Alignment.centerLeft,
            child: ImageWidget(
              holder: Const.assets + 'images/smpl_img1.png',
            ),
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
                  hintText: '|사진/비디오의 제목을 입력해 주세요.',
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
          // vwTitle('웹 링크'),
          vwTitle('코멘트'),
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
                  hintText: '|콘텐츠에 남기고 싶은 말을 써주세요.',
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
          vwTitle('저장할 보드 선택하기'),
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