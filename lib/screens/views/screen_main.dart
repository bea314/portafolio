import 'package:flutter/material.dart';

import 'package:portafolio_cv/includes/theme.dart';

import '../../config.dart';
import '../../includes/utils/responsive.dart';
import '../../includes/widgets/widgets.dart';

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
          children: [SectionTitle(), SectionDescription(), Text('MAIN')],
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
        padding: EdgeInsets.symmetric(
            horizontal: responsive.wp(margin), vertical: responsive.hp(margin)),
        alignment: Alignment.center,
        child: Image.asset(
          MEDIA.icoStart,
        ));
  }
}

class SectionDescription extends StatelessWidget {
  const SectionDescription({
    Key? key,
  }) : super(key: key);

  static const double margin = 20; 
  static const double spacer = 20; 

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Container(
        width: responsive.width,
        constraints: BoxConstraints(minHeight: 10),
        padding: EdgeInsets.symmetric(
            horizontal: responsive.wp(margin), vertical: responsive.hp(margin)),
        child: Column(
          children: [
            titleTextNormal('person.name'),       
            subtitleTextNormal('person.occupation'),       
            SizedBox(height: spacer,),    
            bodyTextNormal('person.description' ),
          ]
        )
      );
  }
}
