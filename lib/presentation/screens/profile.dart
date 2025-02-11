import 'package:flutter/material.dart';

class UserProfilepage extends StatelessWidget {
  const UserProfilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage('assets/images/profile_women.png'),
              )),
        ),
      ),
      
    );
  }
}
