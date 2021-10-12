import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PostSUB extends StatelessWidget with AppbarHelper {
  // final PostInfo? item;
  final item;
  PostSUB({this.item});
  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    double topPadding = MediaQuery.of(context).padding.top + 0.0;
    //TODO 컨텐트 타입.
    final listType = item;
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
      ),
      body: IndexedStack(index: listType, children: [
        appLink(context),
        photo(context),
        memo(context),
      ]),
    );
  }

  Widget memo(BuildContext context) {
    Get.put(ContentCtgListController());
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
                hintText: '스타트업 코딩 페스티벌 |',
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
        heightSpace(62.0),
        Container(
          padding: EdgeInsets.only(left: 25, right: 25),
          height: 189,
          child: Text(
            '리테일 기업의 경쟁력을 강화하기 위해서는 온·오프라인을 융합하고 ‘고객경험’을 중시해야 한다. 《리테일 4.0》에서는 이를 실천하기 위한 10가지 법칙을 제시한다. 그리고 실제 이 법칙을 적용하고 있는 아마존, 디즈니랜드, HSBC, 시세이도, 파타고니아 등의 글로벌 기업 |',
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
                hintText: '베이킹 완성작 |',
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
        heightSpace(13.0),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageWidget(
                height: 320,
                width: 320,
                holder: Const.assets + 'images/smpl_list2.png',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget appLink(BuildContext context) {
    // Get.put(PostController());
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
                hintText: '|웹 링크 주소를 입력해 주세요.',
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
                hintText: '|웹 링크 주소를 입력해 주세요.',
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
                'www.instagram.com',
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
            child: buildWebview(context),
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

  Widget buildWebview(BuildContext context) {
    return WebView(
      initialUrl: 'https://www.instagram.com',
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
