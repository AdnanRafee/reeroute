import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          child: Image.asset('assets/images/delivery-truck_left.png'),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          'Lorem Ipsum headline 1'.tr,
          style: TextStyle(
              fontSize: 18,
              color: Color(0xff2A4F6D),
              fontFamily: 'krub',
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry'
              .tr,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'krub',
              fontWeight: FontWeight.w500,
              color: Color(0xff2A4F6D)),
        ),
      ]),
    );
  }
}
