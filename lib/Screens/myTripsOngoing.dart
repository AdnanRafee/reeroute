import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/Screens/trackMyBookings.dart';
import 'package:reeroute/util/colors.dart';

import '../common/bottomNavigation.dart';
import 'bookings.dart';
import 'homeScreen.dart';

class MyTripsOngoing extends StatefulWidget {
  const MyTripsOngoing({Key? key}) : super(key: key);

  @override
  State<MyTripsOngoing> createState() => _MyTripsOngoingState();
}

class _MyTripsOngoingState extends State<MyTripsOngoing> {
  int myIndex = 1;
  final screens = [HomeScreen(), Bookings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'My Trips',
            style: TextStyle(
                fontSize: 24,
                color: ColorSelect.primaryColor,
                fontFamily: 'rubik',
                fontWeight: FontWeight.w500),
          ),
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.chevron_left,
              size: 22,
              color: ColorSelect.primaryColor,
            ),
          ),
          titleSpacing: 44,
          leadingWidth: 0,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              // height: 66,
              width: double.infinity,
              // color: Colors.yellowAccent,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x1A000000),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(27, 15, 27, 25),
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: ColorSelect.secondaryGreen,
                      size: 8,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Mumbai',
                      style: TextStyle(
                          color: ColorSelect.primaryColor,
                          fontSize: 16,
                          fontFamily: 'rubik'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        width: 179,
                        child: Divider(
                          thickness: 1,
                          color: Color(0x26000000),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.square,
                      size: 8,
                      color: Color(0xffEA1414),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Delhi',
                      style: TextStyle(
                          color: ColorSelect.primaryColor,
                          fontSize: 16,
                          fontFamily: 'rubik'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Material Type',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorSelect.primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Vehicle Type',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorSelect.primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Material Weight',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorSelect.primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Truck Height',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorSelect.primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Amount Paid',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorSelect.primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Status',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorSelect.primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'LR',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorSelect.primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'PoD',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorSelect.primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ]),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 170,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ':    Processed Items',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorSelect.primaryColor,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          ':    Open Truck',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorSelect.primaryColor,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          ':    1 Ton',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorSelect.primaryColor,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          ':    6 Ft',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorSelect.primaryColor,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          ':    ₹ 20,000/- ',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorSelect.primaryColor,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          ':    Ongoing',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorSelect.primaryColor,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'View',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: ColorSelect.orangeColor,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Download',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: ColorSelect.orangeColor,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'View',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: ColorSelect.orangeColor,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Download',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: ColorSelect.orangeColor,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0x3DD9D9D9),
                    borderRadius: BorderRadius.circular(12)),
                height: 237,
                width: 354,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(26, 22, 0, 24),
                        child: Text(
                          'Driver Details',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: ColorSelect.primaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                        child: Row(
                          children: [
                            Text(
                              'Drivers Name',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: ColorSelect.primaryColor,
                              ),
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              ':    Some Name',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: ColorSelect.primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 42),
                        child: Row(
                          children: [
                            Text(
                              'Vehicle No.',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: ColorSelect.primaryColor,
                              ),
                            ),
                            SizedBox(
                              width: 44,
                            ),
                            Text(
                              ':    MH 04 SS 1998',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: ColorSelect.primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                            height: 40,
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        ColorSelect.orangeColor),
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)))),
                                onPressed: () {},
                                child: Text(
                                  'Call Driver',
                                  style: TextStyle(
                                      fontSize: 12, fontFamily: 'inter'),
                                ))),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(children: [
                Expanded(
                    child: SizedBox(
                  height: 35,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(ColorSelect.orangeColor),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  side: BorderSide(color: Color(0xffF79633)),
                                  borderRadius: BorderRadius.circular(8)))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TrackMyBookings()),
                        );
                      },
                      child: Text(
                        'Track Your Booking'.tr,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'inter',
                            fontSize: 12),
                      )),
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: SizedBox(
                  height: 35,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: ColorSelect.orangeColor),
                                  borderRadius: BorderRadius.circular(8)))),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => EnterYourDetails()));
                      },
                      child: Text(
                        'Cancel Booking'.tr,
                        style: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 12,
                            color: Colors.black),
                      )),
                ))
              ]),
            ),
            SizedBox(
              height: 45,
            )
          ]),
        ),
        bottomNavigationBar: Container(
          height: 67,
          child: BottomNavigationBar(
              currentIndex: myIndex,
              onTap: (index) {
                setState(() {
                  myIndex = index;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavigation()));
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
        ));
  }
}
