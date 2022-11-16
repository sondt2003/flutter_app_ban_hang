import 'package:flutter/cupertino.dart';
import 'package:sondtph22824_ban_hang/utils/dimensions.dart';
import 'package:sondtph22824_ban_hang/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color iconColor;
  final double? size;
  const IconAndTextWidget({Key? key,
    required this.icon,
    required  this.text,
    required  this.color,
    required  this.iconColor,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(icon,color: iconColor,size: size,),
      SizedBox(width: 5,),
      SmallText(text: text,color: color,size: Dimensions.DimensionsHeight(size!-5),),
    ],);
  }
}
