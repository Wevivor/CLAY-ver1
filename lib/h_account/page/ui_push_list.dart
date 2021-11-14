import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_account/controllers/push_list_controller.dart';
import 'package:clay/h_account/models/push/push.dart';
import 'package:clay/h_account/page/wgt_item_push.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PushListUI extends StatefulWidget {
  // late PushMessage item;
  @override
  _PushListUIState createState() => _PushListUIState();
}

class _PushListUIState extends State<PushListUI>
    with AppbarHelper, SingleTickerProviderStateMixin {
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
            elevation: 0.0,
            leading: IconButton(
                icon: Icon(Icons.chevron_left),
                onPressed: () async {
                  Get.back();
                }),
            centerTitle: true,
            title: Text(
              '받은 알림',
              style: appBarStyle,
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
          child: heightSpace(10.0),
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
                        thickness: 0.3,
                        height: 0,
                      ),
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
