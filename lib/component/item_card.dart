import 'package:cart/model/product_model.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.currentProduct,
    required this.cardClickHandler,
  }) : super(key: key);

  final ProductModel currentProduct;
  final Function cardClickHandler;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        cardClickHandler();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // width: 160,
            // height: 160,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Color(
                int.parse(currentProduct.color),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Hero(
                tag: currentProduct.id,
                child: Image.asset(currentProduct.image)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              currentProduct.name,
              style:
                  TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "€ ${currentProduct.price.toString()}",
            style:
                TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
