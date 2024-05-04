import 'package:flutter/material.dart';

class Palette {
  static const Color primary = Color(0xFFC0D9B4);
  static const Color second = Color(0xFFBFB699);
  static const Color third = Color(0xFFF2F2F2);

  static const Color background_light = 
      Color.fromRGBO(243, 242, 242, 1); //#F2F2F2
  static const Color background_light_primary =
      Color.fromRGBO(192, 224, 183, 1); //#C0E0B7

  static const Color black = Color.fromRGBO(0, 0, 0, 1);
  static const Color transparent = Colors.transparent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: primary,

    // AppBar Theme
    appBarTheme: AppBarTheme(
      color: black,
      backgroundColor: background_light,
      elevation: 0,
      centerTitle: true,
    ),

    // Text Theme
    // textTheme: const TextTheme(
    //   bodyText1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
    //   bodyText2: TextStyle(fontSize: 20.0),
    //   headline1: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
    //   headline2: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
    //   button: TextStyle(fontSize: 16.0),
    // ),
  );
}
