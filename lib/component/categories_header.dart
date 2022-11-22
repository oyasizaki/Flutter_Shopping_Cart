import 'package:cart/cart%20controllers/category_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  CategoyController categoyController = Get.put(CategoyController());

  Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoyController.categoryList.length,
        itemBuilder: (context, index) {
          return buildCategory(index);
        },
      ),
    );
  }

  Widget buildCategory(int index) {
    return InkWell(
      onTap: () {
        categoyController.changeIndex(index);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Obx(
          (() => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categoyController.categoryList[index],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: categoyController.currentIndex.value == index
                          ? Colors.white
                          : Colors.white30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 6),
                    height: 2,
                    width: 30,
                    color: categoyController.currentIndex.value == index
                        ? Colors.white
                        : Colors.transparent,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
