import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartify_applicaion/presentation/fonts/normal_font.dart';

class ProfileScreenContents extends StatelessWidget {
  final String imagePath;
  final String text;
  final Color backgroundColor;
  void Function()? onTap;
  ProfileScreenContents({
    required this.imagePath,
    required this.text,
    required this.backgroundColor,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
                radius: 30,
                backgroundColor: backgroundColor,
                child: SvgPicture.asset(imagePath)),
            NormalTextWidget(text: text,fontSize: 16,fontWeight: FontWeight.w500,)
          ],
        ),
      ),
    );
  }
}
