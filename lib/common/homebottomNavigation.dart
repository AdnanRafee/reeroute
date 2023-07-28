import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/Screens/Home%20&%20book%20truck/homeScreen.dart';

import '../Screens/my bookings/bookings.dart';
import '../Screens/profile/profile.dart';
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
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Container(
            child: TabBarView(
              children: [HomeScreen(), Bookings(), Profile()],
            ),
          ),
          // screens[myIndex],
          bottomNavigationBar: Container(
            height: 67,
            child: TabBar(
                padding: EdgeInsets.only(right: 0),
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: ColorSelect.orangeColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  insets: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 65),
                ),
                // indicatorColor: Colors.red,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Color(0xff484C52),
                labelStyle: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
                unselectedLabelColor: Color(0xff777777),
                tabs: [
                  Tab(
                    child: Column(children: [
                      Image.asset('assets/images/home.png', width: 67),
                      Text(
                        'Home'.tr,
                        style: TextStyle(fontFamily: 'poppins', fontSize: 12),
                      )
                    ]),
                  ),
                  Tab(
                      child: Column(children: [
                    Image.asset('assets/images/delivery.png', width: 24),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Bookings'.tr,
                      style: TextStyle(fontFamily: 'poppins', fontSize: 12),
                    )
                  ])),
                  Tab(
                    child: Column(children: [
                      Image.asset('assets/images/li_user.png', width: 24),
                      Text(
                        'Profile'.tr,
                        style: TextStyle(fontFamily: 'poppins', fontSize: 12),
                      )
                    ]),
                  )
                ]),
          ),
          // bottomNavigationBar: Container(
          //   height: 67,
          //   child: BottomNavigationBar(
          //       currentIndex: myIndex,
          //       onTap: (index) {
          //         setState(() {
          //           myIndex = index;
          //         });
          //       },
          //       items: [
          //         BottomNavigationBarItem(
          //           // activeIcon: Container(
          //           //   decoration: UnderlineTabIndicator(
          //           //     borderSide: BorderSide(
          //           //       color: ColorSelect.orangeColor,
          //           //       width: 3,
          //           //     ),
          //           //     borderRadius: BorderRadius.circular(10),
          //           //     insets: EdgeInsets.fromLTRB(40, 0.0, 40.0, 20.0),
          //           //   ),
          //           // ),                                               Important !!!!
          //           icon: Image.asset(
          //             'assets/images/home.png',
          //             fit: BoxFit.fitWidth,
          //             width: 73,
          //             height: 30,
          //           ),
          //           label: 'Home'.tr,
          //         ),
          //         BottomNavigationBarItem(
          //           icon: Image.asset('assets/images/delivery.png', width: 27),
          //           label: 'Bookings'.tr,
          //         ),
          //         BottomNavigationBarItem(
          //           icon: Image.asset('assets/images/li_user.png', width: 24),
          //           label: 'Profile'.tr,
          //         )
          //       ]),
          // ),
        ));
  }
}
