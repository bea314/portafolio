import 'package:flutter/material.dart';

import '../screens/screens.dart';
import '../screens/layouts/page_layout.dart';
import '../screens/layouts/error_layout.dart';

class RouteGenerator {
  static String rootRoute = '';

  static String cvRoute = '/cv';
  static String projectsRoute = '/projects';
  static String proyectosRoute = '/proyectos';

  static Route<dynamic> RoutePath(
      BuildContext context, RouteSettings settings) {
    Object args = (settings.arguments ?? {});
    String path = (settings.name ?? '').trim();
    Map<String, dynamic> params = {};

    print('--> $path');
    if (path == '/') path = rootRoute;
    if (path == projectsRoute) path = proyectosRoute;

    if (path == rootRoute)      {  return _pageRoute(context, routName: path, page: const PageLayout(child: HomeScreen())); }
    if (path == cvRoute)        {  return _pageRoute(context, routName: path, page: const PageLayout(child: CurriculumScreen())); }
    if (path == proyectosRoute) {  return _pageRoute(context, routName: path, page: const PageLayout(child: ProyScreen())); }

    //print('<-- $path');

    return RouteError(context, settings);
  }

  static Route<dynamic> RouteError(BuildContext context, RouteSettings settings) => PageRouteBuilder(
    settings: const RouteSettings(name: '/'),
    pageBuilder: (_,__,___) => const ErrorLayout(child: Error404View()),
    transitionDuration: const Duration(microseconds: 200),
    transitionsBuilder: (_,animation,__,___) => FadeTransition(opacity: animation, child: const ErrorLayout(child: Error404View())),
  );

  static PageRoute _pageRoute(BuildContext context,
      {String routName = '/', required Widget page}) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routName),
      pageBuilder: (_, __, ___) => page,
      transitionDuration: const Duration(microseconds: 200),
      transitionsBuilder: (_, animation, __, ___) =>
          FadeTransition(opacity: animation, child: page),
    );
  }

  static Map<String, dynamic> _params(Object args, String path) {
    int seg = 0; Map<String, dynamic> params = {};
    if( path.length > 1 ) path.substring(1).split('/').forEach((String valor) => params['seg${++seg}'] = valor);
    return {}..addAll((args as Map<String, dynamic>))..addAll(params);
  }
}