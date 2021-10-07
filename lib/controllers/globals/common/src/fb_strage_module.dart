import 'dart:io';

import 'package:clay/c_globals/helper/helpers.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FbStrage {
  Future<String?> uploadFile({
    required final instance,
    required path,
    required File file,
  }) async {
    try {
      String basename = file.path.split('/').last;
      // FirebaseStorage storage = FirebaseStorage.instance;

      Reference referenec = instance.ref().child(path);
      UploadTask uploadTask = referenec.putFile(file);
      TaskSnapshot storageTaskSnapshot;

      uploadTask.then((value) async {
        storageTaskSnapshot = value;
        var downloadUrl = await storageTaskSnapshot.ref.getDownloadURL();
        // item = item?.copyWith.userProfile(photoURL: downloadUrl);
        // update();
        return downloadUrl;
      }).catchError((err) {
        AppHelper.showMessage(err.toString());
      });
    } catch (err) {
      print(err);
    }
  }
}
