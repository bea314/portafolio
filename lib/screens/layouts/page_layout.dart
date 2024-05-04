import 'dart:html';

import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../includes/theme.dart';
import '../../includes/utils/utils.dart';
import '../../includes/widgets/widgets.dart';

class PageLayout extends StatefulWidget {
  final Widget child;
  const PageLayout({Key? key, required this.child}) : super(key: key);

  @override
  State<PageLayout> createState() => PageLayoutState();
}

class PageLayoutState extends State<PageLayout> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      FlutterNativeSplash.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);

    return Scaffold(
      appBar: AppBar(
        title: PersonTitle(),
      ),
      body: widget.child,
    );
  }
}

class PersonTitle extends StatelessWidget {
  const PersonTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    const double size = 10.0;
    const double subsize = 8.0;
    return Container(
      height: size*2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: responsive.sp(size),
            backgroundColor: Palette.third,
          ),
          SizedBox(
            width: responsive.sp(size),
          ),
          Row(
          crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              appBarTitlte('person.name', size*2),
              SizedBox(
                width: responsive.sp(size),
              ),
              appBarSubtitle('person.occupation', subsize*2),
            ],
          )
        ],
      ),
    );
  }
}
