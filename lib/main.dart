import 'package:flutter/material.dart';
import 'package:kartify_applicaion/screens/login_screen.dart';
import 'package:kartify_applicaion/screens/sign_in_screen.dart';
import 'package:kartify_applicaion/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInScreen(),
    );
  }
}
