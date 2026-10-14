import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_ledger/pages/Login/index.dart';
import 'package:simple_ledger/pages/Main/index.dart';

//返回App根级路由组件
Widget getRootWiget(){
  return MaterialApp(
    //命名路由
    initialRoute: "/",
    routes: getRootRoutes(),
  );
}

//返回该App的路由配置
Map<String, Widget Function(BuildContext) > getRootRoutes(){
  return{
    "/":(context) => MainPage(),//主页路由
    "/login":(context) => LoginPage(),//登录路由
  };
}