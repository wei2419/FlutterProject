

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookkeeping/main.dart';
import 'package:bookkeeping/Drawer_Page/Drawer_Page.dart';

class BPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              onTap: (index) {
                // Tab index when user select it, it start from zero

                // if(index==1){
                //   Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                // }
              },
              tabs: [
                Tab(icon: Icon(Icons.card_travel)),
                Tab(icon: Icon(Icons.add_shopping_cart)),
                Tab(text: "第三頁",)
              ],
            ),
             title: Text('Tabs Demo'),
          ),
          drawer: Drawer(
            child: MyDrawerPage(),

          ),
          body: TabBarView(
            children: [
              Center(
                  child: Text(
                    "0",
                    style: TextStyle(fontSize: 40),
                  )),
              Center(
                  child: _BPage()),
              Center(
                child: Text("3"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _BPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('返回首頁'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
        },
      ),
    );
  }
}