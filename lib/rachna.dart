import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartify_applicaion/widgets/s.dart';

class ClassRachana extends StatelessWidget {
  const ClassRachana({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Column(
            children: [
              LoginContainer(),
              LoginContainer(),
              LoginContainer(),
            ],
          )),
    ));
  }
}
