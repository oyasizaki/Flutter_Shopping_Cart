import 'package:cart/model/product_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var numOfItems = 1.obs;

  var totalQty = 0.obs;

  var cartItems = <ProductModel>[].obs;

  void removeItem() {
    if (numOfItems.value > 1) {
      numOfItems.value--;
    }
  }

  void addItem() {
    numOfItems.value++;
  }

  void addItemInCart(ProductModel product) {
    cartItems.add(product);

    totalQty.value = totalQty.value + numOfItems.value;

    numOfItems.value = 1;
  }

  void initializeQuantity() {
    numOfItems.value = 1;
  }
}
