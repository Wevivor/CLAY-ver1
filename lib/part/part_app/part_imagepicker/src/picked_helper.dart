import 'dart:io';

import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'camera_diallog_controller.dart';
import 'picked_image_controller.dart';
import 'package:flutter/services.dart' show rootBundle;

/*
카메라/앨법을 선택 이미지를 픽업하기 위한 Helper 클래스 
*/

class PickedHelper {
  static final String bucketPOS = '';

  static Future<PickedFile?> getPickImage(PICK_KIND kind) async {
    final _picker = ImagePicker();
    PickedFile? pickedFile;
    if (kind == PICK_KIND.CAMERA) {
      pickedFile = await _picker.getImage(source: ImageSource.camera);
    }
    if (kind == PICK_KIND.GALLERY) {
      pickedFile = await _picker.getImage(source: ImageSource.gallery);
    }

    print('========> ${pickedFile?.path}');
    return pickedFile;
  }

  // //카메라에 앨범에서 서 이미지를 피커함.
  static Future<void> pickedImage(PICK_KIND kind,
      {String target = 'profile_image'}) async {
    if (kind == PICK_KIND.NONE) return;
    final file = await PickedHelper.getPickImage(kind);

    // file.copy()
    if (file != null) {
      final Directory docDir = await getApplicationDocumentsDirectory();
      final String localPath = docDir.path;

      final _oldImage = await GetStorage().read('profile_image');
      if (_oldImage != null) {
        final oldFile = File(_oldImage);
        if (oldFile.existsSync()) await oldFile.delete();
      }

      final fileTgt =
          await File(file.path).copy('$localPath/${file.path.split('/').last}');

      PickedImageController.to.setPickedFile(PickedFile(fileTgt.path));
    }

    CarmeraDailogController.to.set(PICK_KIND.NONE);
  }
}
