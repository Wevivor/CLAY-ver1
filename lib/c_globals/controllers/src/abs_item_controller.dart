import 'package:get/get.dart';

abstract class AbsItemController extends GetxController {
  late dynamic _item;
  late bool loading;
  AbsItemController() {
    _init();
  }

  void _init() {
    _item = null;
    loading = false;
  }

  dynamic get item => _item;
  set item(dynamic value) => _item = item;

  Future<dynamic> actionRead(String id);

  fetchItem({
    String? id,
  }) async {
    id ??= '';
    loading = true;
    final newItems = await actionRead(id);
    _item = newItems;
    loading = false;
    update();
  }
}
