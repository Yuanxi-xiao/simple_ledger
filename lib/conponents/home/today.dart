import 'package:flutter/material.dart';

class Today extends StatefulWidget {
  Today({Key? key}) : super(key: key);

  @override
  _TodayState createState() => _TodayState();
}

class _TodayState extends State<Today> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("当前周期剩余每日预算",style: TextStyle(color: Colors.white),),
          Text("自由花销整体剩余金额",style: TextStyle(color: Colors.white),),
          Text("今日已经花掉",style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}