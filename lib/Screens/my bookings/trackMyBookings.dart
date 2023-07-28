import 'package:flutter/material.dart';

import '../../util/colors.dart';

class TrackMyBookings extends StatefulWidget {
  const TrackMyBookings({Key? key}) : super(key: key);

  @override
  State<TrackMyBookings> createState() => _TrackMyBookingsState();
}

class _TrackMyBookingsState extends State<TrackMyBookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Track My Booking',
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
            Center(
              child: Container(
                  height: 379,
                  width: 367,
                  child: Image.asset('assets/images/MapPic.png')),
            ),
            SizedBox(
              height: 26,
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
          ]),
        ));
  }
}
