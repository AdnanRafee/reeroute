import 'package:flutter/material.dart';

import '../../common/homebottomNavigation.dart';
import '../../common/button.dart';

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
          Center(child: Text('the 3rd party integration with Tawk.to')),
        ],
      ),
      bottomNavigationBar: ContinueButton(
          title: 'Send',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BottomNavigation()));
          }),
    );
  }
}
