import 'dart:html';

import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:portafolio_cv/includes/theme.dart';

import '../../config.dart';
import '../../includes/utils/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeStructure();
  }
}

class HomeStructure extends StatelessWidget {
  const HomeStructure({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Container(
      width: responsive.width,
      height: responsive.height,
      child: SingleChildScrollView(
        child: Column(
          children: [SectionTitle(), Text('MAIN')],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
  }) : super(key: key);

  static const double margin = 20;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Container(
      width: responsive.width,
      height: responsive.height,
      color: Palette.background_light_primary,
      margin: EdgeInsets.symmetric(
          horizontal: responsive.wp(margin), vertical: responsive.hp(margin)),
      child: Wrap(
        children: [
          Image.asset(
            MEDIA.icoStart,
          )
        ],
      ),
    );
  }
}
