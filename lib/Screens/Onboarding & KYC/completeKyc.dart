import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/Screens/Onboarding%20&%20KYC/panCardKyc.dart';
import 'package:reeroute/common/homebottomNavigation.dart';

class CompleteKyc extends StatefulWidget {
  const CompleteKyc({Key? key}) : super(key: key);

  @override
  State<CompleteKyc> createState() => _CompleteKycState();
}

class _CompleteKycState extends State<CompleteKyc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.fromLTRB(
                29, MediaQuery.of(context).size.height * 0.15, 29, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Complete your KYC'.tr,
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'rubik',
                      color: Color(0xff2A4F6D)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'In order to ensure the security and compliance of our platform, we kindly request you to complete the Know Your Customer (KYC) verification process. This process helps us verify the identity of our users and maintain a safe and trustworthy environment for all.'
                      .tr,
                  style: TextStyle(
                      fontFamily: 'krub',
                      color: Color(0xff2A4F6D),
                      fontSize: 12),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  contentPadding:
                      EdgeInsetsDirectional.symmetric(horizontal: 0),
                  leading: Image.asset(
                    'assets/images/pan.png',
                    width: 45,
                  ),
                  title: Text(
                    'PAN'.tr,
                    style: TextStyle(
                        fontFamily: 'rubik', color: Color(0xff2A4F6D)),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Color(0xff003A5D),
                    size: 32,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  contentPadding:
                      EdgeInsetsDirectional.symmetric(horizontal: 0),
                  leading: Image.asset(
                    'assets/images/aadharHighQ.png',
                    width: 45,
                  ),
                  title: Text(
                    'Aadhaar Card'.tr,
                    style: TextStyle(
                        fontFamily: 'rubik', color: Color(0xff2A4F6D)),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Color(0xff003A5D),
                    size: 32,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                ListTile(
                  contentPadding:
                      EdgeInsetsDirectional.symmetric(horizontal: 0),
                  leading: Image.asset(
                    'assets/images/gst.png',
                    width: 45,
                  ),
                  title: Text(
                    'GST Certificate'.tr,
                    style: TextStyle(
                        fontFamily: 'rubik', color: Color(0xff2A4F6D)),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Color(0xff003A5D),
                    size: 32,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 54,
                      width: MediaQuery.of(context).size.width *
                          0.9, // Adjust the width value as needed
                      margin: EdgeInsets.symmetric(vertical: 16),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xffF79633)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PanCardKyc()));
                        },
                        child: Text(
                          'Start my KYC'.tr,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'inter'),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigation()));
                  },
                  child: Center(
                      child: Text(
                    ' Do this Later'.tr,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'rubik',
                        color: Color(0xff2A4F6D)),
                  )),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            )));
  }
}
