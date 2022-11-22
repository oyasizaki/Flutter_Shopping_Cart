import 'dart:convert';

import 'package:cart/model/product_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var products = <ProductModel>[].obs;
  var isDataLoadingCompleted = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    fetchData();
  }

  Future<void> fetchData() async {
    var productjson =
        await rootBundle.loadString("assets/json/tutorial_product.json");

    var decodeData = jsonDecode(productjson);

    print(decodeData);

    products.value =
        List.from(decodeData).map((e) => ProductModel.fromMap(e)).toList();

    isDataLoadingCompleted.value = true;
  }

  void destroy() {
    products.value = [];
  }
}
