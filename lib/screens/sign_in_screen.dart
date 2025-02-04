import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kartify_applicaion/fonts/normal_font.dart';

import '../widgets/login_conainer_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Image.asset('assets/images/favicon.png'),
          Text("Welcome back!", style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
              "We happy to see you here again.enter your email address and password"),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  hintText: "Enter email"),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(8),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Enter password"),
              )),
          Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                LoginContainerWidget(
                  imagePath: 'assets/svg_images/google.svg',
                  text: 'Continue with Google',
                ),
                LoginContainerWidget(
                  imagePath: 'assets/svg_images/apple.svg',
                  text: 'Continue with Apple',
                ),
                Padding(
                    padding: EdgeInsets.only(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NormalTextWidget(
                          text: "Don't have an account?",
                          color: Colors.grey,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: NormalTextWidget(
                              text: "Sign up for free",
                              color: const Color.fromARGB(255, 60, 132, 252),
                            ))
                      ],
                    ))
              ]))
        ]));
  }
}
