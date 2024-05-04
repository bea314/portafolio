import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

import '../../config.dart';
import '../../includes/utils/responsive.dart';

class Error404View extends StatelessWidget {
  const Error404View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Container(
      width: responsive.width,
      height: responsive.height,
      child: Lottie.asset(MEDIA.lot_error404, fit: BoxFit.contain),
    );
  }
}
