import 'package:flutter/material.dart';
import 'package:edusparkx/presentation/signup_page_screen/signup_page_screen.dart';
import 'package:edusparkx/presentation/login_page_screen/login_page_screen.dart';
import 'package:edusparkx/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signupPageScreen = '/signup_page_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    signupPageScreen: (context) => SignupPageScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
