import 'dart:io';

import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/utils/utils.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:clay/models/models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PostSUB extends StatefulWidget {
  // final PostInfo? item;
  final Contents item;
  final parentController;
  PostSUB({required this.item, required this.parentController});
  @override
  _PostSUBState createState() => _PostSUBState();
}

class _PostSUBState extends State<PostSUB> with AppbarHelper, BSValidator {
  final _contentsController = Get.put(
    ContentsController(),
  );
  late int _listType = 2;
  @override
  void initState() {
    super.initState();
    if (widget.item.info.contentsType == 'link')
      _listType = 0;
    else if (widget.item.info.contentsType == 'photo') _listType = 1;

    _contentsController.contentsItem = widget.item;
    _contentsController.commentController.text =
        widget.item.info.contentsComment ?? '';
    _contentsController.titleController.text =
        widget.item.info.contentsTitle ?? '';
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    double topPadding = MediaQuery.of(context).padding.top + 0.0;
    //TODO 컨텐트 타입.
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
        actions: [
          Container(
            alignment: Alignment.center,
            // color: Colors.red,
            child: InkWell(
              onTap: () async {
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
                    final _comment =
                        ContentsController.to.commentController.text;

                    if (comment(_comment) != null || _comment.isEmpty) {
                      AppHelper.showMessage(messages['comment'] ?? '');
                      return;
                    }
                    _info = widget.item.info.copyWith(
                      contentsTitle: _title,
                      contentsComment: _comment,
                    );

                    break;

                  case 2:
                    _info = widget.item.info.copyWith(
                      contentsTitle: _title,
                    );

                    break;
                }

                //SUBJECT: 컨텐츠
                //TODO: 컨텐츠 수정하기

                await _contentsController.actionUpdateInfo(
                  id: widget.item.contentsId,
                  info: _info.toDto(),
                );
                widget.parentController
                    .actionUpdateItem(widget.item.copyWith(info: _info));

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
      body: _listType == 0
          ? appLink(context)
          : _listType == 1
              ? photo(context)
              : vwMemo(context),
    );
  }

  Widget vwMemo(BuildContext context) {
    // Get.put(ContentCtgListController());
    final node = FocusScope.of(context);

    return Column(
      children: [
        vwTitle('Title'),
        heightSpace(2.0),
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
                hintText: '스타트업 코딩 페스티벌',
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
              controller: _contentsController.titleController,
              validator: (value) {
                return postTitle(value);
              },
            ),
          ),
        ),
        heightSpace(62.0),
        Container(
          padding: EdgeInsets.only(left: 25, right: 25),
          height: 189,
          child: Text(
            widget.item.info.contentsDescription ?? '',
            style: baseStyle.copyWith(
              color: Color(0xFF707070),
            ),
          ),
        ),
      ],
    );
  }

  Widget photo(BuildContext context) {
    // Get.put(PostController());
    final node = FocusScope.of(context);

    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        vwTitle('Title'),
        heightSpace(2.0),
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
                hintText: '베이킹 완성작',
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
              controller: _contentsController.titleController,
              validator: (value) {
                return postTitle(value);
              },
            ),
          ),
        ),
        heightSpace(10.0),
        vwTitle('Comment'),
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
                hintText: '코멘트를 입력하세요.',
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
              controller: _contentsController.commentController,
              validator: (value) {
                return comment(value);
              },
            ),
          ),
        ),
        heightSpace(13.0),
        Expanded(
          child: Container(
            alignment: Alignment.topCenter,
            child: Container(
              height: 330,
              width: 330,
              decoration: DecoHelper.roundDeco.copyWith(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.item.info.contentsImages ?? '')),
                // ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget appLink(BuildContext context) {
    final node = FocusScope.of(context);

    return Column(
      children: [
        vwTitle('Title'),
        heightSpace(2.0),
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
                hintText: '스타트업 코딩 페스티벌 ',
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
                return postTitle(value);
              },
            ),
          ),
        ),
        heightSpace(10.0),
        vwTitle('Comment'),
        heightSpace(2.0),
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
                hintText: '코딩 페스티벌 참여 신청',
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
        heightSpace(15.0),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ImageWidget(
                height: 13.5,
                width: 14.06,
                holder: Const.assets + 'icon/icon_share.png',
              ),
              Text(
                widget.item.info.contentsUrl ?? '',
                style: baseStyle.copyWith(
                  color: Color(0xFF707070),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
              widthSpace(14.0),
            ],
          ),
        ),
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
