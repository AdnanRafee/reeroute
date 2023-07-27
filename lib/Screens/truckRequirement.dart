import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/Screens/verifyTruckBooking.dart';
import 'package:reeroute/common/button.dart';

import '../util/colors.dart';

class TruckRequirement extends StatefulWidget {
  const TruckRequirement({Key? key}) : super(key: key);

  @override
  State<TruckRequirement> createState() => _TruckRequirementState();
}

class _TruckRequirementState extends State<TruckRequirement> {
  late String valueChoose;
  List<String> cities = ['asphalt'.tr, 'sand'.tr, 'stone'.tr];
  String? dropdownvalue;
  int vehicleSelected = 0;
  int truckLengthSelected = 0;
  int truckHeightSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleSpacing: 0,
          leading: BackButton(color: Color(0xff2a4f6d)),
          elevation: 1,
          title: Text(
            "Enter truck requirement",
            style: TextStyle(
              fontFamily: 'krub',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.475,
              color: Color(0xff2a4f6d),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(27, 24, 6, 25),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: ColorSelect.secondaryGreen,
                    size: 8,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Mumbai',
                    style: TextStyle(
                        color: ColorSelect.primaryColor,
                        fontSize: 16,
                        fontFamily: 'rubik'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      width: 179,
                      child: Divider(
                        thickness: 1,
                        color: Color(0x26000000),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.square,
                    size: 8,
                    color: Color(0xffEA1414),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Delhi',
                    style: TextStyle(
                        color: ColorSelect.primaryColor,
                        fontSize: 16,
                        fontFamily: 'rubik'),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Material Type ',
                style: TextStyle(
                    fontSize: 18,
                    color: ColorSelect.primaryColor,
                    fontFamily: 'rubik'),
              ),
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
              SizedBox(
                height: 31,
              ),
              Text(
                'Vehicle Type',
                style: TextStyle(
                    fontSize: 18,
                    color: ColorSelect.primaryColor,
                    fontFamily: 'rubik'),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Container(
                    width: 143,
                    height: 51,
                    child: ElevatedButton(
                        style: vehicleSelected == 0
                            ? ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFEEFE1)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffF79633)),
                                        borderRadius:
                                            BorderRadius.circular(8))))
                            : ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffE6E6E6)),
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                        onPressed: () {
                          setState(() {
                            vehicleSelected = 0;
                          });
                        },
                        child: Text(
                          'Open truck',
                          style: vehicleSelected == 0
                              ? TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: ColorSelect.orangeColor)
                              : TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: Color(0xff2A4F6D33)),
                        )),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                    width: 143,
                    height: 51,
                    child: ElevatedButton(
                        style: vehicleSelected == 1
                            ? ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFEEFE1)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffF79633)),
                                        borderRadius:
                                            BorderRadius.circular(8))))
                            : ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffE6E6E6)),
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                        onPressed: () {
                          setState(() {
                            vehicleSelected = 1;
                          });
                        },
                        child: Text(
                          'Container',
                          style: vehicleSelected == 1
                              ? TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: ColorSelect.orangeColor)
                              : TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: Color(0xff2A4F6D33)),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: 316,
                height: 51,
                child: ElevatedButton(
                    style: vehicleSelected == 2
                        ? ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xFFFEEFE1)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    side: BorderSide(color: Color(0xffF79633)),
                                    borderRadius: BorderRadius.circular(8))))
                        : ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    side: BorderSide(color: Color(0xffE6E6E6)),
                                    borderRadius: BorderRadius.circular(8)))),
                    onPressed: () {
                      setState(() {
                        vehicleSelected = 2;
                      });
                    },
                    child: Text(
                      'Small pickup Truck (e.g Ace, Bolero, etc)',
                      style: vehicleSelected == 2
                          ? TextStyle(
                              fontSize: 14,
                              fontFamily: 'rubik',
                              color: ColorSelect.orangeColor)
                          : TextStyle(
                              fontSize: 14,
                              fontFamily: 'rubik',
                              color: Color(0xff2A4F6D33)),
                    )),
              ),
              SizedBox(
                height: 31,
              ),
              Text(
                'Material Weight ',
                style: TextStyle(
                    fontSize: 18,
                    color: ColorSelect.primaryColor,
                    fontFamily: 'rubik'),
              ),
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
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 25),
                    // showCursor: false,
                    decoration: InputDecoration(
                      suffix: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFFEEFE1),
                              borderRadius: BorderRadius.circular(8)),
                          height: 33,
                          width: 66,
                          child: Center(
                            child: Text(
                              'Ton',
                              style: TextStyle(
                                  color: ColorSelect.orangeColor,
                                  fontFamily: 'rubik',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          )),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelText: 'Enter weight in ton'.tr,
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          fontFamily: 'rubik',
                          color: Color(0xff2A4F6D33)),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(20, 14, 10, 9),
                      fillColor: Colors.white,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 31,
              ),
              Text(
                'Truck Length',
                style: TextStyle(
                    fontSize: 18,
                    color: ColorSelect.primaryColor,
                    fontFamily: 'rubik'),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Container(
                    width: 76,
                    height: 51,
                    child: ElevatedButton(
                        style: truckLengthSelected == 0
                            ? ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFEEFE1)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffF79633)),
                                        borderRadius:
                                            BorderRadius.circular(8))))
                            : ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffE6E6E6)),
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                        onPressed: () {
                          setState(() {
                            truckLengthSelected = 0;
                          });
                        },
                        child: Text(
                          '14 ft',
                          style: truckLengthSelected == 0
                              ? TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: ColorSelect.orangeColor)
                              : TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: Color(0xff2A4F6D33)),
                        )),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Container(
                    width: 76,
                    height: 51,
                    child: ElevatedButton(
                        style: truckLengthSelected == 1
                            ? ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFEEFE1)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffF79633)),
                                        borderRadius:
                                            BorderRadius.circular(8))))
                            : ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffE6E6E6)),
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                        onPressed: () {
                          setState(() {
                            truckLengthSelected = 1;
                          });
                        },
                        child: Text(
                          '17 ft',
                          style: truckLengthSelected == 1
                              ? TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: ColorSelect.orangeColor)
                              : TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: Color(0xff2A4F6D33)),
                        )),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Container(
                    width: 76,
                    height: 51,
                    child: ElevatedButton(
                        style: truckLengthSelected == 2
                            ? ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFEEFE1)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffF79633)),
                                        borderRadius:
                                            BorderRadius.circular(8))))
                            : ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffE6E6E6)),
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                        onPressed: () {
                          setState(() {
                            truckLengthSelected = 2;
                          });
                        },
                        child: Text(
                          '19 ft',
                          style: truckLengthSelected == 2
                              ? TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: ColorSelect.orangeColor)
                              : TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: Color(0xff2A4F6D33)),
                        )),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Container(
                    width: 76,
                    height: 50,
                    child: ElevatedButton(
                        style: truckLengthSelected == 3
                            ? ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFEEFE1)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffF79633)),
                                        borderRadius:
                                            BorderRadius.circular(8))))
                            : ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffE6E6E6)),
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                        onPressed: () {
                          setState(() {
                            truckLengthSelected = 3;
                          });
                        },
                        child: Text(
                          '27 ft',
                          style: truckLengthSelected == 3
                              ? TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: ColorSelect.orangeColor)
                              : TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: Color(0xff2A4F6D33)),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 31,
              ),
              Text(
                'Truck Height',
                style: TextStyle(
                    fontSize: 18,
                    color: ColorSelect.primaryColor,
                    fontFamily: 'rubik'),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Container(
                    width: 76,
                    height: 51,
                    child: ElevatedButton(
                        style: truckHeightSelected == 0
                            ? ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFEEFE1)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffF79633)),
                                        borderRadius:
                                            BorderRadius.circular(8))))
                            : ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffE6E6E6)),
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                        onPressed: () {
                          setState(() {
                            truckHeightSelected = 0;
                          });
                        },
                        child: Text(
                          '6.0 ft',
                          style: truckHeightSelected == 0
                              ? TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: ColorSelect.orangeColor)
                              : TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: Color(0xff2A4F6D33)),
                        )),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Container(
                    width: 76,
                    height: 51,
                    child: ElevatedButton(
                        style: truckHeightSelected == 1
                            ? ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFEEFE1)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffF79633)),
                                        borderRadius:
                                            BorderRadius.circular(8))))
                            : ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffE6E6E6)),
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                        onPressed: () {
                          setState(() {
                            truckHeightSelected = 1;
                          });
                        },
                        child: Text(
                          '8 ft',
                          style: truckHeightSelected == 1
                              ? TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: ColorSelect.orangeColor)
                              : TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: Color(0xff2A4F6D33)),
                        )),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Container(
                    width: 76,
                    height: 51,
                    child: ElevatedButton(
                        style: truckHeightSelected == 2
                            ? ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFEEFE1)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffF79633)),
                                        borderRadius:
                                            BorderRadius.circular(8))))
                            : ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xffE6E6E6)),
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                        onPressed: () {
                          setState(() {
                            truckHeightSelected = 2;
                          });
                        },
                        child: Text(
                          '10 ft',
                          style: truckHeightSelected == 2
                              ? TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: ColorSelect.orangeColor)
                              : TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'rubik',
                                  color: Color(0xff2A4F6D33)),
                        )),
                  ),
                ],
              )
            ]),
          ),
        ),
        bottomNavigationBar:
            ContinueButton(title: 'Continue', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyTruckBooking()));}));
  }
}
