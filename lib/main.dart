import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_application/const/food_const.dart';
import 'package:flutter_food_delivery_application/view/food_home_view.dart';

void main() {
  runApp(new FoodDelivery());
}

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: FoodConst().appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: const HomeFoodView(),
    );
  }
}
