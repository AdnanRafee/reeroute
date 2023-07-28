import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reeroute/common/appBarReeroute.dart';
import 'package:reeroute/util/colors.dart';

import 'panCardFrontSide.dart';

class UploadPan extends StatefulWidget {
  const UploadPan({Key? key}) : super(key: key);

  @override
  State<UploadPan> createState() => _UploadPanState();
}

class _UploadPanState extends State<UploadPan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarReeroute(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(27, 0, 27, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 45,
            ),
            Text(
              'Upload front side of your PAN',
              style: TextStyle(
                  color: ColorSelect.primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
            Expanded(
              child: Column(
                children: [
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
                                  MaterialStatePropertyAll(Colors.white),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      side:
                                          BorderSide(color: Color(0xffF79633)),
                                      borderRadius:
                                          BorderRadius.circular(16)))),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => PanNumber()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.file_upload_outlined,
                                  color: ColorSelect.orangeColor),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'Upload from gallery'.tr,
                                style: TextStyle(
                                    color: Color(0xffF79633),
                                    fontFamily: 'inter',
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 54,
                      width: MediaQuery.of(context).size.width *
                          0.9, // Adjust the width value as needed
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
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
                                  builder: (context) => PanCardFrontSide()));
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.camera_alt_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Take a picture'.tr,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'inter'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
