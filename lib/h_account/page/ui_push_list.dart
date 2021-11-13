import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/h_account/controllers/push_list_controller.dart';
import 'package:clay/h_account/models/push/push.dart';
import 'package:clay/h_push/controllers/push_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PushListUI extends StatefulWidget {
  // late PushMessage item;
  @override
  _PushListUIState createState() => _PushListUIState();
}

class _PushListUIState extends State<PushListUI>
    with AppbarHelper, SingleTickerProviderStateMixin {
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
                PushMessage item = cache[idx];

                // if (idx % 2 == 0) {
                return Container(
                  margin: EdgeInsets.only(left: 14, right: 14),
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: HanListTile(
                    padding: EdgeInsets.all(0),
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageRoundWidget(
                          imgUrl: item.imageUrl,
                        ),

                        //SUBJECT : 푸시메시지, 시간계산.
                        //TODO : 시간 계산
                        Text(
                          // '1시간전',
                          AppHelper.dateDiff(item.dtCreated),
                          // style: deadlineStyle.copyWith(
                          // color: Color(0xFF27ae60))
                        ),
                      ],
                    ),
                    title: Container(
                      constraints: BoxConstraints(
                          maxWidth: MySize.safeWidth - 14 * 2 - 100 - 10),
                      child: Text(
                        item.title ?? '',
                      ),
                    ),
                  ),
                );
              }),
        ),
      ]),
    );
  }
}
