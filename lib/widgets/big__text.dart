import 'package:flutter/cupertino.dart';
class Bigtext extends StatelessWidget {
  Color color;
  String text;
  double size;
  TextOverflow? overFlow;
  Bigtext({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 20,
    this.overFlow = TextOverflow.ellipsis,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 1,
      text,
      overflow: overFlow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
