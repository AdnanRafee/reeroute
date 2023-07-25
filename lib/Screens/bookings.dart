import 'package:flutter/material.dart';
import 'package:reeroute/util/colors.dart';
import '../common/ActiveTripsBar.dart';
import '../common/completedTripsBar.dart';

class Bookings extends StatefulWidget {
  const Bookings({Key? key}) : super(key: key);

  @override
  State<Bookings> createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'My Bookings',
                    style: TextStyle(
                        fontFamily: 'rubik',
                        fontSize: 24,
                        color: ColorSelect.primaryColor),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TabBar(
                    padding: EdgeInsets.only(right: 29),
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        color: ColorSelect.orangeColor,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      insets: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
                    ),
                    // indicatorColor: Colors.red,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: ColorSelect.orangeColor,
                    labelStyle: TextStyle(
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                    unselectedLabelColor: Color(0xff777777),
                    unselectedLabelStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w400),
                    tabs: [
                      Tab(
                        text: 'Active Trips',
                      ),
                      Tab(
                        text: 'Completed Trips',
                      )
                    ]),
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: TabBarView(
                    children: [
                      ActiveTripsBar(),
                      CompletedTripsBar(),
                    ],
                  ),
                ),

                // ListView.builder(
                //   physics: ScrollPhysics(),
                //   shrinkWrap: true,
                //   itemCount: 4,
                //   itemBuilder: (BuildContext, int dex) {
                //     return Column(
                //       children: [
                //         Padding(
                //           padding: EdgeInsets.fromLTRB(35, 25, 40, 25),
                //           child: Row(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Padding(
                //                 padding: EdgeInsets.only(right: 15),
                //                 child: Column(
                //                   children: [
                //                     Padding(
                //                       padding: EdgeInsets.fromLTRB(6, 5, 0, 0),
                //                       child: Icon(
                //                         Icons.circle,
                //                         color: ColorSelect.secondaryGreen,
                //                         size: 8,
                //                       ),
                //                     ),
                //                     Padding(
                //                       padding: EdgeInsets.fromLTRB(6, 5, 0, 5),
                //                       child: Container(
                //                         height: 36,
                //                         width: 1,
                //                         color: Color(0x26000000),
                //                       ),
                //                     ),
                //                     Padding(
                //                       padding: EdgeInsets.only(left: 6.5),
                //                       child: Icon(
                //                         Icons.square,
                //                         size: 8,
                //                         color: Color(0xffEA1414),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //               Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Text(
                //                     'Mumbai',
                //                     style: TextStyle(
                //                         color: ColorSelect.primaryColor,
                //                         fontSize: 16,
                //                         fontFamily: 'rubik',
                //                         fontWeight: FontWeight.w400),
                //                   ),
                //                   SizedBox(
                //                     height: 33,
                //                   ),
                //                   Text(
                //                     'Delhi',
                //                     style: TextStyle(
                //                         color: ColorSelect.primaryColor,
                //                         fontSize: 16,
                //                         fontFamily: 'rubik',
                //                         fontWeight: FontWeight.w400),
                //                   )
                //                 ],
                //               ),
                //               Spacer(),
                //               Column(
                //                 crossAxisAlignment: CrossAxisAlignment.end,
                //                 children: [
                //                   Padding(
                //                     padding: EdgeInsets.only(right: 5),
                //                     child: SizedBox(
                //                       height: 22,
                //                       width: 54,
                //                       child: ElevatedButton(
                //                           style: ButtonStyle(
                //                               padding:
                //                                   MaterialStateProperty.all(
                //                                       EdgeInsets.zero),
                //                               backgroundColor:
                //                                   MaterialStatePropertyAll(
                //                                       Colors.white),
                //                               shape: MaterialStatePropertyAll(
                //                                   RoundedRectangleBorder(
                //                                       side: BorderSide(
                //                                           color: Color(
                //                                               0xffF79633)),
                //                                       borderRadius:
                //                                           BorderRadius.circular(
                //                                               8)))),
                //                           onPressed: () {},
                //                           child: Text(
                //                             'Ongoing'.tr,
                //                             style: TextStyle(
                //                                 color: Color(0xffF79633),
                //                                 fontFamily: 'inter',
                //                                 fontSize: 8),
                //                           )),
                //                     ),
                //                   ),
                //                   SizedBox(
                //                     height: 28,
                //                   ),
                //                   Row(
                //                     children: [
                //                       GestureDetector(
                //                         onTap: () {
                //                           Navigator.push(
                //                               context,
                //                               MaterialPageRoute(
                //                                   builder: (context) =>
                //                                       MyTripsOngoing()));
                //                         },
                //                         child: Text(
                //                           'View Details',
                //                           style: TextStyle(
                //                             fontFamily: 'rubik',
                //                             color: ColorSelect.primaryColor,
                //                             fontSize: 12,
                //                           ),
                //                         ),
                //                       ),
                //                       Icon(
                //                         Icons.chevron_right,
                //                         size: 20,
                //                         color: ColorSelect.primaryColor,
                //                       )
                //                     ],
                //                   )
                //                 ],
                //               ),
                //             ],
                //           ),
                //         ),
                //         Padding(
                //             padding: EdgeInsets.symmetric(horizontal: 20),
                //             child: Divider(
                //               thickness: 1,
                //             ))
                //       ],
                //     );
                //   },
                // ),
              ]),
        ),
      )),
    );
  }
}
