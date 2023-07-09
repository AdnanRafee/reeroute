import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../util/colors.dart';

class ReviewPage_1 extends StatefulWidget {
  const ReviewPage_1({Key? key}) : super(key: key);

  @override
  State<ReviewPage_1> createState() => _ReviewPage_1State();
}

class _ReviewPage_1State extends State<ReviewPage_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.white,
                border: Border.all(width: 0, color: Colors.transparent)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 5, 10),
                  child: SizedBox(
                    width: 48,
                    child: Image.asset('assets/images/userPic.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 25, 5, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Paul Williamson'.tr,
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 18,
                            color: ColorSelect.primaryColor,
                            fontFamily: 'rubik'),
                      ),
                      Text(
                        'Customer'.tr,
                        style: TextStyle(
                            color: Color(0x99F79633),
                            fontWeight: FontWeight.w600,
                            fontFamily: 'krub',
                            fontSize: 12),
                      ),
                      SizedBox(
                        width: 245,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 5, 5),
                          child: Text(
                            'Dico is finally addressing a long time problem we had when building UIs. It’s ease of use and workflow seems really intuitive. Promising!'
                                .tr,
                            style: TextStyle(
                                fontFamily: 'krub',
                                fontWeight: FontWeight.w300,
                                color: Color(0xff2A4F6D),
                                fontSize: 14.24),
                            maxLines: 5,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
