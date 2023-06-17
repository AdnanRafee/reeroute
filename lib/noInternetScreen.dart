import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Image.asset('assets/frame.png'),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            35, MediaQuery.of(context).size.height * 0.06, 35, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Please connect to Internet'.tr,
                style: TextStyle(
                    fontFamily: 'rubik',
                    fontSize: 24,
                    color: Color(0xff2A4F6D),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Image.asset('assets/Connection_illustration.png'),
            SizedBox(
              height: 100,
            ),
            Text(
              'Lorem Ipsum headline'.tr,
              style: TextStyle(
                  fontFamily: 'krub',
                  fontSize: 18,
                  color: Color(0xff2A4F6D),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry'
                  .tr,
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'krub', fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
