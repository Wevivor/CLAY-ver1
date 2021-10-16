// ignore: must_be_immutable
import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:clay/models/models.dart';
import 'package:clay/part/part_app/part_imagepicker/part_imagepicker.dart';
import 'package:get/get.dart';

import 'part_board_select.dart';
import 'wgt_bs_board_item.dart';

class BottomSheetContentPhoto extends StatelessWidget
    with AppbarHelper, BSValidator {
  final onMenu;
  BottomSheetContentPhoto({
    this.onMenu,
  });
  final dialogController = Get.lazyPut(() => CarmeraDailogController());
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    Get.lazyPut(() => PickedImageController());
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
                  onTap: () async {
                    final _title = ContentsController.to.titleController.text;

                    if (photoTitle(_title) != null || _title.isEmpty) {
                      AppHelper.showMessage(messages['photo_title'] ?? '');
                      return;
                    }
                    final _comment =
                        ContentsController.to.commentController.text;

                    if (comment(_comment) != null || _comment.isEmpty) {
                      AppHelper.showMessage(messages['comment'] ?? '');
                      return;
                    }

                    if (BoardListMySelectController.to.selected < 0) {
                      AppHelper.showMessage(messages['board_select'] ?? '');
                      return;
                    }

                    //SUBJECT: 컨텐츠
                    //TODO: 링크로 추가하기
                    final _boardInfo = BoardListMySelectController.to.boardInfo;

                    final _controller = Get.put(ContentsController());
                    final _profile = HanUserInfoController.to.toProfile();
                    final _info = ContentsInfoDto(
                      //  contentsId: contentsId,
                      contentsTitle: _title,
                      contentsUrl: '',
                      contentsImages: '',
                      contentsDescription: '',
                      contentsComment: _comment,
                      thumbnails: null,
                      contentsUniqueLink: '',
                      ContentsCreateDate: DateTime.now(),
                      ContentsUpdateDate: DateTime.now(),
                    );

                    //SUBJECT comment 타입 변경 필요
                    //TODO: comment 타입 변경
                    final _item = ContentsDto(
                      boardInfo: _boardInfo?.toDto(),
                      userInfo: _profile.toDto(),
                      info: _info,
                      contentsAllviewCount: 0,
                      contentsMyviewCount: 0,
                      contentsAlarmCheck: 0,
                      shareInfo: null,
                      contentsComment: null,
                      ContentsCreateDate: DateTime.now(),
                      ContentsUpdateDate: DateTime.now(),
                    );
                    Get.back();
                    await _controller.actionIns(_item);
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
            child: Stack(
              children: [
                PickedImageWidget(
                  MySize.getScaledSizeHeight(120),
                  MySize.getScaledSizeHeight(120),
                  imgHolder: Const.assets + 'images/smpl_img1.png',
                ),
                Positioned(
                  top: MySize.size0,
                  left: MySize.size0,
                  child: InkWell(
                    child: Container(
                      height: 120,
                      width: 120,
                    ),
                    onTap: () async {
                      await showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              CameraPickerDialog());

                      //카메라에 앨범에서 서 이미지를 피커함.
                      await PickedHelper.pickedImage(
                          CarmeraDailogController.to.selector,
                          target: 'profile_image');

                      //SUBJECT: 이미지 픽업
                      //TODO: 이미지 쓰넴일 생성 및 업로드.
                      final _file = PickedImageController.to.file;

                      if (_file != null) {
                        await GetStorage().write('profile_image', _file.path);
                        // final uploadURL = await StoreUserInfoController.to
                        //     .uploadFile(File(_file.path));
                      }
                    },
                  ),
                ),
              ],
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
                  errorText: null,
                  errorStyle: TextStyle(
                    color: Colors.transparent,
                    fontSize: 0,
                    height: 0,
                  ),
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                onEditingComplete: () => node.unfocus(),
                controller: ContentsController.to.titleController,
                validator: (value) {
                  return title(value);
                },
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
                  errorText: null,
                  errorStyle: TextStyle(
                    color: Colors.transparent,
                    fontSize: 0,
                    height: 0,
                  ),
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                onEditingComplete: () => node.unfocus(),
                controller: ContentsController.to.commentController,
                validator: (value) {
                  return comment(value);
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
          BoardSelectPART(onTap: () {}),
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
