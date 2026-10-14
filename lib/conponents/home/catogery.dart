import 'package:flutter/material.dart';

class Catogery extends StatefulWidget {
  Catogery({Key? key}) : super(key: key);

  @override
  _CatogeryState createState() => _CatogeryState();
}

class _CatogeryState extends State<Catogery> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 200,
      child: Text("各分类分别展示该分类剩余可用金额", style: TextStyle(color: Colors.white),),
    );
  }
}