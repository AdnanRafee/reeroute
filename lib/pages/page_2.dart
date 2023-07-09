import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 45),
          child: Container(
            child: Image.asset('assets/images/delivery-truck.png'),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          'Lorem Ipsum headline 2'.tr,
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
          'Random is simply dummy text of the printing and typesetting industry'
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
