import 'package:cart/cart%20controllers/product%20details/cart_controller.dart';
import 'package:cart/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddToCartPage extends StatelessWidget {
  AddToCartPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              cartController.addItemInCart(product);
            },
            child: Container(
              margin: EdgeInsets.only(right: 20.0),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                // color: Color(
                //   int.parse(product.color),
                // ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(
                    int.parse(product.color),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.shopping_cart),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      Color(
                        int.parse(product.color),
                      ),
                    ),
                  ),
                  child: Text(
                    "Buy Now".toUpperCase(),
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
