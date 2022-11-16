import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sondtph22824_ban_hang/pages/food/popular_food_detail.dart';
import 'package:sondtph22824_ban_hang/pages/home/main_food__page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:  PopularFoodDetail(),
    );
  }
}