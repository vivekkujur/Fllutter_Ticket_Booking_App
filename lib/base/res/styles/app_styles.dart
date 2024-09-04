import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color headerTextColor = const Color(0xff3b3b3b);
  static Color lightTextColor = const Color(0xff949494);
  static Color backgroundColor = const Color(0xffeeedf1);

  static TextStyle headerTextStyle1 = TextStyle(
    color: headerTextColor,
    fontSize: 26,
    fontWeight: FontWeight.w500,
  );

  static TextStyle baseTextStyle =  TextStyle(
    color: lightTextColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headerTextStyle3 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle blueTextStyle3 = const TextStyle(
    fontSize: 18,
    color: Colors.blueAccent,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headerTextStyle4 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static TextStyle lightTextStyle4 = TextStyle(
    color: lightTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
}
