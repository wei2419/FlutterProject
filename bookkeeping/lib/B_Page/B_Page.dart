import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookkeeping/main.dart';

class BPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              onTap: (index) {
                // Tab index when user select it, it start from zero
              },
              tabs: [
                Tab(icon: Icon(Icons.card_travel)),
                Tab(icon: Icon(Icons.add_shopping_cart)),
              ],
            ),
            title: Text('Tabs Demo'),
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