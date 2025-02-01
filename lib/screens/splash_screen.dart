import 'package:flutter/material.dart';
import 'package:kartify_applicaion/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    loginScreenPage(context);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 119, 252),
      body: SafeArea(
        child: Center(
          child: Image.asset('assets/images/kartify_logo.png'),
        ),
      ),
    );
  }
}

Future<void> loginScreenPage(BuildContext context) async {
  await Future.delayed(Duration(seconds: 3));

  if (context.mounted) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }
}
