import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_ledger/conponents/home/calendar.dart';
import 'package:simple_ledger/conponents/home/catogery.dart';
import 'package:simple_ledger/conponents/home/ledger.dart';
import 'package:simple_ledger/conponents/home/recordList.dart';
import 'package:simple_ledger/conponents/home/today.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeviewState createState() => _HomeviewState();
}



class _HomeviewState extends State<HomeView> {
  List<Widget> _getScrollChilden () {
    return [
      SliverToBoxAdapter(child: Ledger()),
      SliverToBoxAdapter(child: SizedBox(height: 10,),),
      SliverToBoxAdapter(child: calender(),),
      SliverToBoxAdapter(child: SizedBox(height: 10,),),
      SliverToBoxAdapter(child: Today(),),
      SliverToBoxAdapter(child: SizedBox(height: 10,),),
      SliverToBoxAdapter(child: Catogery()),
      SliverToBoxAdapter(child: SizedBox(height: 10,),),
      Recordlist(),

    ];
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: _getScrollChilden());
  }
}