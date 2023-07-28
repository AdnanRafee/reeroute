import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/common/appBarReeroute.dart';

import '../../common/homebottomNavigation.dart';
import '../../util/colors.dart';

class SuccessfullyPaid extends StatelessWidget {
  const SuccessfullyPaid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarReeroute(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(children: [
          SizedBox(
            height: 90,
          ),
          Center(
              child: Container(
                  width: 75,
                  child: Image.asset('assets/images/doubleTick.png'))),
          SizedBox(
            height: 33,
          ),
          Text(
            'Successfully Paid',
            style: TextStyle(
                color: ColorSelect.primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: 'rubik'),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
              textAlign: TextAlign.center,
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: TextStyle(
                  fontFamily: 'krub',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: ColorSelect.primaryColor)),
          Expanded(
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
                          'Download Invoice'.tr,
                          style: TextStyle(
                              color: Color(0xffF79633),
                              fontFamily: 'inter',
                              fontSize: 15),
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
                                  builder: (context) => BottomNavigation()));
                        },
                        child: Text(
                          'Book Another'.tr,
                          style: TextStyle(fontFamily: 'inter', fontSize: 18),
                        )),
                  ))
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
