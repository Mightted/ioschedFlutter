import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:ioschedflutter/scheduleItem.dart';
import 'package:ioschedflutter/schedulePage.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Tab> tabs = <Tab>[Tab(text: "Oct 23"), Tab(text: "Oct 24")];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Schedule',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Color(0xFF202020), primarySwatch: Colors.green),
        home: DefaultTabController(
          length: tabs.length,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              leading:
                  Icon(Icons.account_circle, size: 32, color: Colors.green),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.search),
                )
              ],
              title: Text('Schedule'),
              bottom: TabBar(
                tabs: tabs,
              ),
            ),
            body: TabBarView(
              children: tabs.map((Tab tab) {
                return Container(color: Colors.black, child: SchedulePage());
              }).toList(),
            ),
          ),
        ));
  }
}
