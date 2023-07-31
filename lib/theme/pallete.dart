import 'package:flutter/material.dart';

class Pallete {
  static const blackColor = Color.fromRGBO(1, 1, 1, 1);
  static const whiteColor = Colors.white;
  static const greyColor = Colors.black54;
  static const whiteColoor = Colors.white38;
  static const blueColor = Colors.blue;
  static const transparent = Colors.transparent;
  //Themes
  static var darkModeAppTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: blackColor,
  );
  static var lightModeAppTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: whiteColor,
  );
}
