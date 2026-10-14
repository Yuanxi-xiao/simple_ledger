import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_ledger/pages/Budget/index.dart';
import 'package:simple_ledger/pages/Home/index.dart';
import 'package:simple_ledger/pages/Plug/index.dart';
import 'package:simple_ledger/pages/Record/index.dart';
import 'package:simple_ledger/pages/mine/index.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //tab数据列表
  final List<Map<String, String>> _tabList = [
    {
      "icon": "lib/assets/home.png", //图标
      "active_icon": "lib/assets/home_active.png",//激活图标
      "text": "首页" //分类
    },
    {
      "icon": "lib/assets/budget.png", //图标
      "active_icon": "lib/assets/budget_active.png",//激活图标
      "text": "预算" //分类
    },
    {
      "icon": "lib/assets/plug.png", //图标
      "active_icon": "lib/assets/plug_active.png",//激活图标
      "text": "" //分类
    },
    {
      "icon": "lib/assets/record.png", //图标
      "active_icon": "lib/assets/record_active.png",//激活图标
      "text": "明细" //分类
    },
    {
      "icon": "lib/assets/mine.png", //图标
      "active_icon": "lib/assets/mine_active.png",//激活图标
      "text": "我的" //分类
    }
  ];

  //当前的index
  int _currentIndex = 0;

  //循环渲染底部tab栏
  List<BottomNavigationBarItem> _getTabBarWeiget(){
    return List.generate(_tabList.length, (int index){
      return BottomNavigationBarItem(
        icon: Image.asset(_tabList[index]["icon"]!, width: 24, height: 24,),
        activeIcon: Image.asset(_tabList[index]["active_icon"]!, width: 24, height: 24,),
        label: _tabList[index]["text"]
        );
    });
  }

  //渲染底部tab页面
  List<Widget> _getChildren(){
    return [HomeView(), BudgetView(), PlugView(), RecordView(), MineView()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: IndexedStack(
        index: _currentIndex,
        children: _getChildren(),
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: _getTabBarWeiget(),
        onTap: (int index) {
          //点击tab，更新当前选中的tab
          _currentIndex = index;
          setState(() {});
        },
        currentIndex: _currentIndex,

        ),
    );
  }
}