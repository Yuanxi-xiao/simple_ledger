import 'package:flutter/material.dart';

class Ledger extends StatefulWidget {
  Ledger({Key? key}) : super(key: key);

  @override
  _LedgerState createState() => _LedgerState();
}

class _LedgerState extends State<Ledger> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      color: Colors.blue,
      height: 40,
      child: Text("账本", style: TextStyle(color: Colors.white),),
    );
  }
}