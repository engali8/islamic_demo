import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimary = Color(0xffB7935F);
  static Color colorBlack = Color(0xff242424);
  static Color colorWhite = Color(0xffFFFFFF);

  /// the theme data of light mode !
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: lightPrimary,
      canvasColor: lightPrimary,
/// app bar theme
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: colorBlack,
          )),
/// text theme
      textTheme: TextTheme(
        headline1: TextStyle(color: Colors.black,fontSize: 30, fontWeight: FontWeight.bold),
        headline2:TextStyle(color: colorWhite,fontSize: 25, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        subtitle2: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        overline: TextStyle(color: Colors.black,fontSize: 25, fontWeight: FontWeight.bold),
        bodyText1: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: colorBlack),
        unselectedIconTheme: IconThemeData(color: colorWhite),
        showSelectedLabels: true,
      ));


  /// the theme data of dark mode
  static ThemeData darkTheme = ThemeData();
}
