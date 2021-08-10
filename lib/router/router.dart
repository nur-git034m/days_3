import 'package:days_3/main.dart';
import 'package:days_3/page/auth_page.dart';
import 'package:days_3/page/registration_page.dart';
import 'package:days_3/router/routing_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AuthRoute:
        return CupertinoPageRoute(
          builder: (context) => FavoritePage(),
        );
      case RegisterRoute:
        return CupertinoPageRoute(
          builder: (context) => RegistrationPage(),
        );
      default:
        return CupertinoPageRoute(
          builder: (context) => MyApp(),
        );
    }
  }
}