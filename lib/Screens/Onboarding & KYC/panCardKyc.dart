import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/common/appBarReeroute.dart';
import 'package:reeroute/common/button.dart';

import '../../util/colors.dart';
import 'panCardFrontSide.dart';

class PanCardKyc extends StatefulWidget {
  const PanCardKyc({Key? key}) : super(key: key);

  @override
  State<PanCardKyc> createState() => _PanCardKycState();
}

class _PanCardKycState extends State<PanCardKyc> {
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
                trailing: Icon(
                  Icons.chevron_right,
                  color: Color(0xff003A5D),
                  size: 32,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 8),
                child: Container(
                  height: 41,
                  width: 2,
                  color: Color(0x26000000),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: Container(
                  width: 58, // Adjust the width as needed
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
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(32, 8, 0, 8),
                child: Container(
                  height: 41,
                  width: 2,
                  color: Color(0x26000000),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: Container(
                  width: 68, // Adjust the width as needed
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
                        child: Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Image.asset(
                            'assets/images/gstIcon.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
      bottomNavigationBar: ContinueBtnSimple(
          title: 'Continue my KYC'.tr,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PanCardFrontSide()));
          }),
    );
  }
}
