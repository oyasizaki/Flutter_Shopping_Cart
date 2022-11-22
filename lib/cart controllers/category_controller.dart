import 'package:get/get.dart';

class CategoyController extends GetxController {
  var currentIndex = 0.obs;

  List<String> categoryList = [
    "Switch",
    "Gauge",
    "Text",
    "Color",
    "Battery",
    "LED",
    "Graph"
  ];

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
