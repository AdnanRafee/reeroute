import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/Screens/completeKyc.dart';

import '../common/appBarReeroute.dart';

class EnterYourDetails extends StatefulWidget {
  const EnterYourDetails({Key? key}) : super(key: key);

  @override
  State<EnterYourDetails> createState() => _EnterYourDetailsState();
}

class _EnterYourDetailsState extends State<EnterYourDetails> {
  late String valueChoose;
  List<String> cities = ['Mumbai'.tr, 'Chennai'.tr, 'Pune'.tr];

  String? dropdownvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarReeroute(),
        body: Padding(
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
                Text('Email Address'.tr,
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
                        labelText: 'Enter your email address'.tr,
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
                    )),
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
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CompleteKyc()));
                        },
                        child: Text(
                          'Continue'.tr,
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
            )));
  }
}
