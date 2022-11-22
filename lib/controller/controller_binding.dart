import 'package:cart/cart%20controllers/product%20details/cart_controller.dart';
import 'package:cart/cart%20controllers/product%20details/fav_counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CartController());
    Get.put(FavCounterController());
  }
}
