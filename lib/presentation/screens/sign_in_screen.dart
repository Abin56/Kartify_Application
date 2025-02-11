import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartify_applicaion/presentation/constants/sizes.dart';
import 'package:kartify_applicaion/presentation/fonts/normal_font.dart';
import 'package:kartify_applicaion/presentation/widgets/textfont_widget/text.font_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/favicon.png'),
            h10sizedbox,
            NormalTextWidget(
              text: "Welcome Back!",
              fontWeight: FontWeight.w500,
              fontSize: 26,
            ),
            h10sizedbox,
            NormalTextWidget(
              text:
                  "We happy to see you here again.Enter your email address and password",
              color: Colors.grey,
              fontSize: 16,
            ),
            h20sizedbox,
            TextFormFieldContainerWidget(
              hintText: 'Enter Email',
              title: 'Email',
              width: double.infinity,
            ),
            h20sizedbox,
            TextFormFieldContainerWidget(
              hintText: 'Enter Password',
              title: 'Password',
              width: double.infinity,
            ),
            h10sizedbox,
            Row(
              children: [
                SizedBox(
                    width: 20,
                    child: Checkbox(value: true, onChanged: (value) {})),
                NormalTextWidget(
                  text: ' Remember',
                ),
                Spacer(),
                NormalTextWidget(
                  text: ' Forgot password',
                ),
              ],
            ),
            h20sizedbox,
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 224, 11),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Center(child: NormalTextWidget(text: "Login now")),
            ),
            h20sizedbox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(9),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        height: 20,
                        'assets/svg_images/google.svg',
                      ),
                      NormalTextWidget(text: ' Google'),
                      h10sizedbox,
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        height: 20,
                        'assets/svg_images/apple.svg',
                      ),
                      NormalTextWidget(text: ' Apple'),
                      h10sizedbox,
                    ],
                  ),
                ),
              ],
            ),
            h20sizedbox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NormalTextWidget(text: '''Don't have an account?'''),
                NormalTextWidget(
                  text: ' Sign up for free',
                  color: Colors.blue,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
