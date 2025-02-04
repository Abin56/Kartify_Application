import 'package:flutter/material.dart';
import 'package:kartify_applicaion/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.splashScreen,
      routes: AppRoutes.getRoutes(),
    );
  }
}
