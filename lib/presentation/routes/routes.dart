import 'package:flutter/material.dart';
import 'package:kartify_applicaion/presentation/screens/home/homescreen.dart';
import 'package:kartify_applicaion/presentation/screens/login_screen.dart';
import 'package:kartify_applicaion/presentation/screens/profile.dart';
import 'package:kartify_applicaion/presentation/screens/sign_in_screen.dart';
import 'package:kartify_applicaion/presentation/screens/splash_screen.dart';

class AppRoutes {
  static const loginScreen = '/loginScreen';
  static const splashScreen = '/splashScreen';
  static const signinScreen = '/signinScreen';
  static const homeScreen = '/homeScreen';
   static const userprofilepage = '/userprofilepage';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      loginScreen: (context) => const LoginScreen(),
      splashScreen: (context) => const SplashScreen(),
      signinScreen: (context) => const SignInScreen(),
      homeScreen: (context) =>  Homescreen(),
      userprofilepage: (context) =>  UserProfilepage(),
    };
  }
}
