// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cart/product%20details/component/add_to_cart_page.dart';
import 'package:cart/product%20details/component/product_counter_fav_icon.dart';
import 'package:flutter/material.dart';

import 'package:cart/model/product_model.dart';
import 'package:cart/product%20details/component/product_color_size.dart';
import 'package:cart/product%20details/component/product_description.dart';
import 'package:cart/product%20details/component/product_details_image_title_price.dart';

class PrductDetailsBody extends StatelessWidget {
  const PrductDetailsBody({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 20,
                    right: 20,
                  ),
                  // height: size.height * 0.7,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      ProductColorSize(product: product),
                      ProductDescription(product: product),
                      ProductCounterWithFavIcon(product: product),
                      AddToCartPage(product: product)
                    ],
                  ),
                ),
                ProductDetailsImageTitlePrice(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
