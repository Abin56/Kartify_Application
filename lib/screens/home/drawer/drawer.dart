import 'package:flutter/material.dart';
import 'package:kartify_applicaion/constants/sizes.dart';
import 'package:kartify_applicaion/fonts/normal_font.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
    required this.drawerIconImages,
  });

  final Map<String, String> drawerIconImages;

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              decoration: const BoxDecoration(
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
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    NormalTextWidget(fontSize: 14, text: text),
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
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.logout), Text("Logout")],
            ),
          )
        ],
      ),
    );
  }
}