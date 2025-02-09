import 'package:flutter/material.dart';
import 'package:kartify_applicaion/colors/colors.dart';
import 'package:kartify_applicaion/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: cWhite,
        appBarTheme: AppBarTheme(color: cWhite),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.userprofilepage,
      routes: AppRoutes.getRoutes(),
    );
  }
}
//