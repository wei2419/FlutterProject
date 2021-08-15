import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawerPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ListView(
    children: <Widget>[
    //設定用户名稱
    UserAccountsDrawerHeader(
    accountName: new Text(
    "HKT線上教室",
    ),
    //設定Email
    accountEmail: new Text(
    "thishkt@gmail.com",
    ),
    //設定大頭照
    currentAccountPicture: new CircleAvatar(
    backgroundImage: new AssetImage("assets/images/logo.png"),
    ),
    ),
    //選單
    ListTile(
    leading: new CircleAvatar(child: Icon(Icons.chrome_reader_mode)),
    title: Text('從零開始學 Java 程式設計'),
    onTap: () {
    // _onItemClick(0);
    },
    ),
    ListTile(
    leading: new CircleAvatar(child: Icon(Icons.code)),
    title: Text('從零開始學 Kotlin 程式設計'),
    onTap: () {
    // _onItemClick(1);
    },
    ),
    ListTile(
    leading: new CircleAvatar(child: Icon(Icons.computer)),
    title: Text('從零開始學 Flutter 程式設計'),
    onTap: () {
    // _onItemClick(2);
    },
    ),
    ],
    );
  }
}