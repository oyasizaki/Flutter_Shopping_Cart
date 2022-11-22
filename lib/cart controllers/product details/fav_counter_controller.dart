import 'package:cart/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavCounterController extends GetxController {
  var numOfItems = 0.obs;

  var favList = <ProductModel>[].obs;

  void addFavItemtoList(ProductModel product) {
    if (!favList.contains(product)) {
      favList.add(product);
      numOfItems++;
    } else {
      Get.snackbar(
        "Already added",
        "This Product is already in the list!!",
        backgroundColor: Color(int.parse(product.color)),
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.black,
        borderColor: Colors.indigo,
        borderRadius: 10,
        borderWidth: 2,
        barBlur: 0,
        messageText: Text(
          "This Product is already in the list!!",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      );
    }
  }
}
