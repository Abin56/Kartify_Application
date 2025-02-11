import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
      child: Column(
        children: [
          CircleAvatar(
              radius: 30,
              backgroundColor: backgroundColor,
              child: SvgPicture.asset(imagePath)),
          Text(text)
        ],
      ),
    );
  }
}
