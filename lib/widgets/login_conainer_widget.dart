import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginContainerWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  const LoginContainerWidget({
    required this.imagePath,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.grey.shade300,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  imagePath,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 16)
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
