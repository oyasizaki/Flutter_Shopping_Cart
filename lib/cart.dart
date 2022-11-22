import 'dart:ffi';

import 'package:cart/cart%20controllers/category_controller.dart';
import 'package:cart/cart%20controllers/product_controller.dart';
import 'package:cart/component/categories_header.dart';
import 'package:cart/component/item_card.dart';
import 'package:cart/product%20details/product_detail.dart';
import 'package:cart/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  ProductController productController = Get.put(ProductController());
  CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: Center(child: Text('Cart')),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Features',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            Categories(),
            Obx(
              () => productController.isDataLoadingCompleted.value == true
                  ? Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        child: GridView.builder(
                            itemCount: productController.products.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.65,
                              mainAxisSpacing: 8,
                              crossAxisSpacing: 8,
                            ),
                            itemBuilder: (context, index) {
                              var currentProduct =
                                  productController.products[index];
                              return ItemCard(
                                  currentProduct: currentProduct,
                                  cardClickHandler: () {
                                    Get.to(() => ProductDetailPage(
                                          product: currentProduct,
                                        ));
                                  });
                            }),
                      ),
                    )
                  : CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
