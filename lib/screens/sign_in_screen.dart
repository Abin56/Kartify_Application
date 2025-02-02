import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
      children: [
        Image.asset('assets/images/favicon.png'),
        Text("Welcome back!", style: TextStyle(fontWeight: FontWeight.bold))
      ],
    ));
  }
}
