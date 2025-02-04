import 'package:flutter/material.dart';
import 'package:kartify_applicaion/fonts/normal_font.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/favicon.png'),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: NormalTextWidget(
                  text: 'Welcome back!',
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 40,
                child: NormalTextWidget(
                  text: 'We happy o see you here again. Ener your email password',
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ));
  }
}
