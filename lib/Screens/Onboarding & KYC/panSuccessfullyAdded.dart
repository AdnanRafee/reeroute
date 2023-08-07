import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/Screens/Onboarding%20&%20KYC/aadhaarFrontSide.dart';
import 'package:reeroute/Screens/Onboarding%20&%20KYC/panCardCheck.dart';
import 'package:reeroute/common/appBarReeroute.dart';
import 'package:reeroute/util/colors.dart';

class PanSuccessfullyAdded extends StatefulWidget {
  const PanSuccessfullyAdded({Key? key}) : super(key: key);

  @override
  State<PanSuccessfullyAdded> createState() => _PanSuccessfullyAddedState();
}

class _PanSuccessfullyAddedState extends State<PanSuccessfullyAdded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarReeroute(),
      body: Column(children: [
        SizedBox(
          height: 90,
        ),
        Center(
            child: Container(
                width: 75, child: Image.asset('assets/images/doubleTick.png'))),
        SizedBox(
          height: 33,
        ),
        Text(
          'PAN Successfully Added'.tr,
          style: TextStyle(
              color: ColorSelect.primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'rubik'),
        ),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 33),
          child: Text(
              textAlign: TextAlign.center,
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: TextStyle(
                  fontFamily: 'krub',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: ColorSelect.primaryColor)),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 104,
              margin: EdgeInsets.symmetric(vertical: 16),
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                      child: SizedBox(
                    height: 54,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    side: BorderSide(color: Color(0xffF79633)),
                                    borderRadius: BorderRadius.circular(12)))),
                        onPressed: () {},
                        child: Text(
                          'Cancel'.tr,
                          style: TextStyle(
                              color: Color(0xffF79633),
                              fontFamily: 'inter',
                              fontSize: 18),
                        )),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: SizedBox(
                    height: 54,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xffF79633)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PanCardCheck()));
                        },
                        child: Text(
                          'Continue'.tr,
                          style: TextStyle(fontFamily: 'inter', fontSize: 18),
                        )),
                  ))
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
