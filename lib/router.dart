import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libraryApp/helper/constants.dart';
import 'package:libraryApp/screens/login_screen.dart';
import 'package:libraryApp/screens/splash_screen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());

      case loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
    }
  }
}