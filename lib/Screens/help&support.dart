import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common/bottomNavigation.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({Key? key}) : super(key: key);

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        leading: BackButton(color: Color(0xff2a4f6d)),
        elevation: 1,
        title: Text(
          "Help & Support",
          style: TextStyle(
            fontFamily: 'krub',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.475,
            color: Color(0xff2a4f6d),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text('the 3rd party integration with Tawk.to'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 104,
                margin: EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                        child: SizedBox(
                      height: 54,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Color(0xffF79633)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12)))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavigation()));
                          },
                          child: Text(
                            'Send'.tr,
                            style: TextStyle(fontFamily: 'inter', fontSize: 18),
                          )),
                    ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
