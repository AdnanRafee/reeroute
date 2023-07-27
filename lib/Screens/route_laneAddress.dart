import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/Screens/truckRequirement.dart';
import 'package:reeroute/common/button.dart';

import '../util/colors.dart';

class RouteAddress extends StatefulWidget {
  const RouteAddress({Key? key}) : super(key: key);

  @override
  State<RouteAddress> createState() => _RouteAddressState();
}

class _RouteAddressState extends State<RouteAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleSpacing: 0,
          leading: BackButton(color: Color(0xff2a4f6d)),
          elevation: 1,
          title: Text(
            "Route/Lane",
            style: TextStyle(
              fontFamily: 'krub',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.475,
              color: Color(0xff2a4f6d),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 68),
                child: Text('From',
                    style: TextStyle(
                      fontFamily: 'krub',
                      fontSize: 12,
                      color: ColorSelect.primaryColor,
                    )),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(6, 20, 0, 0),
                            child: Icon(
                              Icons.circle,
                              color: ColorSelect.secondaryGreen,
                              size: 8,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                            child: Container(
                              height: 52,
                              width: 1,
                              color: Color(0x26000000),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.5),
                            child: Icon(
                              Icons.square,
                              size: 8,
                              color: Color(0xffEA1414),
                            ),
                          )
                        ]),
                    SizedBox(
                      width: 24,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 260,
                          child: TextField(
                            onTap: () {},
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 0),
                                isDense: true,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                labelText:
                                    'Enter loading location  (e.g. Mumbai)'.tr,
                                labelStyle:
                                    TextStyle(color: Color(0xff2A4F6D33))),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'To',
                          style: TextStyle(
                            fontFamily: 'krub',
                            fontSize: 12,
                            color: ColorSelect.primaryColor,
                          ),
                        ),
                        Container(
                          width: 260,
                          child: TextField(
                            onTap: () {},
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 0),
                                isDense: true,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                labelText:
                                    'Enter loading location  (e.g. Mumbai)'.tr,
                                labelStyle:
                                    TextStyle(color: Color(0xff2A4F6D33))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color(0x26000000),
                height: MediaQuery.of(context).size.height * 0.6,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/mapImage.png',
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ContinueButton(
          title: 'Continue',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TruckRequirement()));
          },
        ));
  }
}
