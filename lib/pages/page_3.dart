import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          child: Image.asset('assets/images/delivery-truck-clock.png'),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          'Lorem Ipsum headline 3'.tr,
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
          'Lorem3 Ipsum3 is simply dummy text of the printing and typesetting industry'
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
