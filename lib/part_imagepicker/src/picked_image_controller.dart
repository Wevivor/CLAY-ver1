import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

/*
카메라/앨법을 선택 이미지 픽업을 위한 클래스 
*/
class PickedImageController extends GetxController {
  PickedFile? _file;
  String _imageUrl = '';
  static PickedImageController get to => Get.find();

  PickedImageController() {
    _init();
  }
  _init() {
    _file = null;
    _imageUrl = '';
  }

  PickedFile? get file => _file;
  String get imageUrl => _imageUrl;

  void setUrl(url) {
    this._imageUrl = url;
    update();
  }

  void setPickedFile(PickedFile file) {
    this._file = file;
    update();
  }
}
