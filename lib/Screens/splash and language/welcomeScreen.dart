import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/common/button.dart';

import 'package:reeroute/pages/page_1.dart';
import 'package:reeroute/pages/page_2.dart';
import 'package:reeroute/pages/page_3.dart';
import 'package:reeroute/Screens/Sign%20up%20&%20login/signUpWithMobile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../common/appBarReeroute.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarReeroute(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              35, MediaQuery.of(context).size.height * 0.06, 35, 0),
          child: Column(
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: SizedBox(
                  height: 409,
                  width: MediaQuery.of(context).size.width,
                  child: PageView(
                    controller: _controller,
                    onPageChanged: (index) {
                      setState(() {
                        onLastPage = (index == 2);
                      });
                    },
                    children: [Page1(), Page2(), Page3()],
                  ),
                ),
              ),
              SizedBox(
                height: 0,
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: ContinueBtnSimple(
          title: 'Start'.tr,
          onPressed: () {
            onLastPage
                ? Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpWithMobile()))
                : _controller.nextPage(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut); // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => SignUpWithMobile()));
          }),
    );
  }
}
