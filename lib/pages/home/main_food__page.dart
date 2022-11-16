import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sondtph22824_ban_hang/pages/home/food_page_body.dart';
import 'package:sondtph22824_ban_hang/utils/colors.dart';
import 'package:sondtph22824_ban_hang/utils/dimensions.dart';
import 'package:sondtph22824_ban_hang/widgets/big__text.dart';
import 'package:sondtph22824_ban_hang/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);
  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin:  EdgeInsets.only(top:  Dimensions.DimensionsHeight(70), bottom:  Dimensions.DimensionsHeight(15)),
              padding:  EdgeInsets.only(left:  Dimensions.DimensionsWidth(15), right:  Dimensions.DimensionsWidth(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Bigtext(
                        text: "Bangladesh",
                        color: AppColors.mainColor,
                        size:  Dimensions.DimensionsHeight(25),
                      ),
                      Row(
                        children: [
                          SmallText(
                              text: "Narsingdi",
                              size: 15,
                              color: AppColors.mainBlackColor),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width:  Dimensions.DimensionsWidth(45),
                      height:  Dimensions.DimensionsHeight(45),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.DimensionsHeight(15)),
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
         Expanded(child: SingleChildScrollView(
           child:  foodPageBody(),
         )),
        ],
      ),
    );
  }
}
