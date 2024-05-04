import 'dart:html';

import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

import '../../config.dart';
import '../../includes/utils/responsive.dart';

class ProyScreen extends StatelessWidget {
  const ProyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProyStructure();
  }
}

class ProyStructure extends StatelessWidget {
  const ProyStructure({
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
            Text('PROYECTOS')
          ],
        ),
      ),
    );
  }
}