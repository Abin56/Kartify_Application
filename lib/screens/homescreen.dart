import 'package:flutter/material.dart';
import 'package:kartify_applicaion/constants/sizes.dart';
import 'package:kartify_applicaion/fonts/normal_font.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
    int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
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
          h20sizedbox,
          SizedBox(
            height: 500,
            child: ListView.separated(
              itemBuilder: (context, index) {
                String text = drawerIconImages.keys.elementAt(index);
                String imagePath = drawerIconImages[text]!;

                return Row(
                  children: [
                    w20sizedbox,
                    h20sizedbox,
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
                        fontSize: 14, text: text), // Use text from map
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
    "Cart": "assets/images/Drawer/shopping-cart.png",
    "Wishlist": "assets/images/Drawer/love.png",
    "Profile": "assets/images/Drawer/user.png",
    "Template Pages": "assets/images/Drawer/Template Pages.png",
    "Template Elements": "assets/images/Drawer/Template Elements.png",
    "RTL": "assets/images/Drawer/RTL.png",
    "Dark": "assets/images/Drawer/.png"
  };
  BottomNavigationBarItem _buildNavItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Stack(
        alignment: Alignment.center,
        children: [
          if (_selectedIndex == index)
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.blue.shade100.withOpacity(0.5),
                shape: BoxShape.circle,

              ),
            ),
          Icon(icon, size: 24),
        ],
      ),
      label: label,
    );
  }
}
