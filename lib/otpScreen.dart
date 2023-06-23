import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:reeroute/enterYourDetails.dart';

import 'appBarReeroute.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarReeroute(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            35, MediaQuery.of(context).size.height * 0.06, 35, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter OTP'.tr,
              style: TextStyle(
                  fontFamily: 'rubik', fontSize: 18, color: Color(0xff2A4F6D)),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Lorem ipsum is simply dummy text of the printing and typesetting industry'
                  .tr,
              style: TextStyle(fontFamily: 'krub', fontSize: 12),
            ),
            SizedBox(
              height: 35,
            ),
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width * 0.6,
              outlineBorderRadius: 155,
              fieldWidth: 48,
              otpFieldStyle: OtpFieldStyle(),
              fieldStyle: FieldStyle.underline,
              style: TextStyle(
                  fontFamily: 'rubik', color: Color(0xff2A4F6D), fontSize: 24),
            ),
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
                                      side:
                                          BorderSide(color: Color(0xffF79633)),
                                      borderRadius:
                                          BorderRadius.circular(12)))),
                          onPressed: () {},
                          child: Text(
                            'Resend',
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
                                      borderRadius:
                                          BorderRadius.circular(12)))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EnterYourDetails()));
                          },
                          child: Text(
                            'Continue',
                            style: TextStyle(fontFamily: 'inter', fontSize: 18),
                          )),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
