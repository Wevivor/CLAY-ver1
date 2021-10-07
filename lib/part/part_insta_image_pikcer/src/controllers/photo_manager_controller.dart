import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:http/http.dart' as http;
import 'package:photo_manager/photo_manager.dart';

class PhotoManagerController extends GetxController {
  static String path = '/api/characters/';
  bool hasMore = false;
  int _pageSize = 10;

  late List<AssetEntity> photos;
  late List<AssetPathEntity> albums;

  PhotoManagerController({int pagsSize = 60}) {
    _pageSize = pagsSize;
    photos = [];
    albums = [];
  }
  Future<void> init() async {
    var result = await PhotoManager.requestPermission();
    if (result) {
      // success
      //load the album list
      await fetchItems(nextId: 0);
      // print(photos);
    } else {
      PhotoManager.openSetting();
      // fail
      /// if result is fail, you can call `PhotoManager.openSetting();`  to open android/ios applicaton's setting to get permission
    }
  }

  static PhotoManagerController get to => Get.find();

  fetchItems({
    int? nextId,
  }) async {
    nextId ??= 0;
    // loading = true;
    albums = await PhotoManager.getAssetPathList();
    if (albums.length <= 0) {
      return;
    }

    final newItems = await albums[0].getAssetListPaged(nextId, _pageSize);
    print('==========> ${newItems.length}');
    final isLastPage = newItems.length < _pageSize;

    if (isLastPage) {
      this.photos = [
        ...this.photos,
        ...newItems,
      ];
    } else {
      nextId += newItems.length;
      this.photos = [
        ...this.photos,
        ...newItems,
      ];
    }
    if (isLastPage)
      hasMore = false;
    else
      hasMore = true;
    // loading = false;

    update();
  }
}
