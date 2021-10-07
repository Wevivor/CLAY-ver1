import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:http/http.dart' as http;
import 'package:photo_manager/photo_manager.dart';

/// A media type.
enum MediaType {
  image,
  video,
}

String _mediaTypeToJson(MediaType value) {
  switch (value) {
    case MediaType.video:
      return 'video';
    default:
      return 'image';
  }
}

MediaType _jsonToMediaType(String value) {
  switch (value) {
    case 'video':
      return MediaType.video;
    default:
      return MediaType.image;
  }
}

class PhotoSelectionController extends GetxController {
  static String path = '/api/characters/';

  List<AssetEntity> selectedMedias = [];
  final List<MediaType> mediaTypes;
  final int maxItems;

  PhotoSelectionController({
    this.maxItems = 1,
    this.mediaTypes = const <MediaType>[
      MediaType.image,
      MediaType.video,
    ],
  });
  void add(AssetEntity media) {
    if (selectedMedias.length < maxItems) {
      selectedMedias.add(media);
      update();
    }
  }

  void remove(AssetEntity media) {
    selectedMedias.removeWhere((x) => x.id == media.id);
    update();
  }

  AssetEntity? getSelected() {
    if (selectedMedias.length > 0) {
      return selectedMedias[0];
    }
    return null;
  }

  void toggle(AssetEntity media) {
    if (contains(media)) {
      remove(media);
    } else {
      if (selectedMedias.length > 0) selectedMedias.clear();
      add(media);
    }
  }

  bool contains(AssetEntity media) {
    return selectedMedias.any((x) => x.id == media.id);
  }

  static PhotoSelectionController get to => Get.find();
}
