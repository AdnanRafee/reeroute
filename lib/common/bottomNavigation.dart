import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/Screens/homeScreen.dart';

import '../Screens/bookings.dart';
import '../Screens/profile.dart';
import '../util/colors.dart';

class BottomNavigation extends StatefulWidget implements PreferredSizeWidget {
  const BottomNavigation({Key? key}) : super(key: key);
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int myIndex = 0;
  final screens = [HomeScreen(), Bookings(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[myIndex],
      bottomNavigationBar: Container(
        height: 67,
        child: BottomNavigationBar(
            currentIndex: myIndex,
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                // activeIcon: Container(
                //   decoration: UnderlineTabIndicator(
                //     borderSide: BorderSide(
                //       color: ColorSelect.orangeColor,
                //       width: 3,
                //     ),
                //     borderRadius: BorderRadius.circular(10),
                //     insets: EdgeInsets.fromLTRB(40, 0.0, 40.0, 20.0),
                //   ),
                // ),                                               Important !!!!
                icon: Image.asset(
                  'assets/images/home.png',
                  fit: BoxFit.fitWidth,
                  width: 73,
                  height: 30,
                ),
                label: 'Home'.tr,
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/delivery.png', width: 27),
                label: 'Bookings'.tr,
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/li_user.png', width: 24),
                label: 'Profile'.tr,
              )
            ]),
      ),
    );
  }
}
