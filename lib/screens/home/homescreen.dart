import 'package:flutter/material.dart';
import 'package:kartify_applicaion/colors/colors.dart';
import 'package:kartify_applicaion/screens/cart/cart_screen.dart';
import 'package:kartify_applicaion/screens/category/category_screen.dart';
import 'package:kartify_applicaion/screens/home/drawer/drawer.dart';
import 'package:kartify_applicaion/screens/home/nav_bar/nav_bar.dart';
import 'package:kartify_applicaion/screens/profile/profile_screen.dart';
import 'package:kartify_applicaion/screens/wishlist/wishlist_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;

  // List of pages corresponding to the navbar index
  final List<Widget> _pages = [
    UserProfileScreen(), // Index 0 (Fixed Circular Reference)
    CategoryScreen(), // Index 1
    CartScreen(), // Index 2
    WishListScreen(), // Index 3
    UserProfileScreen(), // Index 4
  ];

  onPageChanged(int page) {
    setState(() {
      _selectedIndex = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HomeScreen")),
      body: _pages[_selectedIndex],
      drawer: DrawerWidget(drawerIconImages: drawerIconImages),
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: false,
        currentIndex: _selectedIndex,
        backgroundColor: cWhite,
        onTap: onPageChanged,
        selectedItemColor: const Color.fromARGB(255, 39, 119, 252),
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
        showUnselectedLabels: true,
        items: [
          buildNavItem(
              'assets/images/Drawer/home.png', "Home", 0, _selectedIndex),
          buildNavItem('assets/images/Drawer/category.png', "Category", 1,
              _selectedIndex),
          buildNavItem('assets/images/Drawer/shopping-cart.png', "Cart", 2,
              _selectedIndex),
          buildNavItem(
              'assets/images/Drawer/love.png', "Wishlist", 3, _selectedIndex),
          buildNavItem(
              'assets/images/Drawer/user.png', "Profile", 4, _selectedIndex),
        ],
      ),
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
}
