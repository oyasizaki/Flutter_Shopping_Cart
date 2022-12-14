import 'package:cart/cart%20controllers/product%20details/fav_counter_controller.dart';
import 'package:cart/model/product_model.dart';
import 'package:cart/product%20details/component/cart_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProductCounterWithFavIcon extends StatelessWidget {
  ProductCounterWithFavIcon({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  FavCounterController favCounterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CartCounter(product: product),
          InkWell(
            onTap: () {
              favCounterController.addFavItemtoList(product);
            },
            child: Container(
              padding: const EdgeInsets.all(8.0),
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: Colors.pink,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset("assets/svg/heart.svg"),
            ),
          ),
        ],
      ),
    );
  }
}
