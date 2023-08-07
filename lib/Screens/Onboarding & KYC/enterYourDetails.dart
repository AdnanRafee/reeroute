import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reeroute/Screens/Onboarding%20&%20KYC/completeKyc.dart';
import 'package:reeroute/common/button.dart';

import '../../common/appBarReeroute.dart';

class EnterYourDetails extends StatefulWidget {
  const EnterYourDetails({Key? key}) : super(key: key);

  @override
  State<EnterYourDetails> createState() => _EnterYourDetailsState();
}

class _EnterYourDetailsState extends State<EnterYourDetails> {
  late String valueChoose;
  List<String> cities = ['Mumbai'.tr, 'Chennai'.tr, 'Pune'.tr];

  String? dropdownvalue;

  bool upload = true;
  File? _image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() {
        this._image = imageTemp;
      });
    } on PlatformException catch (e) {
      print('Failed to pick an image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarReeroute(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              35, MediaQuery.of(context).size.height * 0.06, 35, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Enter your details'.tr,
                  style: TextStyle(
                      fontFamily: 'rubik',
                      fontSize: 18,
                      color: Color(0xff2A4F6D))),
              SizedBox(
                height: 48,
              ),
              Text('Full Name*'.tr,
                  style: TextStyle(
                      fontFamily: 'rubik',
                      fontSize: 18,
                      color: Color(0xff2A4F6D))),
              SizedBox(
                height: 18,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xffE6E6E6))),
                child: SizedBox(
                  width: double.infinity,
                  height: 51,
                  child: TextField(
                    style: TextStyle(fontSize: 25),
                    // showCursor: false,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelText: 'Enter your full name'.tr,
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          fontFamily: 'rubik',
                          color: Color(0xff2A4F6D33)),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(20, 14.4, 10, 20),
                      fillColor: Colors.white,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text('Company Name'.tr,
                  style: TextStyle(
                      fontFamily: 'rubik',
                      fontSize: 18,
                      color: Color(0xff2A4F6D))),
              SizedBox(
                height: 18,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xffE6E6E6))),
                child: SizedBox(
                  width: double.infinity,
                  height: 51,
                  child: TextField(
                    style: TextStyle(fontSize: 25),
                    // showCursor: false,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelText: 'Enter your company name'.tr,
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          fontFamily: 'rubik',
                          color: Color(0xff2A4F6D33)),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(20, 14.4, 10, 20),
                      fillColor: Colors.white,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text('Current City'.tr,
                  style: TextStyle(
                      fontFamily: 'rubik',
                      fontSize: 18,
                      color: Color(0xff2A4F6D))),
              SizedBox(
                height: 18,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0.4, 10, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xffE6E6E6))),
                child: SizedBox(
                  width: double.infinity,
                  height: 51,
                  child: DropdownButton(
                    focusColor: Colors.transparent,
                    underline: SizedBox.shrink(),
                    value: dropdownvalue,
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(10),
                    hint: Text(
                      'Select your current city'.tr,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          fontFamily: 'rubik',
                          color: Color(0xff2A4F6D33)),
                    ),
                    // Down Arrow Icon
                    icon: Icon(Icons.keyboard_arrow_down),
                    // Array list of items
                    items: cities.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text('State'.tr,
                  style: TextStyle(
                      fontFamily: 'rubik',
                      fontSize: 18,
                      color: Color(0xff2A4F6D))),
              SizedBox(
                height: 18,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xffE6E6E6))),
                child: SizedBox(
                  width: double.infinity,
                  height: 51,
                  child: TextField(
                    style: TextStyle(fontSize: 25),
                    // showCursor: false,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelText: 'Select your state'.tr,
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          fontFamily: 'rubik',
                          color: Color(0xff2A4F6D33)),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(20, 14.4, 10, 20),
                      fillColor: Colors.white,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text('Your Profile Picture*'.tr,
                  style: TextStyle(
                      fontFamily: 'rubik',
                      fontSize: 18,
                      color: Color(0xff2A4F6D))),
              SizedBox(
                height: 18,
              ),
              Padding(
                  padding: EdgeInsets.only(
                    left: 0,
                    bottom: 7,
                  ),
                  child: _image != null
                      ? Image.file(
                          _image!,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        )
                      : null),
              upload
                  ? InkWell(
                      onTap: () {
                        pickImage(ImageSource.gallery);
                        setState(
                          () {
                            upload = !upload;
                          },
                        );
                      },
                      child: Container(
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Color(0xfff79633),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/upload.png', width: 24),
                            const SizedBox(width: 7),
                            Text(
                              "Upload from gallery".tr,
                              style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 18,
                                color: Color(0xfff79633),
                                letterSpacing: 0.475,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        pickImage(ImageSource.gallery);
                        setState(
                          () {
                            upload = !upload;
                          },
                        );
                      },
                      child: Container(
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Color(0xfff79633),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/upload.png', width: 24),
                            const SizedBox(width: 7),
                            Text(
                              "Re -Upload".tr,
                              style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 18,
                                color: Color(0xfff79633),
                                letterSpacing: 0.475,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: ContinueBtnSimple(
          title: 'Continue'.tr,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CompleteKyc()));
          }),
    );
  }
}
