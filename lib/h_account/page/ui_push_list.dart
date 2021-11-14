import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_account/controllers/push_list_controller.dart';
import 'package:clay/h_account/models/push/push.dart';
import 'package:clay/h_account/page/wgt_item_push.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

final pushTextStyle = TextStyle(
    fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
    fontSize: 13,
    color: Color(0xFF707070), // color 정보 없음.
    fontWeight: FontWeight.w400,
    height: 1.31, // 17px
    letterSpacing: Get.locale?.languageCode == 'ko' ? -0.65 : 0 // -5%, null
    );
final classTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 13,
  color: Color(0xFF353535), // color 정보 없음.
  fontWeight: FontWeight.w700,
  height: 1.31, // 17px
  letterSpacing: -0.65, // -5%,
);
final timeTextStyle = TextStyle(
  fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
  fontSize: 11,
  color: Color(0xFFc7c7c7),
  fontWeight: FontWeight.w400,
  height: Get.locale?.languageCode == 'ko' ? 1.17 : 1.37, // 12.89px, 15.03px
  letterSpacing: -0.55, // -5%
);

class PushListUI extends StatefulWidget with AppbarHelper {
  // late PushMessage item;
  @override
  _PushListUIState createState() => _PushListUIState();
}

class _PushListUIState extends State<PushListUI>
    with AppbarHelper, SingleTickerProviderStateMixin {
  final pushTextStyle = TextStyle(
      fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
      fontSize: 13,
      color: Color(0xFF707070), // color 정보 없음.
      fontWeight: FontWeight.w400,
      height: 1.31, // 17px
      letterSpacing: Get.locale?.languageCode == 'ko' ? -0.65 : 0 // -5%, null
      );
  final classTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 13,
    color: Color(0xFF353535), // color 정보 없음.
    fontWeight: FontWeight.w700,
    height: 1.31, // 17px
    letterSpacing: -0.65, // -5%,
  );
  final timeTextStyle = TextStyle(
    fontFamily: Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
    fontSize: 11,
    color: Color(0xFFc7c7c7),
    fontWeight: FontWeight.w400,
    height: Get.locale?.languageCode == 'ko' ? 1.17 : 1.37, // 12.89px, 15.03px
    letterSpacing: -0.55, // -5%
  );

  bool _isDelShow = false;
  @override
  void initState() {
    super.initState();
    initFetch();
  }

  final listController = Get.put(PushListController());
  Future<void> initFetch() async {
    listController.cache.clear();
    await listController.fetchItems();
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
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: AppBar(
            automaticallyImplyLeading: true,
            elevation: 4.0,
            shadowColor: Color.fromRGBO(0, 0, 0, 0.2),
            leading: IconButton(
                icon: Icon(Icons.chevron_left),
                onPressed: () async {
                  Get.back();
                }),
            centerTitle: true,
            title: Text(
              'account.appbar.title.notice'.tr, // 받은 알림 (Notifications)
              style: appBarStyle.copyWith(
                  fontFamily:
                      Get.locale?.languageCode == 'ko' ? 'Roboto' : 'Avenir',
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  height: Get.locale?.languageCode == 'ko'
                      ? 1.17
                      : 1.37), // 21.09px, 24.59px
            ),
            actions: [
              ImageButton(
                onTap: () => setState(() {
                  _isDelShow = !_isDelShow;
                }),
                holder: Const.assets + 'icon/icon_trashcan.png',
              ),
              widthSpace(17.0),
            ],
          )),
      backgroundColor: Colors.white,
      body: CustomScrollView(scrollDirection: Axis.vertical, slivers: <Widget>[
        SliverToBoxAdapter(
          child: heightSpace(0.0),
        ),
        GetBuilder<PushListController>(
          builder: (_) => HanListView(
              controller: PushListController.to,
              itemBuilder: (context, idx) {
                // final controller = PushController.to;
                final cache = _.cache;

                Push _item = cache[idx];
                final _message = _item.message;

                return Container(
                  // color: ,
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      PushItemWidget(
                        onTap: () => _actionTap(_item),
                        kind: _item.kind,
                        // iconUrl: 'icon/medal.png',
                        pushtext: _message?.title,
                        badage: _item.message?.badge,
                        // classtext: '홈베이킹',
                        subTitle: _message?.content,
                        timetext: AppHelper.dateDiff(_message?.registerDate),
                        isDel: _isDelShow,
                        onDel: () => PushListController.to
                            .actionDelete(id: _item.id ?? ''),
                      ),
                      Divider(
                        height: 0,
                        thickness: 0.3,
                        color: Color(0xFFDEDEDE),
                      )
                    ],
                  ),
                );
              }),
        ),
      ]),
    );
  }

  void _actionTap(Push item) {
    final kind = item.kind;
    if ('remind' == kind) Get.toNamed('/remind_list');
    if ('count_content' == kind)
      Get.offAllNamed('/main_menu');
    else if ('best_board' == kind) {
      Get.offAllNamed('/main_menu');
    } else if ('week_start' == kind) {
      Get.offAllNamed('/main_menu');
    }
  }
}
