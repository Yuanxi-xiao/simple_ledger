import 'package:flutter/material.dart';

class calender extends StatefulWidget {
  calender({Key? key}) : super(key: key);

  @override
  _calenderState createState() => _calenderState();
}

class _calenderState extends State<calender> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
      child: Container(
        color: Colors.blue,
        height: 300,
        width: 300,
        child: Text("日历", style: TextStyle(color: Colors.white),),
      ),
      );
  }
}