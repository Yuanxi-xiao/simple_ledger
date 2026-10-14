import 'package:flutter/material.dart';

class Recordlist extends StatefulWidget {
  Recordlist({Key? key}) : super(key: key);

  @override
  _RecordlistState createState() => _RecordlistState();
}

class _RecordlistState extends State<Recordlist> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisExtent: 50,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5
        ), 
      itemBuilder: (BuildContext context, int index){
        return Container(
          color: Colors.blue,
          alignment: Alignment.centerLeft,
          child: Text("流水", style: TextStyle(color: Colors.white),),
        );
      });
  }
}