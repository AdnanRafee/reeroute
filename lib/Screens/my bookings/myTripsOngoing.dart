import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/Screens/profile/profile.dart';
import 'package:reeroute/Screens/my%20bookings/trackMyBookings.dart';
import 'package:reeroute/common/homebottomNavigation.dart';
import 'package:reeroute/util/colors.dart';

import '../Home & book truck/homeScreen.dart';
import 'bookings.dart';

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
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          // backgroundColor: Colors.grey,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'My Trips'.tr,
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
                        'Mumbai'.tr,
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
                        'Delhi'.tr,
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
                            'Material Type'.tr,
                            style: TextStyle(
                                fontSize: 18,
                                color: ColorSelect.primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            'Vehicle Type'.tr,
                            style: TextStyle(
                                fontSize: 18,
                                color: ColorSelect.primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            'Material Weight'.tr,
                            style: TextStyle(
                                fontSize: 18,
                                color: ColorSelect.primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            'Truck Height'.tr,
                            style: TextStyle(
                                fontSize: 18,
                                color: ColorSelect.primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            'Amount Paid'.tr,
                            style: TextStyle(
                                fontSize: 18,
                                color: ColorSelect.primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            'Status'.tr,
                            style: TextStyle(
                                fontSize: 18,
                                color: ColorSelect.primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            'LR'.tr,
                            style: TextStyle(
                                fontSize: 18,
                                color: ColorSelect.primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            'PoD'.tr,
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
                            ':    Processed Items'.tr,
                            style: TextStyle(
                                fontSize: 18,
                                color: ColorSelect.primaryColor,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            ':    Open Truck'.tr,
                            style: TextStyle(
                                fontSize: 18,
                                color: ColorSelect.primaryColor,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            ':    1 Ton'.tr,
                            style: TextStyle(
                                fontSize: 18,
                                color: ColorSelect.primaryColor,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            ':    6 Ft'.tr,
                            style: TextStyle(
                                fontSize: 18,
                                color: ColorSelect.primaryColor,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            ':    ₹ 20,000/-'.tr,
                            style: TextStyle(
                                fontSize: 18,
                                color: ColorSelect.primaryColor,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            ':    Ongoing'.tr,
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
                                'View'.tr,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: ColorSelect.orangeColor,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Download'.tr,
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
                                'View'.tr,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: ColorSelect.orangeColor,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Download'.tr,
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
                            'Driver Details'.tr,
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
                                'Drivers Name'.tr,
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
                                'Vehicle No.'.tr,
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
                                    'Call Driver'.tr,
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
                            backgroundColor: MaterialStatePropertyAll(
                                ColorSelect.orangeColor),
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavigation()));
                      },
                      child: Column(children: [
                        Image.asset('assets/images/home.png', width: 67),
                        Text(
                          'Home'.tr,
                          style: TextStyle(fontFamily: 'poppins', fontSize: 12),
                        )
                      ]),
                    ),
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      child: Column(children: [
                        Image.asset('assets/images/li_user.png', width: 24),
                        Text(
                          'Profile'.tr,
                          style: TextStyle(fontFamily: 'poppins', fontSize: 12),
                        )
                      ]),
                    ),
                  )
                ]),
          ),
        ));
  }
}
