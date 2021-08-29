import 'package:flutter/material.dart';
import 'package:bookkeeping/Drawer_Page/Drawer_Page.dart';

import 'Setting_Page/Setting_Page.dart';

void main() {
  // runApp(MyApp());
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(BuildContext context)=> MyHomePage(title: '記帳'),
        '/SettingPage':(BuildContext context)=>SettingPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: MyHomePage(title: '記帳'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _onItemTapped(int index) {
    setState(() {
      NavigatorState nav=Navigator.of(context);
      switch(index){
        case 4:
          nav.pushNamed('/SettingPage');
          break;
      }

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.account_balance)),
        ],
      ),
      drawer:Drawer(
        child: DrawerPage(),
      ),
      body: Text('test'),
      bottomNavigationBar: BottomNavigationBar( // 底部导航
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label:""),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance), label:"帳戶"),
          BottomNavigationBarItem(icon: Icon(Icons.view_day), label:"紀錄"),
          BottomNavigationBarItem(icon: Icon(Icons.money_outlined), label:"預算"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label:"設定"),
        ],
        currentIndex: 2,
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.blueGrey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
