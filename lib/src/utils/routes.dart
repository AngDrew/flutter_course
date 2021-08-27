import 'package:flutter/material.dart';
import 'package:flutter_course/src/views/landing_screen/landing_v.dart';
import 'package:flutter_course/src/views/splash_screen/splash_v.dart';

const String rootRoute = '/';
const String landingRoute = '/landing';
const String notFoundRoute = '/not_found';

/// dokumentasi tes
///
/// [settings] will be used as the balblablablabla
///
/// `settings` wil balblablabal
Route<dynamic> onGeneratedRoutes(RouteSettings settings) {
  switch (settings.name) {
    case rootRoute:
      return MaterialPageRoute(
        builder: (context) => SplashScreen(),
        settings: settings,
      );
    case landingRoute:
      return MaterialPageRoute(
        builder: (context) => LandingScreen(),
        settings: settings,
      );

    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text(
              '404 Page Does Not Exist',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        settings: settings.copyWith(
          name: notFoundRoute,
        ),
      );
  }
}