// ignore: must_be_immutable
import 'dart:io';

import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/controllers/controllers.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/h_account/controllers/han_userinfo_controller.dart';
import 'package:clay/h_board/controllers/board_controller.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_board/models/board_dtos.dart';
import 'package:clay/h_board/part_bs/src/part_board_select.dart';
import 'package:clay/h_board/part_bs/src/part_bs_new_board.dart';
import 'package:clay/h_content/controllers/contents_controller.dart';
import 'package:clay/h_content/models/content_dtos.dart';
import 'package:clay/part_imagepicker/part_imagepicker.dart';
import 'package:get/get.dart';

import 'helper_content_init_dto.dart';

class BottomSheetContentPhoto extends StatelessWidget
    with AppbarHelper, BSValidator, ContentInitDtoHelper {
  final onMenu;
  final parentContext;
  BottomSheetContentPhoto({
    this.onMenu,
    this.parentContext,
  });
  final dialogController = Get.lazyPut(() => CarmeraDailogController());

  final sheetTitle = baseStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.17, // line height : 16.41px
    color: Colors.black,
  );

  final msgStyle = baseStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.17, // line height : 16.41px
    letterSpacing: -0.7, // letter spacing : -5%
    color: Color(0xFF707070), // TODO : [SH] 피그마에 color 정보가 없음.
  );

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    Get.lazyPut(() => PickedImageController());
    return GetBuilder<LoadingController>(builder: (controller) {
      return Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                heightSpace(2.0),
                Container(
                    alignment: Alignment.bottomCenter,
                    height: 10,
                    child: Image.asset(Const.assets + 'images/rect_40.png')),
                vwBSAppBar(
                  onBack: () {
                    Get.back();
                    if (onMenu != null) onMenu();
                  },
                  title: 'board.bs.sub.title.photo'.tr, // 사진/비디오
                  actions: [
                    Container(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () async {
                          FocusScope.of(context).unfocus();
                          LoadingController.to.isLoading = true;
                          LoadingController.to.update();
                          final _title =
                              ContentsController.to.titleController.text;

                          if (photoTitle(_title) != null || _title.isEmpty) {
                            LoadingController.to.isLoading = false;
                            LoadingController.to.update();
                            AppHelper.showMessage(
                                messages['photo_title'] ?? '');

                            return;
                          }
                          final _comment =
                              ContentsController.to.commentController.text;

                          if (comment(_comment) != null || _comment.isEmpty) {
                            LoadingController.to.isLoading = false;
                            LoadingController.to.update();
                            AppHelper.showMessage(messages['comment'] ?? '');
                            return;
                          }

                          if (BoardListMySelectController.to.selected < 0) {
                            LoadingController.to.isLoading = false;
                            LoadingController.to.update();
                            AppHelper.showMessage(
                                messages['board_select'] ?? '');
                            return;
                          }

                          //SUBJECT: 이미지 픽업
                          //TODO: 이미지 쓰넴일 생성 및 업로드.

                          final _file = PickedImageController.to.file;
                          var _imgUrl = null;
                          var _thumbName = null;
                          if (_file != null) {
                            await GetStorage()
                                .write('profile_image', _file.path);

                            final imgURL = await ContentsController.to
                                .uploadImage(
                                    FirebaseStorage.instance, File(_file.path));

                            _imgUrl = imgURL['original'];
                            _thumbName = imgURL['375px'];
                          }

                          //SUBJECT: 컨텐츠
                          //TODO: 링크로 추가하기
                          final _boardInfo =
                              BoardListMySelectController.to.boardInfo;

                          final _controller = Get.put(ContentsController());

                          final _item = createInitDto(
                              title: _title,
                              imgURL: _imgUrl,
                              type: 'photo',
                              thumbnail: _thumbName);

                          await _controller.actionIns(_item);
                          LoadingController.to.isLoading = false;
                          LoadingController.to.update();
                          Get.back();
                        },
                        child: Text(
                          'com.btn.save'.tr,
                          style: baseStyle.copyWith(
                            fontSize: 14,
                            color: Color(0xff017BFE),
                            fontWeight: FontWeight.w400,
                            height: 1.17,
                          ), // line height : 16.41px
                        ),
                      ),
                    ),
                    widthSpace(20.0),
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
                        //imgHolder: Const.assets + 'icon/holder_photo.png',
                        imgHolder: Const.assets + 'images/avatar-1.jpg',
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
                    padding: const EdgeInsets.only(left: 12.0, right: 16.0),
                    child: TextFormField(
                      maxLines: 1,
                      onTap: () {},

                      // style: accountEditTextStyle,
                      decoration: kInputDecoration.copyWith(
                        fillColor: Color(0xFFF6F6F6),
                        hintText: 'board.bs.sub.pholder.photo'.tr,
                        hintStyle: msgStyle,
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
                vwTitle('com.bs.subtitle.cmt'.tr),
                heightSpace(10.0),
                Padding(
                  padding: EdgeInsets.only(left: 19.0, right: 19.0),
                  child: Container(
                    height: 38,
                    decoration: DecoHelper.roundDeco.copyWith(
                      color: Color(0xFFF6F6F6),
                    ),
                    padding: const EdgeInsets.only(left: 12.0, right: 16.0),
                    child: TextFormField(
                      maxLines: 1,
                      onTap: () {},

                      // style: accountEditTextStyle,
                      decoration: kInputDecoration.copyWith(
                        fillColor: Color(0xFFF6F6F6),
                        hintText: 'com.bs.pholder.cmt'.tr,
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
                    ),
                  ),
                ),
                heightSpace(16.0),
                vwTitle('com.bs.subtitle.boardChoice'.tr),
                heightSpace(10.0),
                // TODO : 섀도우 때문에 패딩 문제가 있음.
                GetBuilder<BoardListMySelectController>(builder: (controller) {
                  return Container(
                    height: 54 + 8 + 11 + 10,
                    child: BoardSelectPART(onTap: () {
                      Get.lazyPut(() => BoardController());
                      final _controller = BoardController.to;
                      final initBoard = _createInitBoard();
                      _controller.boardItem = initBoard.toDomain();
                      _controller.boardNameController.text = '';
                      Get.back();

                      _showBS(parentContext, BottomSheetNewBoard());
                    }),
                  );
                }),
                heightSpace(16.0),
              ],
            ),
          ),
          LoadingController.to.isLoading
              ? Center(
                  child: CircularProgressIndicator(
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.grey)),
                )
              : Container(),
        ],
      );
    });
  }

  void _showBS(context, child) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext buildContext) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              child: Wrap(
                children: [child],
              ),
            ),
          );
        }).then((value) {
      _showBSSecond(
          parentContext,
          BottomSheetContentPhoto(
            parentContext: parentContext,
            onMenu: this.onMenu,
          ));
    });
  }

  void _showBSSecond(context, child) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext buildContext) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              child: Wrap(
                children: [child],
              ),
            ),
          );
        });
  }

  ContentsDto _createInitPhoto(String title, String imgURL, String thumbName) {
    final _boardInfo = BoardListMySelectController.to.boardInfo;
    final _profile = HanUserInfoController.to.toProfile();
    final _info = ContentsInfoDto(
      //  contentsId: contentsId,
      contentsTitle: title,
      contentsUrl: '',
      contentsImages: imgURL,
      contentsDescription: '',
      contentsComment: '',
      contentsType: 'photo',
      thumbnails: thumbName,
      contentsUniqueLink: '',
      ContentsCreateDate: DateTime.now(),
      ContentsUpdateDate: DateTime.now(),
    );

    //SUBJECT 컨텐츠 타입 변경 필요
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
    return _item;
  }

  BoardDto _createInitBoard() {
    final _profile = HanUserInfoController.to.toProfile();
    final _info = BoardInfoDto(
      boardName: '',
      boardColor: 'FFfc5e20',
      boardBadge: '',
      shareCheck: 0,
      isFixed: false,
      shareCount: 0,
      registerDate: DateTime.now(),
    );
    final _item = BoardDto(
      boardCreator: _profile.toDto(),
      info: _info,
      shareCheck: 0,
      contentsCount: 0,
      registerDate: DateTime.now(),
    );

    return _item;
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
