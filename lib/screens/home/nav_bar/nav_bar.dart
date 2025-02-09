import 'package:flutter/material.dart';
import 'package:kartify_applicaion/colors/colors.dart';

BottomNavigationBarItem buildNavItem(
    String imagePath, String label, int index, int selectedIndex) {
  return BottomNavigationBarItem(
    backgroundColor: cWhite,
    icon: Stack(
      alignment: Alignment.topCenter,
      children: [
        if (selectedIndex == index)
          Container(
            height: 30,
            width: 45,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  // style: BorderStyle.values.reduce(),
                  width: 4,
                  color: Color.fromARGB(255, 39, 119, 252),
                ),
              ),
            ),
            child: ClipPath(
              clipper: TrapezoidClipper(),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter, // Start from the top
                    end: Alignment.bottomCenter, // End at the bottom
                    colors: [
                      Color.fromARGB(255, 202, 222, 255),
                      Color.fromARGB(255, 242, 245, 250),
                    ],
                  ),
                ),
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 10),
          child: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              color: selectedIndex == index
                  ? const Color.fromARGB(255, 90, 151, 253)
                  : Colors.black,
            ),
          ),
        ),
      ],
    ),
    label: label,
  );
}

class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double topWidthFactor = 0.8; // Adjust this to make the top narrower
    double topWidth = size.width * topWidthFactor;
    double sidePadding = (size.width - topWidth) / 2;

    Path path = Path();
    path.moveTo(sidePadding, 0); // Start at the top-left narrowed point
    path.lineTo(size.width - sidePadding, 0); // Top-right narrowed point
    path.lineTo(size.width, size.height); // Bottom-right
    path.lineTo(0, size.height); // Bottom-left
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
