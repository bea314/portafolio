import 'dart:html';

import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

import '../../config.dart';
import '../../includes/utils/responsive.dart';

class CurriculumScreen extends StatelessWidget {
  const CurriculumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CurriculumStructure();
  }
}

class CurriculumStructure extends StatelessWidget {
  const CurriculumStructure({
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
          children: [
            Text('CURRICULUM')
          ],
        ),
      ),
    );
  }
}