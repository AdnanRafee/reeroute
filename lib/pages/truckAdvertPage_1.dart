import 'package:flutter/material.dart';

class TruckAdvertPage_1 extends StatefulWidget {
  const TruckAdvertPage_1({Key? key}) : super(key: key);

  @override
  State<TruckAdvertPage_1> createState() => _TruckAdvertPage_1State();
}

class _TruckAdvertPage_1State extends State<TruckAdvertPage_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Image.asset('assets/images/truckReeroute.png')),
    );
  }
}
