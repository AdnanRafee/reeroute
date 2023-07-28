import 'package:flutter/material.dart';
import 'package:reeroute/Screens/Home%20&%20book%20truck/requestQuoteSuccessful.dart';

import '../../common/button.dart';
import '../../util/colors.dart';

class VerifyTruckBooking extends StatefulWidget {
  const VerifyTruckBooking({Key? key}) : super(key: key);

  @override
  State<VerifyTruckBooking> createState() => _VerifyTruckBookingState();
}

class _VerifyTruckBookingState extends State<VerifyTruckBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Verify',
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
      body: Column(
        children: [
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
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      ]),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: ContinueButton(
          title: 'Request a Quote',
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RequestQuoteSuccessful()));
          }),
    );
  }
}
