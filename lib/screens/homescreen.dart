import 'package:flutter/material.dart';
import 'package:kartify_applicaion/constants/sizes.dart';
import 'package:kartify_applicaion/fonts/normal_font.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

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
            color: const Color.fromARGB(255, 39, 119, 252),
            height: 80,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                  child: Image.asset(
                    'assets/images/kartify_logo.png',
                  ),
                ),
              ],
            ),
          ),
          ListTile(
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
            title: NormalTextWidget(
              text: "Smitha Williams",
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
            subtitle: NormalTextWidget(
                text: "Edit Account", color: Colors.grey, fontSize: 13),
          ),
          SizedBox(
            height: 500,
            child: ListView.separated(
              itemBuilder: (context, index) {
                String text =
                    drawerIconImages.keys.elementAt(index); 
                String imagePath = drawerIconImages[text]!; 

                return Row(
                  children: [
                    Container(
                      width: 20, // Set width for image container
                      height: 20, // Set height for image container
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage(imagePath), // Use image path from map
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), // Add spacing
                    NormalTextWidget(
                      fontSize: 14,
                      text: text), // Use text from map
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return h10sizedbox;
              },
              itemCount: drawerIconImages.length,
            ),
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

  final Map<String, String> drawerIconImages = {
    "Home": "assets/images/Drawer/home.png",
    "Category": "assets/images/Drawer/category.png",
    "Cart": "assets/images/Drawer/category.png",
    "Wishlist": "assets/images/Drawer/category.png",
    "Profile": "assets/images/Drawer/category.png",
    "Template Pages": "assets/images/Drawer/category.png",
    "Template Elements": "assets/images/Drawer/category.png",
    "RTL": "assets/images/Drawer/category.png",
    "Dark": "assets/images/Drawer/category.png"
  };
}
