
import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../config.dart';
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
        backgroundColor: Palette.background_light,
        title: PersonTitle(),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0, bottom: 0, left: 0, right: 0, 
            child: widget.child
          ),
          Positioned(
            bottom: 10, right: 10, 
            child: Image.asset(MEDIA.icoBlackCat,height: responsive.hp(10),),
          )
        ],
      ),
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
    return Container(
      height: size*2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: responsive.sp(size),
          ),
          Row(
          crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              appBarTitlte('person.name'),
              SizedBox( width: responsive.sp(size), ),
              appBarSubtitle('person.occupation'),
            ],
          )
        ],
      ),
    );
  }
}
