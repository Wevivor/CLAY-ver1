import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/controllers.dart';
import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/models/models.dart';
import 'package:clay/part/part_bs/part_bs.dart';
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
    Get.put(ContentListController());
    await ContentListController.to.fetchItems();
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
      Color(0xFFFFB3B3),
      Color(0xFFFFB3B3),
      Color(0xFFFFB3B3),
      Color(0xFFFFB3B3),
      Color(0xFFFFB3B3),
      Color(0xFFFFFFFF),
    ],
  );

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    final aTabbaHeight = 50.0;
    final aToolbarHeight = 56.0;

    // final profileHeight = aToolbarHeight + aTabbaHeight;
    final profileHeight = 252.0;

    // (MySize.safeHeight - (kBottomNavigationBarHeight)) / 2;
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            PreferredSize(
              preferredSize: Size.fromHeight(profileHeight),
              child: SliverAppBar(
                // title: Text(
                //   '홈베이킹 레시피',
                //   style: baseStyle.copyWith(color: Colors.black),
                // ),
                pinned: true,
                floating: true,
                snap: true,
                automaticallyImplyLeading: true,
                backgroundColor: Color(0xFFffffb3b3),
                leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                  ),
                ),
                expandedHeight: profileHeight,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  // title: Text('홈베이킹 레시피'),
                  title: null,
                  background: Container(
                    decoration: DecoHelper.roundDeco.copyWith(
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
                actions: [
                  Container(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        _showBS(context, BottomSheetShare());
                      },
                      child: Container(
                        height: 28,
                        width: 63,
                        decoration: DecoHelper.roundDeco.copyWith(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(width: 1, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                        child: Text('Share',
                            style: baseStyle.copyWith(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            )),
                      ),
                    ),
                  ),
                  widthSpace(18.0)
                ],
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
                            ? 'assets/icon/icon_grid_on.png'
                            : 'assets/icon/icon_grid_off.png'),
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
                            ? 'assets/icon/icon_list_on.png'
                            : 'assets/icon/icon_list_off.png'),
                    widthSpace(20.0),
                  ],
                ),
                // heightSpace(16.0),
              ],
            )),
            SliverToBoxAdapter(
              child: IndexedStack(index: listType, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: BoardPintestListPART(),
                ),
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

  void _showBS(context, child) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext buildContext) {
          return WillPopScope(
            onWillPop: () {
              Future.delayed(
                  Duration(milliseconds: 200),
                  () => SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle.light.copyWith(
                          systemNavigationBarColor: Color(0xFFEEEEEE),
                          systemNavigationBarIconBrightness: Brightness.dark)));

              return Future.value(true);
            },
            child: Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                child: Wrap(
                  children: [child],
                ),
              ),
            ),
          );
        });
  }
}
