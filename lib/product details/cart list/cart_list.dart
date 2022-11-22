import 'package:cart/cart%20controllers/product%20details/cart_controller.dart';
import 'package:cart/product%20details/cart%20list/component/cart_list_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CartList extends StatelessWidget {
  CartList({super.key});

  CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: CartListBackgroung(
        child: ListView.builder(
            itemCount: cartController.cartItems.length,
            itemBuilder: (context, index) {
              var currentItem = cartController.cartItems[index];
              return Card(
                clipBehavior: Clip.none,
                color: Colors.purple,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      currentItem.image,
                      width: 100,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "Quantity: ${cartController.totalQty.value}"),
                        )
                      ],
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const Text(
        "Item List",
        style: TextStyle(color: Colors.white),
      ),
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/svg/back.svg",
        ),
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}
