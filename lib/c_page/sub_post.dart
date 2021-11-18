// 콘텐츠 상세보기 화면

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_account/controllers/remind_controller.dart';
import 'package:clay/h_account/controllers/remind_list_controller.dart';
import 'package:clay/h_board/controllers/board_list_controller.dart';
import 'package:clay/h_board/controllers/board_list_my_select_controller.dart';
import 'package:clay/h_board/part_bs/part_bs.dart';
import 'package:clay/h_content/controllers/content_all_list_controller.dart';
import 'package:clay/h_content/controllers/contents_controller.dart';
import 'package:clay/h_content/models/contents.dart';
import 'package:clay/h_content/part_bs/part_bs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprintf/sprintf.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:share/share.dart' as share;

class PostSUB extends StatefulWidget {
  // final PostInfo? item;
  final Contents item;
  final parentController;
  PostSUB({
    required this.item,
    required this.parentController,
  });
  @override
  _PostSUBState createState() => _PostSUBState();
}

class _PostSUBState extends State<PostSUB> with AppbarHelper, BSValidator {
  final _contentsController = Get.put(
    ContentsController(),
  );

  late bool isEdit;

  late int _listType = 2;
  @override
  void initState() {
    super.initState();
    isEdit = true;
    if (widget.item.info.contentsType == 'link')
      _listType = 0;
    else if (widget.item.info.contentsType == 'photo') _listType = 1;

    _contentsController.contentsItem = widget.item;
    _contentsController.commentController.text =
        widget.item.info.contentsComment ?? '';
    _contentsController.titleController.text =
        widget.item.info.contentsTitle ?? '';

    if (widget.item.info.contentsType == 'memo')
      _contentsController.memoController.text =
          widget.item.info.contentsDescription ?? '';
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    double topPadding = MediaQuery.of(context).padding.top + 0.0;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.chevron_left),
        ),
        centerTitle: true,
        title: _listType == 0
            ? Container(
                //color: Colors.red,
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 155,
                      child: Text(
                        widget.item.info.contentsTitle ?? '',
                        style: baseStyle.copyWith(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          height: 1.17, // 16.41px
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ), //제목
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          child: Text(
                            widget.item.info.contentsUrl ?? '',
                            textAlign: TextAlign.center,
                            style: baseStyle.copyWith(
                              fontFamily: 'Avenir',
                              color: Color(0xFF707070),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              height: 1.37, //13.66px
                              // decoration: TextDecoration.underline,
                              // decorationStyle: TextDecorationStyle.solid,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        //widthSpace(19.0),
                      ],
                      // ),
                    ),
                  ],
                ),
              )
            : SizedBox.shrink(),
        actions: [
          if (isEdit)
            ImageButton(
                height: 20.0,
                width: 20.0,
                onTap: () => _actionSubmit(context),
                holder: 'assets/icon/addboard_check.png'),
          if (!isEdit)
            ImageButton(
                height: 20.0,
                width: 20.0,
                onTap: () => setState(() => isEdit = true),
                holder: 'assets/icon/remind_pencil.png'),
          widthSpace(3.0),
          Container(
            width: 20,
            alignment: Alignment.center,
            child: ImageButton(
                onTap: () {
                  _showBS(context, vwBoardMenu(context, widget.item));
                },
                height: 10.0,
                width: 2.0,
                holder: Const.assets + 'icon/dot_vertical_black.png'),
          ),
          widthSpace(15.0),
        ],
      ),
      body: _listType == 0
          ? appLink(context)
          : _listType == 1
              ? photo(context)
              : vwMemo(context),
    );
  }

  Future<void> _actionSubmit(BuildContext context) async {
    FocusScope.of(context).unfocus();
    final _title = ContentsController.to.titleController.text;

    if (postTitle(_title) != null || _title.isEmpty) {
      AppHelper.showMessage(messages['post_title'] ?? '');
      return;
    }
    var _info;

    switch (_listType) {
      case 0:
      case 1:
        final _comment = ContentsController.to.commentController.text;

        if (comment(_comment) != null || _comment.isEmpty) {
          AppHelper.showMessage(messages['comment'] ?? '');
          return;
        }

        _info = widget.item.copyWith(
            info: widget.item.info.copyWith(
          contentsTitle: _title,
          contentsComment: _comment,
        ));

        break;

      case 2:
        final _memo = ContentsController.to.memoController.text;

        if (memo(_memo) != null || _memo.isEmpty) {
          AppHelper.showMessage(messages['_memo'] ?? '');
          return;
        }
        _info = widget.item.copyWith(
            info: widget.item.info.copyWith(
          contentsTitle: _title,
          contentsDescription: _memo,
        ));

        break;
    }

    //SUBJECT: 컨텐츠
    // 컨텐츠 수정하기
    await _contentsController.actionContentsUpdate(
      // id: widget.item.contentsId,
      _info.toDto(),
    );
    widget.parentController
        .actionUpdateItem(widget.item.copyWith(info: _info.info));

    Get.back();
  }

  // 메모
  Widget vwMemo(BuildContext context) {
    // Get.put(ContentCtgListController());
    final node = FocusScope.of(context);

    return Column(
      children: [
        vwTitle('com.bs.subtitle.title'.tr), //제목
        heightSpace(6.0),
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
                hintText: 'board.sub.memo.pholder.title'.tr, //스타트업 코딩 페스티벌
                hintStyle: baseStyle.copyWith(
                  fontFamily:
                      Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
                  fontSize: 14,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w400,
                  height: Get.locale?.languageCode == 'ko'
                      ? 1.17
                      : 1.37, // 16.41px, 19.12px
                  letterSpacing: -0.7, // -5%
                ),
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
              controller: _contentsController.titleController,
              validator: (value) {
                return postTitle(value);
              },
            ),
          ),
        ),
        heightSpace(20.0),
        Container(
          color: Color(0xffF9F9F9),
          height: 300,
          padding: EdgeInsets.only(left: 19.0, right: 19.0),
          child: TextFormField(
            maxLines: 15,
            onTap: () {},
            // style: accountEditTextStyle,
            decoration: kInputDecoration.copyWith(
              fillColor: Color(0xFFF6F6F6),
              hintText: 'board.bs.sub.pholder.memo'.tr,
              hintStyle: msgStyle,
              isDense: true,
              errorText: null,
              errorStyle: TextStyle(
                color: Colors.transparent,
                fontSize: 0,
                height: 0,
              ),
            ),
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.newline,
            onEditingComplete: () => node.unfocus(),
            controller: ContentsController.to.memoController,
            validator: (value) {
              return memo(value);
            },
          ),
        ),
      ],
    );
  }

  // 사진/비디오
  Widget photo(BuildContext context) {
    // Get.put(PostController());
    final node = FocusScope.of(context);

    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        vwTitle('com.bs.subtitle.title'.tr), //제목
        heightSpace(6.0),
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
                hintText: 'board.sub.photo.pholder.title'.tr, // 베이킹 완성작
                hintStyle: baseStyle.copyWith(
                  fontFamily:
                      Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
                  fontSize: 14,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w400,
                  height: Get.locale?.languageCode == 'ko'
                      ? 1.17
                      : 1.37, // 16.41px, 19.12px
                  letterSpacing: -0.7, // -5%
                ),
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
              controller: _contentsController.titleController,
              validator: (value) {
                return postTitle(value);
              },
            ),
          ),
        ),
        heightSpace(9.0),
        vwTitle('com.bs.subtitle.cmt'.tr), // 코멘트
        heightSpace(6.0),
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
                hintText: 'board.sub.photo.pholder.cmt'.tr, // 코멘트를 입력하세요.
                hintStyle: baseStyle.copyWith(
                  fontFamily:
                      Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
                  fontSize: 14,
                  color: Color(0xFF000000),
                  height: Get.locale?.languageCode == 'ko'
                      ? 1.17
                      : 1.37, // 16.41px, 19.12px
                  letterSpacing: -0.7, // -5%
                ),
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
              controller: _contentsController.commentController,
              validator: (value) {
                return comment(value);
              },
            ),
          ),
        ),
        heightSpace(20.0),
        Expanded(
          child: Container(
            alignment: Alignment.topCenter,
            child: Container(
              //margin: EdgeInsets.only(left: 15.0, right: 15.0),
              height: 330,
              width: 330,
              decoration: DecoHelper.roundDeco.copyWith(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.item.info.thumbnails ?? '')),
                // ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // 웹링크
  Widget appLinkTitle() {
    final node = FocusScope.of(context);
    return Container(
      child: Column(
        children: [
          heightSpace(6.0),
          Row(
            children: [
              vwTitle('com.bs.subtitle.cmt'.tr), // 코멘트
              Expanded(child: Container()),
              ImageButton(
                  height: 24.0,
                  width: 24.0,
                  onTap: () {
                    setState(() => isEdit = false);
                  },
                  holder: 'assets/icon/arror_up.png'),
              widthSpace(18.74),
            ],
          ),
          heightSpace(6.0),
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
                  hintText: 'board.sub.weblink.pholder.cmt'.tr, // 코딩 페스티벌 참여 신청
                  hintStyle: baseStyle.copyWith(
                    fontFamily:
                        Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
                    fontSize: 14,
                    color: Color(0xFF000000),
                    height: Get.locale?.languageCode == 'ko'
                        ? 1.17
                        : 1.37, // 16.41px, 19.12px
                    letterSpacing: -0.7, // -5%
                  ),
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
          heightSpace(15.0),
        ],
      ),
    );
  }

  Widget appLink(BuildContext context) {
    return Column(
      children: [
        if (isEdit) appLinkTitle(),
        Expanded(
          child: Container(
            child: buildWebview(context, widget.item.info.contentsUrl),
          ),
        )
      ],
    );
  }

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }

  Widget buildWebview(BuildContext context, initUrl) {
    return WebView(
      initialUrl: initUrl,
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
      // TODO(iskakaushik): Remove this when collection literals makes it to stable.
      // ignore: prefer_collection_literals
      javascriptChannels: <JavascriptChannel>[
        _toasterJavascriptChannel(context),
      ].toSet(),
      navigationDelegate: (NavigationRequest request) {
        if (request.url.startsWith('https://www.instagram.com')) {
          print('blocking navigation to $request}');
          return NavigationDecision.prevent;
        }
        print('allowing navigation to $request');
        return NavigationDecision.navigate;
      },
      onPageStarted: (String url) {
        print('Page started loading: $url');
      },
      onPageFinished: (String url) {
        print('Page finished loading: $url');
      },
      gestureNavigationEnabled: true,
    );
  }

  Widget vwTitle(final title) {
    return Container(
      padding: EdgeInsets.only(left: 18.0),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: baseStyle.copyWith(
          fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
          fontSize: 16,
          color: Color(0xFF353535),
          fontWeight: Get.locale?.languageCode == 'ko'
              ? FontWeight.w700
              : FontWeight.w800,
          height: Get.locale?.languageCode == 'ko'
              ? 1.17
              : 1.37, // 18.75px, 21.86px
        ),
      ),
    );
  }

  // 점메뉴 바텀 시트 (SN.B3 콘텐츠 상세보기)
  Widget vwBoardMenu(BuildContext context, Contents item) {
    final menuStyle = TextStyle(
      fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
      fontSize: 14,
      color: Color(0xFF000000),
      fontWeight:
          Get.locale?.languageCode == 'ko' ? FontWeight.w400 : FontWeight.w500,
      height:
          Get.locale?.languageCode == 'ko' ? 1.17 : 1.37, // 16.41px, 19.12px
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
            alignment: Alignment.bottomCenter,
            height: 15,
            child: Image.asset(Const.assets + 'images/rect_40.png')),
        heightSpace(20.0),
        HanListTile(
          padding: EdgeInsets.only(left: 20.0, bottom: 21.0),
          onTap: () => _actionBSFixed(context, item),
          leading: Container(
              padding: EdgeInsets.only(right: 6.0),
              child: Image.asset(Const.assets + 'icon/icon_pin_fix.png')),
          title: item.info.contentsFixed == true // 상단고정
              ? Text('com.bs.body.menu.pinOff'.tr, style: menuStyle)
              : Text('com.bs.body.menu.pinOn'.tr, style: menuStyle),
        ),
        HanListTile(
          padding: EdgeInsets.only(left: 20.0, bottom: 21.0),
          onTap: () => _actionBSShare(context, item),
          leading: Container(
              padding: EdgeInsets.only(right: 6.0),
              child: Image.asset(Const.assets + 'icon/icon_share.png')),
          title: Text('com.bs.body.menu.share'.tr, style: menuStyle), // 공유
        ),
        HanListTile(
          padding: EdgeInsets.only(left: 20.0, bottom: 21.0),
          onTap: () => _actionBSRemindAlarm(context, item),
          leading: Container(
              padding: EdgeInsets.only(right: 6.0),
              child: Image.asset(Const.assets + 'icon/ph_bell-ringing.png')),
          title: Text('contents.bs.body.menu.reminder'.tr,
              style: menuStyle), // 알람 설정
        ),
        HanListTile(
          padding: EdgeInsets.only(left: 20.0, bottom: 21.0),
          onTap: () => _actionBSBoardChange(context, item),
          leading: Container(
              padding: EdgeInsets.only(right: 6.0),
              child: Image.asset(Const.assets + 'icon/icon_boardchange.png')),
          title: Text('contents.bs.body.menu.moveBoard'.tr,
              style: menuStyle), // 보드 변경
        ),
        HanListTile(
          padding: EdgeInsets.only(left: 23.0, bottom: 21.0),
          onTap: () => _actionBSDelete(context, item),
          leading: Container(
              padding: EdgeInsets.only(right: 6.0),
              child: Image.asset(Const.assets + 'icon/icon_trashcan.png')),
          title: Text('com.bs.body.menu.delBoard'.tr, style: menuStyle), // 삭제
        ),
      ],
    );
  }

  Future<void> _actionBSFixed(BuildContext context, item) async {
    final _contentsCtl = Get.put(ContentsController());
    _contentsCtl.contentsItem = item;
    final _fixed = item.info.contentsFixed;
    await _contentsCtl.actionPin(fix: !_fixed!);
    Get.back();

    Future.microtask(() async {
      ContentAllListController.to.cache.clear();
      await ContentAllListController.to.fetchItems();
    });
  }

  Future<void> _actionBSShare(BuildContext context, item) async {
    Get.back();
    final _boardUrl = sprintf('%s/%s', [Const.clayBaseUrl, item.contentsId]);
    await share.Share.share(_boardUrl);
  }

  //SUBJECT : BS: 리마인드 알림 설정
  void _actionBSRemindAlarm(BuildContext context, item) {
    Get.back();
    Get.lazyPut(() => ContentsController());
    Get.lazyPut(() => RemindListController());
    Get.lazyPut(() => RemindController());
    RemindController.to.init();
    _showBS(
        context,
        BottomSheetCalendar(
            contents: item,
            onMenu: () {
              _showBS(context, vwBoardMenu(context, item));
            }));
  }

  //SUBJECT : BS: 보드 변경
  Future<void> _actionBSBoardChange(BuildContext context, item) async {
    Get.back();
    // Get.put(ContentListController());
    final _controller = Get.put(BoardListMySelectController());
    _controller.cache.clear();
    _controller.selected = -1;
    await _controller.fetchItems();
    _showBS(
        context,
        BottomSheetBoardChange(
          parentContext: context,
          onDone: () {
            Get.lazyPut(() => ContentAllListController());
            ContentAllListController.to.actionDelteItem(item.contentsId ?? '');
          },
          onMenu: () {
            _showBS(context, vwBoardMenu(context, item));
          },
          current: item,
        ));
  }

  //SUBJECT : BS: 컨테츠 삭제
  Future<void> _actionBSDelete(BuildContext context, item) async {
    Get.back();
    Get.lazyPut(() => ContentAllListController());
    var _responce = false;
    await DialogHelper.MessageDialog(
      context,
      (context) => DeleteDialog(
        title: 'contents.bs.dlg.question.delete'.tr, // 콘텐츠를  삭제하시겠어요?
        deleteTitle: 'com.btn.delete'.tr, // 삭제
        okTitle: 'com.btn.cancel'.tr, // 취소
        okTap: () {
          _responce = false;
        },
        deleteTap: () {
          _responce = true;
        },
      ),
    );
    if (_responce) {
      await ContentsController.to.actionDelete(item.info.contentsId);
      ContentAllListController.to.actionDelteItem(item.info.contentsId ?? '');
    }
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
            child: Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Wrap(
                children: [child],
              ),
            ),
          );
        });
  }
}
