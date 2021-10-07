import 'package:clay/c_config/config.dart';
import 'package:clay/c_config/libarays.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:clay/c_globals/widgets/widgets.dart';
import 'package:clay/controllers/globals/globals.dart';
import 'package:clay/models/models.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SearchAppDelegate<T> extends SearchDelegate<String> {
  // List<FindWord> data = [];

  SearchAppDelegate(String label)
      : super(
          searchFieldLabel: label,
        ) {
    SearchKeyWordListController.to
        .actionRead(AuthController.to.getUser?.uid ?? '');
  }
  Color primaryColor = Color(0xff673BB7);
  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme.copyWith(
      indicatorColor: Colors.red,
      inputDecorationTheme: InputDecorationTheme(
        // labelStyle:,
        focusColor: Colors.red,
        border: InputBorder.none,
        contentPadding:
            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
      ),
      appBarTheme: theme.appBarTheme.copyWith(titleSpacing: 0.0),
      textTheme: theme.textTheme.copyWith(
        headline6: TextStyle(
            decoration: TextDecoration.none,
            fontWeight: FontWeight.normal,
            decorationThickness: 0.000001,
            color: primaryColor), // query Color
      ),
    );
  }

  @override
  Widget buildLeading(BuildContext context) => AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () async {
            FindController.to.cache = [];
            await FindController.to.fetchItems();
            close(context, '');
          }));

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: () => query = ''),
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    ///API로 찾는 추천어를 가져옴..
    if (query.isNotEmpty) {
      final keyword = SearchKeyword(
        word: query,
        dtCreated: DateTime.now(),
      );
      SearchKeyWordListController.to.insertNode(keyword);
      Future.microtask(() => close(context, query));
      return Container();
      // Get.back();
      // return buildSuggestions(context);
      // return GetBuilder<FindController>(
      //   init: FindController(client: http.Client()),
      //   builder: (_) => vwApiResult(context),
      // );
    } else
      return buildSuggestions(context);
  }

  Widget vwApiResult(BuildContext context) {
    final controller = FindController.to;
    final cache = controller.cache;
    final loading = controller.loading;
    if (cache.length == 0) {
      if (loading) {
        return Container(
          // color: Colors.red,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
      if (!loading) {
        return Center(
          child: Text('아이템이 없습니다'),
        );
      }
    }
    return Container(
      height: MediaQuery.of(context).size.height,
      child: HanListView(
        isSliver: false,
        direction: Axis.vertical,
        controller: FindController.to,
        itemBuilder: (context, idx) {
          final cache = controller.cache;
          final hasMore = controller.hasMore;
          final loading = controller.loading;

          if (idx < cache.length) {
            return ListTile(
                leading: Icon(Icons.search),
                title: Text(cache[idx].name),
                subtitle: Text(Const.df.format(cache[idx].dtCreated)),
                trailing: SizedBox(
                  width: 36,
                  child: Icon(MdiIcons.arrowTopRight),
                ),
                onTap: () {
                  close(context, cache[idx].name);
                });
          }
          if (!loading && hasMore) {
            Future.microtask(() async {
              await controller.fetchItems(nextId: idx);
            });
          }
          if (hasMore) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SizedBox.shrink();
          }
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final data = SearchKeyWordListController.to.backup;
    if (query.isNotEmpty) {
      final items = data.where((e) {
        bool first = e.word?.contains(query) ?? false;
        bool second = e.word?.startsWith(query) ?? false;

        return (first && second);
      }).toList();

      SearchKeyWordListController.to.cache = [...items];
      SearchKeyWordListController.to.update();
    } else {
      SearchKeyWordListController.to.cache = [
        ...SearchKeyWordListController.to.backup
      ];
      SearchKeyWordListController.to.update();

      // listToShow = data;
    }
    return GetBuilder<SearchKeyWordListController>(builder: (_) {
      return ListView.builder(
        itemCount: _.cache.length,
        itemBuilder: (context, i) {
          ///TODO 아이콘 입력.

          return ListTile(
              leading: Icon(Icons.history),
              title: Text(_.cache[i].word ?? ''),
              subtitle: Text(Const.df.format(_.cache[i].dtCreated)),
              trailing: SizedBox(
                width: 36,
                child: IconButton(
                  icon: Icon(MdiIcons.closeBox),
                  onPressed: () async {
                    await SearchKeyWordListController.to
                        .removeNode(_.cache[i].word ?? '');
                    // buildSuggestions(context);
                    AppHelper.showMessage('검색어가 삭제 되었습니다');
                  },
                ),
              ),
              onTap: () {
                // query = _.cache[i].word ?? '';
                close(context, _.cache[i].word ?? '');
              });
        },
      );
    });
  }
}
