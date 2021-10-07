import 'package:clay/c_config/config.dart';
import 'package:clay/models/models.dart';

import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:http/http.dart' as http;

class PostWriteProductController extends GetxController {
  List<ProductInfo> cache = [];
  late dynamic _instance;
  late dynamic _storage;
  PostWriteProductController() {
    _instance = FirebaseFirestore.instance;
    _storage = FirebaseStorage.instance;
  }

  static PostWriteProductController get to => Get.find();

  void add(ProductInfo product) {
    // if (!contains(product))
    cache.add(product);
  }

  void remove(ProductInfo product) {
    if (contains(product)) cache.remove(product);
    update();
  }

  bool contains(ProductInfo product) {
    return cache.any((x) => x.id == product.id);
  }
  //------------------기본 CRUD 프로토콜

}
