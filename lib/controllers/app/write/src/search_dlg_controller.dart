import 'package:clay/models/models.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchDlgController extends GetxController {
  final TextEditingController productController = TextEditingController();
  final TextEditingController blandController = TextEditingController();
  final TextEditingController directController = TextEditingController();

  late HanUserInfo _brand;
  late ProductInfo _product;
  HanUserInfo get brand => _brand;
  ProductInfo get product => _product;
  set supplyer(HanUserInfo brand) => _brand = brand;
  set product(ProductInfo product) => _product = product;

  bool isLoading = false;
  static SearchDlgController get to => Get.find();
  void init() {
    productController.clear();
    blandController.clear();
    directController.clear();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    productController.dispose();
    blandController.dispose();
    directController.dispose();

    super.onClose();
  }
}
