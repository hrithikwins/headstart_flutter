// be the strings mapped to the screens
import 'package:flutter/material.dart';
import 'package:headstart_flutter/screens/onboarding0.dart';
import 'package:headstart_flutter/screens/onboarding3.dart';
import 'package:headstart_flutter/screens/signup-screen.dart';

import '../screens/home-scren.dart';
import '../screens/mobile_number.dart';
import '../screens/onboarding1.dart';
import '../screens/onboarding2.dart';

class MyRoutesScreens {
  static Widget Function(BuildContext) defaultHome =
      (context) => const MobileNumberScreen();

  static Widget Function(BuildContext) onboarding0 =
      (context) => const Onboarding0();

  static Widget Function(BuildContext) onboarding1 =
      (context) => const Onboarding1();

  static Widget Function(BuildContext) onboarding2 =
      (context) => const Onboarding2();

  static Widget Function(BuildContext) onboarding3 =
      (context) => const Onboarding3();
}

class MyRoutePaths {
  static const String defaultHome = "/";
  static const String login = "/login";
  static const String signUp = "/sign-up";
  static const String onboarding0 = "/onboarding0";
  static const String onboarding1 = "/onboarding1";
  static const String onboarding2 = "/onboarding2";
  static const String onboarding3 = "/onboarding3";
  static const String otp = "/otp";
  static const String home = "/home";
}

Map<String, Widget Function(BuildContext)> allRoutes = {
  "/": (context) => MobileNumberScreen(),
  MyRoutePaths.onboarding0: MyRoutesScreens.onboarding0,
  MyRoutePaths.onboarding1: MyRoutesScreens.onboarding1,
  MyRoutePaths.onboarding2: MyRoutesScreens.onboarding2,
  MyRoutePaths.onboarding3: MyRoutesScreens.onboarding3,
};
