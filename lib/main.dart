import 'package:flutter/material.dart';
import 'package:kartify_applicaion/rachna.dart';

void main(){

print("hello");
  runApp(MyApp());


}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  ClassRachana(),
    );
  }
}
