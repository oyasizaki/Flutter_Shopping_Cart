import 'package:cart/cart%20controllers/product%20details/cart_controller.dart';
import 'package:cart/cart%20controllers/product%20details/fav_counter_controller.dart';
import 'package:cart/cart.dart';
import 'package:cart/controller/controller_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  CartController cartController = Get.put(CartController());
  FavCounterController favCounterController = Get.put(FavCounterController());

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: ControllerBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CartPage(),
    );
  }
}
