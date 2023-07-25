import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      body: Padding(
        padding: EdgeInsets.fromLTRB(27, 24, 27, 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          Container(
            width: 143,
            height: 51,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffF79633)),
                        borderRadius: BorderRadius.circular(8)))),
                onPressed: () {},
                child: Text(
                  'Open truck',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'rubik',
                      color: ColorSelect.orangeColor),
                )),
          )
        ]),
      ),
    );
  }
}
