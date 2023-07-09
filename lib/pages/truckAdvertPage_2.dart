import 'package:flutter/material.dart';

class TruckAdvertPage_2 extends StatefulWidget {
  const TruckAdvertPage_2({Key? key}) : super(key: key);

  @override
  State<TruckAdvertPage_2> createState() => _TruckAdvertPage_2State();
}

class _TruckAdvertPage_2State extends State<TruckAdvertPage_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Image.asset('assets/images/truckReeroute.png'),
    ));
  }
}
