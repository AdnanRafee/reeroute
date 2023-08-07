import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:reeroute/Screens/Home%20&%20book%20truck/bookingDetails.dart';
import 'package:reeroute/Screens/Home%20&%20book%20truck/route_laneAddress.dart';
import 'package:reeroute/pages/reviewPage_1.dart';
import 'package:reeroute/util/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../pages/reviewPage_2.dart';
import '../../pages/truckAdvertPage_1.dart';
import '../../pages/truckAdvertPage_2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();
  bool onLastPage = false;
  final truck_controller = PageController();
  bool onLastPageTruck = false;
  // int myIndex = 0;
  // final screens = [Bookings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(12, 0, 26, 0),
              child: SvgPicture.asset('assets/images/headerIcon.svg'),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 6),
              child: Image.asset(
                'assets/images/Notification.png',
                width: 30,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    35, MediaQuery.of(context).size.height * 0.03, 35, 50),
                child: Column(
                  children: [
                    Container(
                      child: SizedBox(
                        width: double.infinity,
                        child: TimelineTile(
                          afterLineStyle: LineStyle(thickness: 1),
                          indicatorStyle: IndicatorStyle(
                              color: ColorSelect.secondaryGreen,
                              width: 10,
                              iconStyle: IconStyle(
                                color: ColorSelect.secondaryGreen,
                                iconData: Icons.fiber_manual_record,
                              )),
                          alignment: TimelineAlign.start,
                          endChild: Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 30, 0),
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Text('From'.tr,
                                        style: TextStyle(
                                            fontFamily: 'krub',
                                            color: ColorSelect.primaryColor))),
                                TextField(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RouteAddress()));
                                  },
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 0),
                                      isDense: true,
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      labelText:
                                          'Enter loading location  (e.g. Delhi)',
                                      labelStyle: TextStyle(
                                          color: Color(0xff2A4F6D33))),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 23),
                                    child: Text(
                                      'To'.tr,
                                      style: TextStyle(
                                          fontFamily: 'krub',
                                          color: ColorSelect.primaryColor),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          isFirst: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TimelineTile(
                        beforeLineStyle: LineStyle(thickness: 1),
                        indicatorStyle: IndicatorStyle(
                            color: Colors.transparent,
                            width: 10,
                            iconStyle: IconStyle(
                              fontSize: 10,
                              color: Color(0xffEA1414),
                              iconData: Icons.square,
                            )),
                        alignment: TimelineAlign.start,
                        endChild: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 30, 0),
                          child: TextField(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RouteAddress()));
                            },
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 0),
                                isDense: true,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                labelText:
                                    'Enter unloading location  (e.g. Mumbai)'
                                        .tr,
                                labelStyle:
                                    TextStyle(color: Color(0xff2A4F6D33))),
                          ),
                        ),
                        isLast: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 160,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                controller: truck_controller,
                onPageChanged: (index) {
                  setState(() {
                    onLastPageTruck = (index == 1);
                  });
                },
                children: [TruckAdvertPage_1(), TruckAdvertPage_2()],
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: truck_controller,
                count: 2,
                effect: WormEffect(
                    activeDotColor: Color(0xffF79633),
                    dotColor: Color(0xffD9D9D9),
                    dotHeight: 10,
                    dotWidth: 10),
              ),
            ),
            // Container(child: Image.asset('assets/images/truckReeroute.png')),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Container(
                  height: 148,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffFDEAD6),
                      border: Border.all(width: 0, color: Colors.transparent)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: SizedBox(
                            height: 100,
                            width: 79,
                            child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Color(0xffFBD9B5),
                                    borderRadius: BorderRadius.circular(8)))),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 25, 5, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Complete your KYC now'.tr,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: ColorSelect.primaryColor,
                                  fontFamily: 'rubik'),
                            ),
                            SizedBox(
                              width: 220,
                              child: Padding(
                                padding: EdgeInsets.only(top: 13),
                                child: Text(
                                  'Lorem Ipsum is simply dummy text of the  printing and typesetting industry.'
                                      .tr,
                                  style: TextStyle(
                                      color: Color(0xff2A4F6DCC), fontSize: 12),
                                  maxLines: 3,
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                'Start KYC now'.tr,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xffF79633),
                                    fontFamily: 'krub'),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Image.asset('assets/images/truckAdvert.png'),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Text(
                'Testimonials'.tr,
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'krub',
                    color: ColorSelect.primaryColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    onLastPage = (index == 2);
                  });
                },
                children: [ReviewPage_1(), ReviewPage_2()],
              ),
            ),

            Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 2,
                effect: WormEffect(
                    activeDotColor: Color(0xffF79633),
                    dotColor: Color(0xffD9D9D9),
                    dotHeight: 10,
                    dotWidth: 10),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                    border: Border.all(width: 0, color: Colors.transparent)),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300,
                          child: ListTile(
                            leading: Image.asset('assets/images/userPic.png'),
                            title: Text(
                              '24 X 7 Helpline'.tr,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'rubik',
                                  color: ColorSelect.primaryColor),
                            ),
                            subtitle: Text(
                              'Contact in case of any query.'.tr,
                              style: TextStyle(
                                  color: ColorSelect.primaryColor,
                                  fontFamily: 'krub',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(18, 0, 18, 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 35,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Color(0xffF79633)),
                                          shape: MaterialStatePropertyAll(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8)))),
                                      onPressed: () {},
                                      child: Text(
                                        'Call us'.tr,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'inter',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                  child: SizedBox(
                                height: 35,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color(0xffF79633)),
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)))),
                                    onPressed: () {},
                                    child: Text(
                                      'Chat on WhatsApp'.tr,
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontFamily: 'inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )),
                              ))
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Text(
                'Ongoing Requests'.tr,
                style: TextStyle(
                    fontFamily: 'inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: ColorSelect.orangeColor),
              ),
            ),

            ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (BuildContext, int index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    decoration: BoxDecoration(),
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    width: 350,
                    height: 70,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookingDetails()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text(
                              'Mumbai'.tr,
                              style: TextStyle(
                                  color: ColorSelect.primaryColor,
                                  fontFamily: 'rubik',
                                  fontSize: 18),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0XFF003A5D),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              'Delhi',
                              style: TextStyle(
                                  color: ColorSelect.primaryColor,
                                  fontFamily: 'rubik',
                                  fontSize: 18),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Icon(
                                Icons.chevron_right,
                                color: Color(0xff003A5D),
                              ),
                            )
                          ]),
                          Padding(
                            padding: EdgeInsets.zero,
                            child: Row(
                              children: [
                                Text(
                                  '6FT. Truck'.tr,
                                  style: TextStyle(
                                      color: ColorSelect.primaryColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'krub'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 38),
                                  child: Text(
                                    'Processed Items'.tr,
                                    style: TextStyle(
                                        color: ColorSelect.primaryColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: 'krub'),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: Color(0xffD3D3D3),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 70,
            )
          ],
        ),
      ),
    );
  }
}
