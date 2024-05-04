import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/utils.dart';
import '../../includes/theme.dart';

Widget titulo01(BuildContext context, String title) {
    return Text(title, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline1,);
}

Widget titulo02(BuildContext context, String title) {
    return Text(title, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline2,);
}

Widget appBarTitlte(String title, double size) {
    return FittedBox( fit: BoxFit.contain,
      child: Text(title, textAlign: TextAlign.left, style: GoogleFonts.workSans(
        textStyle: TextStyle(
          color: Palette.black,
          fontSize: size,
          fontWeight: FontWeight.bold,
        ),
      )).tr(),
    );
}

Widget appBarSubtitle(String title, double size) {
    return FittedBox( fit: BoxFit.contain,
      child: Text(title, textAlign: TextAlign.left, style: GoogleFonts.workSans(
        textStyle: TextStyle(
          color: Palette.black,
          fontSize: size,
          fontWeight: FontWeight.w300,
        ),
      )).tr(),
    );
}