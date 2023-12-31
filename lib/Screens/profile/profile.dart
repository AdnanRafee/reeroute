import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:reeroute/Screens/profile/editLanguage.dart';
import 'package:reeroute/Screens/profile/help&support.dart';
import 'package:reeroute/util/colors.dart';

import 'addressBook.dart';
import 'editProfile.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/images/headerIcon.svg'),
        titleSpacing: 28,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28.0),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 286,
                      child: AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        title: Text(
                          textAlign: TextAlign.center,
                          'Are you sure you want to logout?',
                          style: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 18,
                              color: ColorSelect.primaryColor),
                        ),
                        content: Text(
                          textAlign: TextAlign.center,
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          style: TextStyle(
                              fontFamily: 'krub',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: ColorSelect.primaryColor),
                        ),
                        actions: [
                          Row(
                            children: [
                              Expanded(
                                  child: SizedBox(
                                height: 54,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.white),
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color: Color(0xffF79633)),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12)))),
                                    onPressed: () {},
                                    child: Text(
                                      'No'.tr,
                                      style: TextStyle(
                                          color: Color(0xffF79633),
                                          fontFamily: 'inter',
                                          fontSize: 18),
                                    )),
                              )),
                              SizedBox(
                                width: 18,
                              ),
                              Expanded(
                                  child: SizedBox(
                                height: 54,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color(0xffF79633)),
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12)))),
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) => PanCardCheck()));
                                    },
                                    child: Text(
                                      'Yes'.tr,
                                      style: TextStyle(
                                          fontFamily: 'inter', fontSize: 18),
                                    )),
                              ))
                            ],
                          ),
                          // TextButton(
                          //   onPressed: () {
                          //     // Close the dialog
                          //     Navigator.pop(context);
                          //   },
                          //   child: Text('Cancel'),
                          // ),
                          // TextButton(
                          //   onPressed: () {
                          //     // Perform logout logic here
                          //     // For example, you can clear user session or token
                          //     // and navigate to the login screen
                          //     // After that, close the dialog
                          //     Navigator.pop(context);
                          //   },
                          //   child: Text('Logout'),
                          // ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Icon(
                Icons.logout_rounded,
                size: 32,
                color: ColorSelect.primaryColor,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 34,
              color: Color(0xfff3f3f3),
            ),
            Container(
              height: 282,
              width: 414,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18, right: 26),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfile(),
                          ),
                        );
                      },
                      child: Text(
                        "Edit".tr,
                        style: TextStyle(
                          fontFamily: 'rubik',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.475,
                          color: Color(0xff2a4f6d),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(0xfffdead6),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Center(
                        child: Text(
                          "S",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'rubik',
                            fontSize: 60,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 26),
                  Center(
                    child: Text(
                      "Smaran Ummadishetty",
                      style: TextStyle(
                        fontFamily: 'rubik',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.475,
                        color: Color(0xff2a4f6d),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Center(
                    child: Text(
                      "+91 96199 47596",
                      style: TextStyle(
                        fontFamily: 'rubik',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0.475,
                        color: Color(0xff2a4f6d),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 25,
              color: Color(0xfff3f3f3),
            ),
            Container(
              width: 414,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 36, right: 32, top: 44, bottom: 24),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditLanguage()));
                      },
                      child: Row(
                        children: [
                          Text(
                            "Language".tr,
                            style: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.475,
                              color: Color(0xff2a4f6d),
                            ),
                          ),
                          Spacer(flex: 1),
                          Icon(Icons.chevron_right),
                          VerticalDivider(
                            color: Color(0x33000000),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 36, right: 32, top: 42, bottom: 24),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddressBook()));
                      },
                      child: Row(
                        children: [
                          Text(
                            "Address Book".tr,
                            style: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.475,
                              color: Color(0xff2a4f6d),
                            ),
                          ),
                          Spacer(flex: 1),
                          Icon(Icons.chevron_right),
                          VerticalDivider(
                            color: Color(0x33000000),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 36, right: 32, top: 42, bottom: 24),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HelpSupport()));
                      },
                      child: Row(
                        children: [
                          Text(
                            "Help & Support".tr,
                            style: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.475,
                              color: Color(0xff2a4f6d),
                            ),
                          ),
                          Spacer(flex: 1),
                          Icon(Icons.chevron_right),
                          VerticalDivider(
                            color: Color(0x33000000),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 36, right: 32, top: 42, bottom: 24),
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => HelpSupport(),
                        //   ),
                        // );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Terms & Conditions".tr,
                            style: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0.475,
                              color: Color(0xff2a4f6d),
                            ),
                          ),
                          Spacer(flex: 1),
                          Icon(Icons.chevron_right),
                          VerticalDivider(
                            color: Color(0x33000000),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 36, right: 32, top: 42, bottom: 24),
                    child: Row(
                      children: [
                        Text(
                          "Privacy Policy".tr,
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.475,
                            color: Color(0xff2a4f6d),
                          ),
                        ),
                        Spacer(flex: 1),
                        Icon(Icons.chevron_right),
                        VerticalDivider(
                          color: Color(0x33000000),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
            Container(
              height: 22,
              color: Color(0xfff3f3f3),
            ),
          ],
        ),
      ),
    );
  }
}
