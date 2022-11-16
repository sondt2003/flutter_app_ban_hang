import 'package:get/get.dart';

class Dimensions {
  //height=392.7 width=802.9
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.8;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7;

  static DimensionsHeight(double Height) {
    double heso = 802.9 / Height;
    return screenHeight / heso;
  }

  static DimensionsWidth(double Width) {
    double heso = 392.7 / Width;
    return screenWidth / heso;
  }
}
