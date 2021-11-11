import 'package:get/get_state_manager/get_state_manager.dart';
import 'el_common_module.dart';

abstract class AbsListController<T> extends GetxController {
  List<T> cache = [];
  dynamic item;

  bool loading = false;
  bool hasMore = true;
  int _pageSize = 10;
  // ListBaseController() {}
  AbsListController(int pageSize) {
    this._pageSize = pageSize;
    cache.clear();
  }
  int get pageSize => _pageSize;
  Future<List<dynamic>> getList(
    int offset,
    int limit, {
    String? searchTerm,
  });

  fetchItems({int? nextId, String? term}) async {
    nextId ??= 0;
    loading = true;
    try {
      final newItems = await getList(nextId, _pageSize, searchTerm: term);
      final isLastPage = newItems.length < _pageSize;

      print('isLastPage:${isLastPage}, ${newItems.length}');
      if (isLastPage) {
        this.cache = [
          ...this.cache,
          ...newItems,
        ];
      } else {
        nextId += newItems.length;
        this.cache = [
          ...this.cache,
          ...newItems,
        ];
      }
      if (isLastPage)
        hasMore = false;
      else
        hasMore = true;
    } on GenericHttpException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    } finally {
      loading = false;
      update();
    }
  }
}
