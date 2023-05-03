import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = Color(0xffB7935F);
  static Color colorBlack = Color(0xff242424);
  static Color colorWhite = Color(0xffFFFFFF);

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: lightPrimary,
      canvasColor: lightPrimary,
      appBarTheme:
          AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        subtitle2: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: colorBlack),
        unselectedIconTheme: IconThemeData(color: colorWhite),
        showSelectedLabels: true,
      ));

  static ThemeData darkTheme = ThemeData();
}
