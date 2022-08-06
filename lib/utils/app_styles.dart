import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xff3b3b3b);
  static Color bgColor = const Color(0xffeeedf2);
  static Color orangeColor = const Color(0xfff37b67);
  static Color kakiColor = const Color(0xffd2bdd6);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLine =
      TextStyle(fontSize: 24, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLine2 =
      TextStyle(fontSize: 18, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLine3 =
      TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle headLine4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
