import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SvgPicture.asset("assets/svg_images/email.svg"),
          SizedBox(
            width: 20,
          ),
          Text("Continue with Email"),
        ],
      ),
      height: 40,
      width: 200,
      decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
    );
  }
}