import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'appBarReeroute.dart';
import 'welcomeScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  int selectedLanguageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarReeroute(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            28, MediaQuery.of(context).size.height * 0.05, 35, 0),
        child: Column(
          children: [
            Text(
              'Welcome to Reeroute. Please select your preferred language'.tr,
              style: TextStyle(
                  fontSize: 20, color: Color(0xff2A4F6D), fontFamily: 'rubik'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'You can change your app language at any time from Profile > Language',
              style: TextStyle(
                  color: Color(0xff2A4F6D),
                  fontFamily: 'krub',
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
                height: 240,
                child:
                    Center(child: Image.asset('assets/images/languages1.png'))),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedLanguageIndex = 0;
                    });
                  },
                  child: Container(
                    height: 136,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffF79633),
                              blurRadius: 2,
                              offset: Offset(0, 4)),
                        ],
                        border: Border.all(color: Color(0xffF79633)),
                        borderRadius: BorderRadius.circular(
                          10,
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        selectedLanguageIndex == 0
                            ? Text('English',
                                style: TextStyle(
                                  fontFamily: 'rubik',
                                  letterSpacing: 0.7,
                                  color: Color(0xff0ACF83),
                                  fontSize: 20,
                                ))
                            : Container(),
                        Text('English (India)',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'krub', color: Color(0xff2A4F6D))),
                      ],
                    ),
                  ),
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedLanguageIndex = 1;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffF79633),
                              blurRadius: 2,
                              offset: Offset(0, 4)),
                        ],
                        border: Border.all(color: Color(0xffF79633)),
                        borderRadius: BorderRadius.circular(
                          10,
                        )),
                    height: 136,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        selectedLanguageIndex == 1
                            ? Text('Hindi',
                                style: TextStyle(
                                  fontFamily: 'rubik',
                                  letterSpacing: 0.7,
                                  color: Color(0xff0ACF83),
                                  fontSize: 20,
                                ))
                            : Container(),
                        Text(
                          'Hindi (India)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'krub',
                              color: Color(0xff2A4F6D)),
                        ),
                      ],
                    ),
                  ),
                )),
              ],
            ),

            // ListTile(
            //   contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 0),
            //   title: Padding(
            //     padding: EdgeInsets.only(bottom: 10),
            //     child: selectedLanguageIndex == 0
            //         ? Text('English',
            //             style: TextStyle(
            //               fontFamily: 'rubik',
            //               letterSpacing: 0.7,
            //               color: Color(0xff0ACF83),
            //               fontSize: 20,
            //             ))
            //         : null,
            //   ),
            //   subtitle: Text(
            //     'English (India)',
            //     style:
            //         TextStyle(fontFamily: 'krub', fontWeight: FontWeight.w400),
            //   ),
            //   trailing: selectedLanguageIndex == 0
            //       ? Icon(
            //           Icons.check,
            //           color: Color(0xff0ACF83),
            //         )
            //       : null,
            //   onTap: () {
            //     setState(() {
            //       selectedLanguageIndex = 0;
            //     });
            //   },
            // ),
            // Divider(
            //   color: Colors.grey,
            // ),
            // ListTile(
            //   contentPadding: EdgeInsets.symmetric(horizontal: 0),
            //   title: Padding(
            //     padding: EdgeInsets.only(bottom: 10.0),
            //     child: selectedLanguageIndex == 1
            //         ? Text('Hindi',
            //             style: TextStyle(
            //               fontFamily: 'rubik',
            //               letterSpacing: 0.7,
            //               color: Color(0xff0ACF83),
            //               fontSize: 20,
            //             ))
            //         : null,
            //   ),
            //   subtitle:
            //       Text('Hindi (India)', style: TextStyle(fontFamily: 'krub')),
            //   trailing: selectedLanguageIndex == 1
            //       ? Icon(
            //           Icons.check,
            //           color: Color(0xff0ACF83),
            //         )
            //       : null,
            //   onTap: () {
            //     setState(() {
            //       selectedLanguageIndex = 1;
            //     });
            //   },
            // ),

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
                            borderRadius: BorderRadius.circular(12)))),
                    onPressed: () {
                      if (selectedLanguageIndex == 1) {
                        var locale = Locale('hi', 'IN');
                        Get.updateLocale(locale);
                      } else if (selectedLanguageIndex == 0) {
                        var locale = Locale('en', 'US');
                        Get.updateLocale(locale);
                      }

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomeScreen()));
                    },
                    child: Text(
                      'Continue',
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
