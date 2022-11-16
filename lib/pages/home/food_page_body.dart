import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:sondtph22824_ban_hang/utils/colors.dart';
import 'package:sondtph22824_ban_hang/utils/dimensions.dart';
import 'package:sondtph22824_ban_hang/widgets/app_column.dart';
import 'package:sondtph22824_ban_hang/widgets/big__text.dart';
import 'package:sondtph22824_ban_hang/widgets/icon_and_text_widget.dart';
import 'package:sondtph22824_ban_hang/widgets/small_text.dart';

class foodPageBody extends StatefulWidget {
  @override
  State<foodPageBody> createState() => _foodPageBodyState();
}

var _currPageValue = 0.0;
PageController pageController = PageController(viewportFraction: 0.85);
double _scaleFactor = 0.8;
double _height = Dimensions.pageViewContainer;

class _foodPageBodyState extends State<foodPageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider section
        Container(
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 9,
              itemBuilder: (context, position) {
                return _buldPageItem(position);
              }),
        ),
        //dots
        new DotsIndicator(
          dotsCount: 9,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: Dimensions.DimensionsHeight(20),
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.DimensionsHeight(15)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Bigtext(text: "Popular"),
              SizedBox(
                width: Dimensions.DimensionsHeight(10),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: Bigtext(
                  text: ".",
                  color: Colors.black26,
                ),
              ),
              SizedBox(
                width: Dimensions.DimensionsHeight(10),
              ),
              Container(
                child: SmallText(
                  text: "Foood pairing",
                  size: Dimensions.DimensionsHeight(15),
                ),
              )
            ],
          ),
        ),
        //list of food and images
        Container(
          height: Dimensions.DimensionsHeight(120 * 5),
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: Dimensions.DimensionsHeight(10),
                    right: Dimensions.DimensionsHeight(20),
                    bottom: Dimensions.DimensionsHeight(20)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: Dimensions.DimensionsHeight(5)),
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              Dimensions.DimensionsHeight(20)),
                          color: Colors.white38,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/image/food0.png"),
                          )),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                                Dimensions.DimensionsHeight(20)),
                            bottomRight: Radius.circular(
                                Dimensions.DimensionsHeight(20)),
                          ),
                          color: Colors.white30,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Dimensions.DimensionsHeight(10)),
                          child: Column(
                            children: [
                              Bigtext(
                                text: "Nutritious fruilt meal in china",
                                size: Dimensions.DimensionsHeight(20),
                              ),
                              SizedBox(height: 10),
                              Bigtext(
                                text: "with vietnamese and android studio",
                                size: Dimensions.DimensionsHeight(15),
                                color: Colors.black38,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconAndTextWidget(
                                    icon: Icons.circle_sharp,
                                    text: "Normal",
                                    color: const Color(0xffce4d1d),
                                    iconColor: AppColors.iconColor1,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 2.5,
                                  ),
                                  IconAndTextWidget(
                                    icon: Icons.location_on,
                                    text: "1.7km",
                                    color: const Color(0xffce4d1d),
                                    iconColor: AppColors.mainColor,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 2.5,
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
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      _currPageValue = pageController.page!;
      setState(() {
        _currPageValue = pageController.page!;
        // print("Current value is"+_currPageValue.toString());
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }
}

Widget _buldPageItem(int position) {
  Matrix4 matrix = new Matrix4.identity();
  if (position == _currPageValue.floor()) {
    var currScale = 1 - (_currPageValue - position) * (1 - _scaleFactor);
    var currTrans = _height * (1 - currScale) / 2;
    matrix = Matrix4.diagonal3Values(1, currScale, 1)
      ..setTranslationRaw(0, currTrans, 0);
    // print("1-("+_currPageValue.toString()+"-"+position.toString()+")"+"*"+"(1-"+_scaleFactor.toString()+")="+currScale.toString());
  } else if (position == _currPageValue.floor() + 1) {
    var currScale =
        _scaleFactor + (_currPageValue - position + 1) * (1 - _scaleFactor);
    var currTrans = _height * (1 - currScale) / 2;
    matrix = Matrix4.diagonal3Values(1, currScale, 1)
      ..setTranslationRaw(0, currTrans, 0);
  } else if (position == _currPageValue.floor() - 1) {
    var currScale = 1 - (_currPageValue - position) * (1 - _scaleFactor);
    var currTrans = _height * (1 - currScale) / 2;
    matrix = Matrix4.diagonal3Values(1, currScale, 1)
      ..setTranslationRaw(0, currTrans, 0);
  } else {
    var currScale = 0.8;
    matrix = Matrix4.diagonal3Values(1, currScale, 1)
      ..setTranslationRaw(0, _height * (1 - _scaleFactor), 0);
  }
  return Transform(
    transform: matrix,
    child: Stack(children: [
      Container(
        height: _height,
        margin: EdgeInsets.only(left: 3, right: 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: position.isEven ? Color(0XFF69c5df) : Color(0XFF694444),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/image/food0.png"),
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: Dimensions.pageViewTextContainer,
          margin: EdgeInsets.only(left: 35, right: 35, bottom: 25),
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(Dimensions.DimensionsHeight(20)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color(0xFFe8e8e8),
                  blurRadius: 1,
                  offset: Offset(0, 5)),
              BoxShadow(
                  color: Color(0xFFe8e8e8),
                  blurRadius: 1,
                  offset: Offset(-5, 5))
            ],
          ),
          child: Container(
            padding: EdgeInsets.only(
                top: Dimensions.DimensionsHeight(15), left: 10, right: 10),
            child: AppColumn(text: "Chinese side"),
          ),
        ),
      ),
    ]),
  );
}
