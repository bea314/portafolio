import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config.dart';
import '../../includes/theme.dart';

Widget appBarTitlte(String title) {
  return FittedBox(
    fit: BoxFit.contain,
    child: Text(title,
        textAlign: TextAlign.left,
        style: GoogleFonts.merriweatherSans(
          textStyle: TextStyle(
            color: Palette.black,
            fontSize: SIZES.title,
            fontWeight: FontWeight.bold,
          ),
        )).tr(),
  );
}

Widget appBarSubtitle(String title) {
  return FittedBox(
    fit: BoxFit.contain,
    child: Text(title,
        textAlign: TextAlign.left,
        style: GoogleFonts.merriweatherSans(
          textStyle: TextStyle(
            color: Palette.black,
            fontSize: SIZES.text,
            fontWeight: FontWeight.w300,
          ),
        )).tr(),
  );
}

Widget titleTextNormal(String text, {
  TextAlign textAlign = TextAlign.center,
  Color textColor = Palette.black
}) {
  return flexy4Text(
    Text(text,
      textAlign: textAlign,
      style: GoogleFonts.merriweatherSans( 
        textStyle: TextStyle(
          color: textColor,
          fontSize: SIZES.title,
          fontWeight: FontWeight.w700,
        ),
      )).tr(),
  );
}

Widget subtitleTextNormal(String text, {
  TextAlign textAlign = TextAlign.center,
  Color textColor = Palette.second
}) {
  return flexy4Text(
    Text(text,
      textAlign: textAlign,
      style: GoogleFonts.juliusSansOne( 
        textStyle: TextStyle(
          color: textColor,
          fontSize: SIZES.subtitle,
          fontWeight: FontWeight.w500,
        ),
      )).tr(),
  );
}

Widget bodyTextNormal(String text, {
  TextAlign textAlign = TextAlign.center,
  Color textColor = Palette.black
}) {
  return flexy4Text(
    Text(text,
      textAlign: textAlign,
      style: GoogleFonts.workSans(
        textStyle: TextStyle(
          color: textColor,
          fontSize: SIZES.text,
          fontWeight: FontWeight.w400,
        ),
      )).tr(),
  );
}

Widget flexy4Text(Widget child, {Axis direction = Axis.horizontal}) {
  return Flex(
    direction: direction,
    children: [Expanded(flex: 1, child: child)],
  );
}
