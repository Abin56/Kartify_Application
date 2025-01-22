import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39,119,252),
      body: SafeArea(
        child: Center(
          child: Image.asset('assets/images/kartify_logo.png'),
        ),
      ),
    );
  }
}
