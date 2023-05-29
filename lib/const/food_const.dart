import 'package:flutter/material.dart';

class FoodConst {
  //  Textler
  final String appTitle = 'The Kitchen~';
  final String searchText = 'Search for something tasty...';

  final String repeatTitle = 'Repeat last order';
  final String helpTitle = 'Help me choose';
  final String surpriseTitle = 'Surprise me';

  // Color
  final Color appBarBackGroundColor = Colors.black;

  // EdgeInsest

  final EdgeInsets edgeInsetsSymetricVertical60 =
      const EdgeInsets.symmetric(vertical: 60);
  final EdgeInsets edgeInsetsOnlyLeftRight7 =
      const EdgeInsets.only(left: 7, right: 7);

  final SizedBox sizedBoxWidht10 = const SizedBox(width: 10);

  final SizedBox sizedBoxHeight10 = const SizedBox(height: 10);
  final SizedBox sizedBoxHeight20 = const SizedBox(height: 20);
  final SizedBox sizedBoxHeight40 = const SizedBox(height: 40);
}
