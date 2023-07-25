import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/common/bottomNavigation.dart';

import '../common/appBarReeroute.dart';
import '../util/colors.dart';

class AddressSuccessfullyUpdated extends StatefulWidget {
  const AddressSuccessfullyUpdated({Key? key}) : super(key: key);

  @override
  State<AddressSuccessfullyUpdated> createState() =>
      _AddressSuccessfullyUpdatedState();
}

class _AddressSuccessfullyUpdatedState
    extends State<AddressSuccessfullyUpdated> {
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
          'Address added sucessfully',
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
            padding: EdgeInsets.symmetric(horizontal: 25),
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
                                MaterialStatePropertyAll(Color(0xffF79633)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavigation()));
                        },
                        child: Text(
                          'Go Home'.tr,
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
