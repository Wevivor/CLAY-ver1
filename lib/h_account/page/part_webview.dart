import 'package:clay/c_globals/helper/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';

class WebviewPART extends StatefulWidget {
  final String url;
  InAppWebViewController? controller;

  WebviewPART(
    this.url,
  );

  @override
  _WebviewPARTState createState() => _WebviewPARTState();
}

class _WebviewPARTState extends State<WebviewPART> with AppbarHelper {
  late InAppWebViewController _webViewController;
  // late GlobalKey webViewKey;
  double progress = 0;
  @override
  void initState() {
    super.initState();
    // webViewKey = GlobalKey();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return Container();

    return Stack(
      children: [
        InAppWebView(
          // key: webViewKey,
          // contextMenu: contextMenu,
          initialUrlRequest: URLRequest(url: Uri.parse(widget.url)),
          // initialFile: "assets/index.html",
          // initialUserScripts: UnmodifiableListView<UserScript>([]),
          // initialOptions: options,
          onWebViewCreated: (controller) {
            _webViewController = controller;
          },
          onLoadStart: (controller, url) {},
          androidOnPermissionRequest: (controller, origin, resources) async {
            return PermissionRequestResponse(
                resources: resources,
                action: PermissionRequestResponseAction.GRANT);
          },
          shouldOverrideUrlLoading: (controller, navigationAction) async {
            var uri = navigationAction.request.url!;

            if (![
              "http",
              "https",
              "file",
              "chrome",
              "data",
              "javascript",
              "about"
            ].contains(uri.scheme)) {
              AppHelper.launchURL(widget.url);
              if (await canLaunch(widget.url)) {
                // Launch the App
                await launch(
                  widget.url,
                );
                // and cancel the request
                return NavigationActionPolicy.CANCEL;
              }
            }

            return NavigationActionPolicy.ALLOW;
          },
          onLoadStop: (controller, url) async {},
          onProgressChanged: (controller, progress) {},
          onUpdateVisitedHistory: (controller, url, androidIsReload) {},
          onConsoleMessage: (controller, consoleMessage) {
            print(consoleMessage);
          },
        ),
        progress < 1.0 ? LinearProgressIndicator(value: progress) : Container(),
      ],
    );
  }
}
