import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../includes/utils/utils.dart';

class ErrorLayout extends StatefulWidget {
  final Widget child;
  const ErrorLayout({Key? key, required this.child}) : super(key: key);

  @override
  State<ErrorLayout> createState() => ErrorLayoutState();
}

class ErrorLayoutState extends State<ErrorLayout> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      FlutterNativeSplash.remove();
    });
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = (theme.brightness == Brightness.dark);
    final responsive = Responsive(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: widget.child,
    );
  }
}