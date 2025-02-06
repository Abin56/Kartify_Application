import 'package:flutter/material.dart';
import 'package:kartify_applicaion/constants/sizes.dart';
import 'package:kartify_applicaion/fonts/normal_font.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
      drawer: Drawer(
          child: Column(
        children: [
          Container(
            color: Colors.blueAccent,
            height: 100,
            width: double.infinity,
            child:  Image.asset('assets/images/kartify_logo.png',
        
          ),),
          h20sizedbox,
          NormalTextWidget(
              text: "Smitha Williams",
              fontWeight: FontWeight.w500,
              fontSize: 18),
          NormalTextWidget(
            text: "Edit Account",
            color: Colors.grey,
            fontSize: 16,
          ),
          Row(
            children: [Icon(Icons.home), w20sizedbox, Text("Home")],
          ),
          h20sizedbox,
          Row(
            children: [Icon(Icons.category), w20sizedbox, Text("Category")],
          ),
          h20sizedbox,
          Row(
            children: [Icon(Icons.shopping_basket), w20sizedbox, Text("Cart")],
          ),
          h20sizedbox,
          Row(
            children: [Icon(Icons.heart_broken), w20sizedbox, Text("Wishlist")],
          ),
          h20sizedbox,
          Row(
            children: [Icon(Icons.person), w20sizedbox, Text("Profile")],
          ),
          h20sizedbox,
          Row(
            children: [Icon(Icons.pages), w20sizedbox, Text("Template Pages")],
          ),
          h20sizedbox,
          Row(
            children: [
              Icon(Icons.pages_rounded),
              w20sizedbox,
              Text("Template Elements")
            ],
          ),
          h20sizedbox,
          Row(
            children: [Icon(Icons.currency_exchange), w20sizedbox, Text("RTL")],
          ),
          h20sizedbox,
          Row(
            children: [Icon(Icons.brush), w20sizedbox, Text("Dark")],
          ),
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.lightBlueAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.logout), Text("Logout")],
            ),
          )
        ],
      )),
    );
  }
}
