import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/Screens/Onboarding%20&%20KYC/gstNumber.dart';

import '../../common/appBarReeroute.dart';
import '../../common/button.dart';
import '../../common/homebottomNavigation.dart';
import '../../util/colors.dart';

class PanCardCheck extends StatefulWidget {
  const PanCardCheck({Key? key}) : super(key: key);

  @override
  State<PanCardCheck> createState() => _PanCardCheckState();
}

class _PanCardCheckState extends State<PanCardCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarReeroute(),
      body: Padding(
          padding: EdgeInsets.fromLTRB(
              22, MediaQuery.of(context).size.height * 0.05, 29, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your KYC'.tr,
                style: TextStyle(
                    fontFamily: 'rubik',
                    fontSize: 18,
                    color: ColorSelect.primaryColor),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 37,
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                      .tr,
                  style: TextStyle(
                      color: ColorSelect.primaryColor,
                      fontSize: 12,
                      fontFamily: 'krub'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                  contentPadding:
                      EdgeInsetsDirectional.symmetric(horizontal: 0),
                  leading: Container(
                    width: 60, // Adjust the width as needed
                    // Adjust the height as needed
                    foregroundDecoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xff2A4F6D1A),
                        width: 1.0,
                      ),
                    ),
                    child: ClipOval(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Image.asset(
                            'assets/images/webVector.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    'PAN Card'.tr,
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: Text(
                    'Govt. issued PAN Card'.tr,
                    style: TextStyle(
                      color: ColorSelect.secondaryGreen,
                      fontFamily: 'rubik',
                      fontSize: 12,
                    ),
                  ),
                  trailing: Image.asset(
                    'assets/images/doubleTick.png',
                    width: 32,
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Container(
                  height: 44,
                  width: 2,
                  color: Color(0x26000000),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 0),
                leading: Container(
                  width: 60, // Adjust the width as needed
                  // Adjust the height as needed
                  foregroundDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xff2A4F6D1A),
                      width: 1.0,
                    ),
                  ),
                  child: ClipOval(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(7, 7, 7, 9),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Image.asset(
                          'assets/images/gstIcon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                title: Text(
                  'GST Certificate'.tr,
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  'Govt. issued GST Certificate'.tr,
                  style: TextStyle(
                    color: ColorSelect.secondaryGreen,
                    fontFamily: 'rubik',
                    fontSize: 12,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Color(0xff003A5D),
                  size: 32,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(32, 5, 0, 5),
                child: Container(
                  height: 41,
                  width: 2,
                  color: Color(0x26000000),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 2),
                leading: Container(
                  width: 60, // Adjust the width as needed
                  // Adjust the height as needed
                  foregroundDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xff2A4F6D1A),
                      width: 1.0,
                    ),
                  ),
                  child: ClipOval(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Image.asset(
                          'assets/images/webVector.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                title: Text(
                  'Aadhaar'.tr,
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  'Govt. issued AADHAR'.tr,
                  style: TextStyle(
                    color: Color(0xffDBDADE),
                    fontFamily: 'rubik',
                    fontSize: 12,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Color(0xff003A5D),
                  size: 32,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavigation()));
                },
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text('Do this Later',
                      style: TextStyle(
                          color: ColorSelect.primaryColor,
                          fontSize: 18,
                          fontFamily: 'rubik')),
                ),
              )
            ],
          )),
      bottomNavigationBar: ContinueBtnSimple(
          title: 'Continue my KYC'.tr,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => GstNumber()));
          }),
    );
  }
}
