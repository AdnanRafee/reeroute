import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../util/colors.dart';
import 'gstSuccessfullyAdded.dart';

class GstNumber extends StatefulWidget {
  const GstNumber({Key? key}) : super(key: key);

  @override
  State<GstNumber> createState() => _GstNumberState();
}

class _GstNumberState extends State<GstNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        backgroundColor: Colors.white,
        title: Text(
          'KYC',
          style: TextStyle(
              fontSize: 24,
              color: ColorSelect.primaryColor,
              fontFamily: 'rubik',
              fontWeight: FontWeight.w500),
        ),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(
            Icons.chevron_left,
            size: 22,
            color: ColorSelect.primaryColor,
          ),
        ),
        titleSpacing: 44,
        leadingWidth: 0,
        elevation: 7,
        shadowColor: Color(0x1A000000),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(22, 24, 22, 21),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Add GST Certificate',
            style: TextStyle(
                color: ColorSelect.primaryColor,
                fontSize: 18,
                fontFamily: 'rubik'),
          ),
          SizedBox(
            height: 36,
          ),
          Text(
            'GST Number',
            style: TextStyle(
                color: ColorSelect.primaryColor,
                fontSize: 18,
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
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: 'Enter GST Number'.tr,
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
            height: 24,
          ),
          Text(
            'Name',
            style: TextStyle(
                color: ColorSelect.primaryColor,
                fontSize: 18,
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
                style: TextStyle(fontSize: 25),
                // showCursor: false,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: 'Enter Name as in GST Certiciate'.tr,
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
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 54,
                width: MediaQuery.of(context).size.width *
                    0.9, // Adjust the width value as needed
                margin: EdgeInsets.symmetric(vertical: 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xffF79633)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)))),
                  onPressed: () {
                    showModalBottomSheet(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.92,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 282,
                          width: MediaQuery.of(context).size.width * 0.92,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 9),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(11, 29, 0, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Confirm GST Details',
                                          style: TextStyle(
                                              fontFamily: 'rubik',
                                              color: ColorSelect.primaryColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          'Please verify your GST details',
                                          style: TextStyle(
                                              fontFamily: 'krub',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: ColorSelect.primaryColor),
                                        ),
                                        SizedBox(
                                          height: 18.69,
                                        ),
                                        Row(
                                          children: [
                                            Text('GST Number',
                                                style: TextStyle(
                                                    fontFamily: 'krub',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12,
                                                    color: ColorSelect
                                                        .primaryColor)),
                                            SizedBox(
                                              width: 110,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Text('1234 5678 9087',
                                                style: TextStyle(
                                                    fontFamily: 'krub',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    color: ColorSelect
                                                        .primaryColor)),
                                            SizedBox(
                                              width: 127,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 29,
                                        ),
                                        Text('GST Holder’s Name',
                                            style: TextStyle(
                                                fontFamily: 'krub',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                color:
                                                    ColorSelect.primaryColor)),
                                        SizedBox(
                                          height: 4.3,
                                        ),
                                        Text('SMARAN VENKATESULU UMMADISHETTY',
                                            style: TextStyle(
                                                fontFamily: 'krub',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color:
                                                    ColorSelect.primaryColor))
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 104,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 16),
                                      alignment: Alignment.bottomCenter,
                                      child: Row(
                                        children: [
                                          Expanded(
                                              flex: 1,
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
                                                                    color: Color(
                                                                        0xffF79633)),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)))),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      'Cancel'.tr,
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xffF79633),
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
                                                                BorderRadius
                                                                    .circular(
                                                                        12)))),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              GstSuccessfullyAdded()));
                                                },
                                                child: Text(
                                                  'Confirm'.tr,
                                                  style: TextStyle(
                                                      fontFamily: 'inter',
                                                      fontSize: 18),
                                                )),
                                          ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Continue'.tr,
                    style: TextStyle(
                        color: Colors.white, fontSize: 22, fontFamily: 'inter'),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
