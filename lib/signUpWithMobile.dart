import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:reeroute/otpScreen.dart';

class SignUpWithMobile extends StatefulWidget {
  const SignUpWithMobile({Key? key}) : super(key: key);

  @override
  State<SignUpWithMobile> createState() => _SignUpWithMobileState();
}

class _SignUpWithMobileState extends State<SignUpWithMobile> {
  bool? _isChecked = false;
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your mobile number'.tr,
              style: TextStyle(
                  fontFamily: 'rubik', fontSize: 18, color: Color(0xff2A4F6D)),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Your phone number is required to sign you in or create a new account on ReeRoute'
                  .tr,
              style: TextStyle(fontFamily: 'krub', fontSize: 12),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 60,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xffE6E6E6)),
                        borderRadius: BorderRadius.circular(4)),
                    minLeadingWidth: 0,
                    contentPadding: EdgeInsets.zero,
                    leading: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Image.asset(
                        'assets/images/indiaFlag.png',
                        width: 30,
                        height: 45,
                      ),
                    ),
                    title: Text(
                      '+91',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Color(0xffE6E6E6))),
                  child: SizedBox(
                    width: 200,
                    height: 60,
                    child: TextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(10),
                        PhoneNumberSpaceFormat()
                      ],
                      style: TextStyle(fontSize: 25),
                      // showCursor: false,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(20, 14.4, 10, 20),
                        fillColor: Colors.white,
                        focusedBorder: InputBorder.none,
                        // border: InputBorder.none),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(right: 20),
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                        fillColor: MaterialStateProperty.all(Color(0xff0ACF83)),
                        value: _isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isChecked = newValue;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Allow ReeRoute to send updates on offers through whatsApp'
                            .tr,
                        style: TextStyle(fontSize: 12, fontFamily: 'krub'),
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        maxLines: 2,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              child: Container(
                  alignment: Alignment.bottomLeft,
                  child: RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: 'By continuing, you accept our '.tr,
                        style: TextStyle(color: Color(0xff2A4F6D))),
                    TextSpan(
                        text: 'Terms & Conditions'.tr,
                        style: TextStyle(color: Color(0xff0ACF83)))
                  ]))),
            ),
            Container(
              width: double.infinity,
              height: 54,
              margin: EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xffF79633)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtpScreen()));
                },
                child: Text('Continue'.tr),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PhoneNumberSpaceFormat extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    String enteredData = newValue.text;
    StringBuffer buffer = StringBuffer();

    for (int i = 0; i < enteredData.length; i++) {
      buffer.write(enteredData[i]);
      int index = i + 1;
      if (index % 5 == 0 && enteredData.length != index) {
        buffer.write("  ");
      }
    }
    return TextEditingValue(
        text: buffer.toString(),
        selection: TextSelection.collapsed(offset: buffer.toString().length));
  }
}
