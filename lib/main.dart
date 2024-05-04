import 'package:flutter/material.dart';

import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:easy_localization/easy_localization.dart';

import 'includes/router.dart';
import 'config.dart';

void usePathUrlStrategy() {
  setUrlStrategy(PathUrlStrategy());
}

void main() async {
  usePathUrlStrategy();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await EasyLocalization.ensureInitialized();
  EasyLocalization.logger.enableBuildModes = [];
  EasyLocalization.logger.enableLevels = [];

  runApp(
    EasyLocalization(
      saveLocale: true,
      supportedLocales: [Locale('en', 'US'), Locale('es', 'SV')],
      path: 'translations', 
      startLocale: const Locale('es','SV'),
      fallbackLocale: Locale('es','SV'),
      child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,

      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      title: CONFIG.app_title,
      initialRoute: RouteGenerator.rootRoute,
      onGenerateRoute: (RouteSettings settings) => RouteGenerator.RoutePath(context, settings),
      onUnknownRoute:  (RouteSettings settings) => RouteGenerator.RouteError(context, settings),
    );
  }
}

