import 'package:flutter/material.dart';
import 'package:kartify_applicaion/presentation/colors/colors.dart';
import 'package:kartify_applicaion/presentation/fonts/normal_font.dart';
import 'package:kartify_applicaion/screens/profile/widget/profile_contents.dart';

class UserProfileScreen extends StatelessWidget {
  UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212,228,254),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 55,
                          backgroundImage:
                              AssetImage("assets/images/profile_women.png"),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 80, top: 80),
                            child: CircleAvatar(
                              backgroundColor: Colors.lightBlueAccent,
                              radius: 20,
                            ),
                            )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: NormalTextWidget(text: "Smitha Williams",fontWeight: FontWeight.w600,fontSize: 18,),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: cWhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ProfileScreenContents(
                      imagePath: 'assets/svg_images/box.svg',
                      text: 'Order',
                      backgroundColor: const Color.fromARGB(255, 233, 241, 255),
                    ),
                    ProfileScreenContents(
                      imagePath: 'assets/svg_images/coupon.svg',
                      text: 'Voucher',
                      backgroundColor: const Color.fromARGB(255, 255, 247, 246),
                    ),
                    ProfileScreenContents(
                      imagePath: 'assets/svg_images/review.svg',
                      text: 'Review',
                      backgroundColor: const Color.fromARGB(255, 255, 249, 237),
                    ),
                    ProfileScreenContents(
                      imagePath: 'assets/svg_images/help.svg',
                      text: 'Help',
                      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: cWhite,
              child: Padding(
                padding: const EdgeInsets.only(top: 15, right: 10, left: 15),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 30,
                        child: Row(
                          children: [
                            NormalTextWidget(
                              text: optionList[index],
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: Colors.grey.shade800,
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Colors.grey.shade300,
                      );
                    },
                    itemCount: optionList.length),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<String> optionList = [
    'Edit your profile',
    'Manage Address',
    'Payment Methods',
    'Settings',
    'Privacy policy',
    'Logout',
  ];
}
