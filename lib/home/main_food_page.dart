import 'package:bulle_dair_delivery/home/food_page_body.dart';
import 'package:bulle_dair_delivery/utils/colors.dart';
import 'package:bulle_dair_delivery/widgets/big_text.dart';
import 'package:bulle_dair_delivery/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container(
              margin: const EdgeInsets.only(top: 45, bottom: 15),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Gabon",
                        color: AppColors.mainColor,
                        size: 20,
                      ),
                      const Row(
                        children: [
                          SmallText(
                            text: "Libreville",
                            color: Colors.black54,
                            size: 9,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )),
          //showing body
          const FoodPageBody(),
        ],
      ),
    );
  }
}
