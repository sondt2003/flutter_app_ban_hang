import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sondtph22824_ban_hang/utils/colors.dart';
import 'package:sondtph22824_ban_hang/utils/dimensions.dart';
import 'package:sondtph22824_ban_hang/widgets/big__text.dart';
import 'package:sondtph22824_ban_hang/widgets/icon_and_text_widget.dart';
import 'package:sondtph22824_ban_hang/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Bigtext(
            text: text,
            size: Dimensions.DimensionsHeight(25)),
        SizedBox(height: Dimensions.DimensionsHeight(10)),
        Row(
          children: [
            Wrap(
                children: List.generate(5, (index) {
                  return Icon(Icons.star,
                      color: AppColors.mainColor, size: 15);
                })),
            SizedBox(width: 5),
            SmallText(text: "4.5", size: 15),
            SizedBox(width: 5),
            SmallText(
              text: "1287",
              size: 15,
            ),
            SizedBox(width: 5),
            SmallText(
              text: "Coments",
              size: 15,
            ),
          ],
        ),
        SizedBox(
          height: Dimensions.DimensionsHeight(10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "Normal",
              color: const Color(0xffce4d1d),
              iconColor: AppColors.iconColor1,
              size: 20,
            ),
            SizedBox(
              width: Dimensions.DimensionsHeight(10),
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              text: "1.7km",
              color: const Color(0xffce4d1d),
              iconColor: AppColors.mainColor,
              size: 20,
            ),
            SizedBox(
              width: Dimensions.DimensionsHeight(10),
            ),
            IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: "32km",
              color: const Color(0xffce4d1d),
              iconColor: AppColors.iconColor2,
              size: 20,
            )
          ],
        ),
      ],
    );
  }
}
