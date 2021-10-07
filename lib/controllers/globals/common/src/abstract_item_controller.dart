import 'package:get/get.dart';

abstract class AbstractItemController extends GetxController {
  late dynamic _item;
  late bool loading;
  AbstractItemController() {
    _init();
  }

  void _init() {
    _item = null;
    loading = false;
  }

  dynamic get item => _item;
  set item(dynamic value) => _item =item;

  Future<dynamic> read(String id);

  fetchItem({
    String? id,
  }) async {
    id ??= '';
    loading = true;
    final newItems = await read(id);
    _item = newItems;
    loading = false;
    update();
  }
}
