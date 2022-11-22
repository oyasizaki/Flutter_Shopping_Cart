import 'package:badges/badges.dart';
import 'package:cart/cart%20controllers/product%20details/cart_controller.dart';
import 'package:cart/cart%20controllers/product%20details/fav_counter_controller.dart';
import 'package:cart/model/product_model.dart';
import 'package:cart/product%20details/cart%20list/cart_list.dart';
import 'package:cart/product%20details/component/product_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProductDetailPage extends StatelessWidget {
  ProductDetailPage({super.key, required this.product});

  final ProductModel product;
  FavCounterController favCounterController = Get.find();

  CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    cartController.initializeQuantity(); // to reset the add to cart counter

    //Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(
          int.parse(product.color),
        ),
        appBar: buildAppBar(),
        body: PrductDetailsBody(
          product: product,
        ));
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(
        int.parse(product.color),
      ),
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: SvgPicture.asset(
          "assets/svg/back.svg",
          color: Colors.white,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(
            top: 6,
            left: 8.0,
            right: 40.0,
          ),
          child: Badge(
            badgeContent: Obx(
              () => Text(
                favCounterController.numOfItems.value.toString(),
              ),
            ),
            // badgeColor: Colors.blue,
            child: SvgPicture.asset(
              "assets/svg/heart.svg",
              width: 24,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(() => CartList());
          },
          child: Padding(
            padding: EdgeInsets.only(
              top: 6,
              left: 8.0,
              right: 16.0,
            ),
            child: Badge(
                badgeContent:
                    Obx(() => Text(cartController.totalQty.value.toString())),
                child: SvgPicture.asset(
                  "assets/svg/cart.svg",
                )),
          ),
        ),
      ],
    );
  }
}
