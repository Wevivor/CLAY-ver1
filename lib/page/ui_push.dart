import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:clay/models/models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PushUI extends StatelessWidget with AppbarHelper {
  late PushMessage item;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    double topPadding = MediaQuery.of(context).padding.top + 0.0;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0.0,
              leading: null,
              centerTitle: false,
              title: Text(
                '기록',
                style: appBarStyle,
              ),
            )),
        backgroundColor: Colors.white,
        body:
            CustomScrollView(scrollDirection: Axis.vertical, slivers: <Widget>[
          SliverToBoxAdapter(
            child: heightSpace(10.0),
          ),
          GetBuilder<PushController>(
            builder: (_) => HanListView(
                controller: PushController.to,
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
      ),
    );
  }
}