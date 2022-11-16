import 'package:flutter/material.dart';
import 'package:sondtph22824_ban_hang/utils/colors.dart';
import 'package:sondtph22824_ban_hang/utils/dimensions.dart';
import 'package:sondtph22824_ban_hang/widgets/app_column.dart';
import 'package:sondtph22824_ban_hang/widgets/app_icon.dart';
import 'package:sondtph22824_ban_hang/widgets/big__text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Width:" +
        MediaQuery.of(context).size.width.toString() +
        " Height:" +
        MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: Dimensions.DimensionsHeight(350),
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/food0.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            top: Dimensions.DimensionsWidth(60),
            left: Dimensions.DimensionsWidth(20),
            right: Dimensions.DimensionsWidth(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.DimensionsHeight(350) - 30,
            child: Container(
              padding: EdgeInsets.only(
                  top: Dimensions.DimensionsHeight(45),
                  left: Dimensions.DimensionsWidth(20),
                  right: Dimensions.DimensionsWidth(20)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.DimensionsHeight(20)),
                  topRight: Radius.circular(Dimensions.DimensionsHeight(20)),
                ),
                color: Colors.white,
              ),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Chinese side"),
                  SizedBox(height: Dimensions.DimensionsHeight(20),),
                  Bigtext(text: "Introduce",size: 22,),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.DimensionsHeight(20),
        padding: EdgeInsets.only(
            top: Dimensions.DimensionsHeight(30),
            bottom: Dimensions.DimensionsHeight(30),
            right: Dimensions.DimensionsHeight(30)),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.DimensionsHeight(20)*2),
            topRight: Radius.circular(Dimensions.DimensionsHeight(20)*2),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: Dimensions.DimensionsHeight(20)),
              padding: EdgeInsets.only(
                  top: Dimensions.DimensionsHeight(20),
                  bottom:Dimensions.DimensionsHeight(20),
                  right:Dimensions.DimensionsHeight(20),
                  left: Dimensions.DimensionsHeight(20) ),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.DimensionsHeight(20)),
              color: Colors.white
            ),
              child: Row(
                children: [
                  Icon(Icons.remove,color: AppColors.signColor,),
                  SizedBox(width: 5,),
                  Bigtext(text: "0"),
                  SizedBox(width: 5,),
                  Icon(Icons.add,color: AppColors.signColor,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.DimensionsHeight(20)),
                color: AppColors.mainColor
              ),
              child: Bigtext(text: "\$10 | Add to cart",color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
