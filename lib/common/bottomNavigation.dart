import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/Screens/homeScreen.dart';

import '../Screens/bookings.dart';

class BottomNavigation extends StatefulWidget implements PreferredSizeWidget {
  const BottomNavigation({Key? key}) : super(key: key);
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _myIndex = 0;
  final screens = [HomeScreen(), Bookings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_myIndex],
      bottomNavigationBar: Container(
        height: 67,
        child: BottomNavigationBar(
            currentIndex: _myIndex,
            onTap: (index) {
              setState(() {
                _myIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
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
