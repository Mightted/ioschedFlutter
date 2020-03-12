import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:ioschedflutter/scheduleItem.dart';
import 'package:ioschedflutter/schedulePage.dart';

void main() {
//  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  List<String> titles = ["Schedule", "Agenda", "Info"];
  List<Widget> pages;
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
              title: Text(titles[_currentIndex]),
              bottom: TabBar(
                tabs: tabs,
              ),
            ),
            body: TabBarView(
              children: tabs.map((Tab tab) {
                return Container(color: Colors.black, child: SchedulePage());
              }).toList(),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: null, child: Icon(Icons.filter_list)),
            bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Color(0xFF1B1B1B),
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                items: getBottomNavItems(
                    _currentIndex,
                    [Icons.event, Icons.view_agenda, Icons.info],
                    ["Schedule", "Agenda", "Info"])
//              [
//                BottomNavigationBarItem(
//                    icon: Icon(
//                      Icons.event,
//                      color: Colors.green,
//                    ),
//                    title: Text(
//                      "Schedule",
//                      style: TextStyle(
//                        color: Colors.white70,
//                      ),
//                    )),
//                BottomNavigationBarItem(
//                    icon: Icon(
//                      Icons.view_agenda,
//                      color: Colors.white70,
//                    ),
//                    title: Text(
//                      "Agenda",
//                      style: TextStyle(
//                        color: Colors.white70,
//                      ),
//                    )),
//                BottomNavigationBarItem(
//                    icon: Icon(
//                      Icons.info,
//                      color: Colors.white70,
//                    ),
//                    title: Text(
//                      "Info",
//                      style: TextStyle(
//                        color: Colors.white70,
//                      ),
//                    ))
//              ],
                ),
          ),
        ));
  }

  List<BottomNavigationBarItem> getBottomNavItems(
      int index, List<IconData> icons, List<String> titles) {
    return icons.map((IconData icon) {
      return BottomNavigationBarItem(
          icon: Icon(
            icon,
            color: icons.indexOf(icon) == index ? Colors.green : Colors.white70,
          ),
          title: Text(
            titles[icons.indexOf(icon)],
            style: TextStyle(
              color:
                  icons.indexOf(icon) == index ? Colors.green : Colors.white70,
            ),
          ));
    }).toList();
  }
}
