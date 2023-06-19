import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:reeroute/noInternetScreen.dart';
import 'package:reeroute/pages/page_1.dart';
import 'package:reeroute/pages/page_2.dart';
import 'package:reeroute/pages/page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: SvgPicture.asset('assets/images/headerIcon.svg'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            35, MediaQuery.of(context).size.height * 0.06, 35, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Welcome to Reeroute.'.tr,
                style: TextStyle(
                    fontFamily: 'rubik',
                    fontSize: 24,
                    color: Color(0xff2A4F6D),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: PageView(
                controller: _controller,
                children: [Page1(), Page2(), Page3()],
              ),
            ),
            SizedBox(
              height: 110,
            ),
            Text(
              'Lorem Ipsum headline'.tr,
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff2A4F6D),
                  fontFamily: 'krub',
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
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
            SizedBox(
              height: 40,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                  activeDotColor: Color(0xffF79633),
                  dotColor: Color(0xffF79633),
                  dotHeight: 10,
                  dotWidth: 10),
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
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NoInternetScreen()));
                    },
                    child: Text(
                      'Start'.tr,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'inter'),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
