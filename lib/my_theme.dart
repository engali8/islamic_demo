import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = Color(0xffB7935F);
  static Color colorBlack = Color(0xff242424);
  static Color colorWhite = Color(0xffFFFFFF);

  static ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      canvasColor: lightPrimary,
      appBarTheme:
          AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: colorBlack),
        unselectedIconTheme: IconThemeData(color: colorWhite),
        showSelectedLabels: true,
      ));

  static ThemeData DarkTheme = ThemeData();
}
