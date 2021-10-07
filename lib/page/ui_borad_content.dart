import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/models/models.dart';
import 'package:clay/part/part_home/part_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';

// ignore: must_be_immutable
class BoardContentUI extends StatefulWidget {
  final board;
  BoardContentUI({required this.board});

  @override
  _BoardContentUIState createState() => _BoardContentUIState();
}

class _BoardContentUIState extends State<BoardContentUI>
    with AppbarHelper, SingleTickerProviderStateMixin {
  int listType = 0;
  @override
  void initState() {
    super.initState();

    initFetch();
  }

  Future<void> initFetch() async {
    // Get.put(FollowingController(client: http.Client()));
    // Get.put(FollowerController(client: http.Client()));
    // FollowerController.to.cache = [];
    // FollowingController.to.cache = [];
    // await FollowingController.to.fetchItems(term: widget.profile.uid);
    // await FollowerController.to.fetchItems(term: widget.profile.uid);
  }

  @override
  void dispose() {
    super.dispose();
  }

  final LinearGradient gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    tileMode: TileMode.clamp,
    // stops: [1.0, 1.0, 1.0, 1.0, 0.0],
    colors: [
      Color(0xFFFC5E20),
      Color(0xFFFC5E20),
      Color(0xFFFC5E20),
      Color(0xFFFC5E20),
      Color(0xFFFC5E20),
      Color(0xFFFFFFFF),
    ],
  );

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    final aTabbaHeight = 50.0;
    final aToolbarHeight = 56.0;

    // final profileHeight = aToolbarHeight + aTabbaHeight;
    final profileHeight = 202.0;

    // (MySize.safeHeight - (kBottomNavigationBarHeight)) / 2;
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              // title: Text(
              //   '홈베이킹 레시피',
              //   style: baseStyle.copyWith(color: Colors.black),
              // ),
              pinned: true,
              floating: true,
              snap: true,
              automaticallyImplyLeading: false,
              leading: null,
              expandedHeight: profileHeight,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                title: null,
                background: Container(
                  decoration: DecoHelper.roundGrDeco.copyWith(
                    gradient: gradient,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    border: Border(),
                  ),
                  height: profileHeight,
                  padding: EdgeInsets.only(
                    top: kToolbarHeight,
                  ),
                  alignment: Alignment.center,
                  child: ContentHeaderPART(),
                ),
              ),
            ),
            SliverToBoxAdapter(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ImageButton(
                        height: 16.0,
                        width: 16.0,
                        onTap: () {
                          setState(() {
                            if (listType != 0) listType = 0;
                          });
                          // Get.toNamed('/search');
                        },
                        holder: listType == 0
                            ? 'assets/icon/grid_on.png'
                            : 'assets/icon/grid_off.png'),
                    widthSpace(10.0),
                    ImageButton(
                        height: 16.0,
                        width: 16.0,
                        onTap: () {
                          setState(() {
                            if (listType != 1) listType = 1;
                          });
                        },
                        holder: listType == 1
                            ? 'assets/icon/list_on.png'
                            : 'assets/icon/list_off.png'),
                    widthSpace(20.0),
                  ],
                ),
                heightSpace(16.0),
              ],
            )),
            SliverToBoxAdapter(
              child: IndexedStack(index: listType, children: [
                ContentPintestPART(),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ContentListPART(),
                ),
              ]),
            ),
          ],
        ));

    ///Tab 바
  }
}
