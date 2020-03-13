import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ioschedflutter/agendaPage.dart';
import 'package:ioschedflutter/infoPage.dart';
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

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  int _currentIndex = 0;
  List<String> titles = ["Schedule", "Agenda", "Info"];
  List<String> scheduleTabs = ["Oct 23", "Oct 24"];
  List<String> infoTabs = ["Event", "FAQ", "About", "Setting"];
  List<Tab> tabs;
  TabController controller;

  void _updateTabs(int index) {
    switch (_currentIndex) {
      case 0:
        tabs = scheduleTabs.map((String tabName) {
          return Tab(text: tabName);
        }).toList();
        break;
      case 1:
        tabs = null;
        break;
      case 2:
        tabs = infoTabs.map((String tabName) {
          return Tab(text: tabName);
        }).toList();
        break;
      default:
        break;
    }

    if (tabs != null) {
      controller = TabController(length: tabs.length, vsync: this);
    }
  }

  @override
  void initState() {
    super.initState();
    _updateTabs(0);
  }

  Widget getHomePage(bool showTab) {
    var scaffold = Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.account_circle, size: 32, color: Colors.green),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          )
        ],
        title: Text(titles[_currentIndex]),
        bottom: showTab
            ? TabBar(
            controller: controller,
            tabs: tabs)
            : null,
      ),
      body: getBodyPage(_currentIndex),
      floatingActionButton:
      FloatingActionButton(onPressed: null, child: Icon(Icons.filter_list)),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF1B1B1B),
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              _updateTabs(_currentIndex);
              print(tabs);
            });
          },
          items: getBottomNavItems(
              _currentIndex,
              [Icons.event, Icons.view_agenda, Icons.info],
              ["Schedule", "Agenda", "Info"])),
    );

    return scaffold;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Schedule',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Color(0xFF202020), primarySwatch: Colors.green),
        home: getHomePage(_currentIndex != 1));
  }

  Widget getBodyPage(int index) {
    switch (index) {
      case 0:
        return SchedulePage(
            tabs: scheduleTabs,
            controller: controller
        );
        break;
      case 1:
        return AgendaPage();
        break;
      case 2:
      default:
        return InfoPage(
            tabs: infoTabs,
            controller: controller
        );
        break;
    }
  }

  // 绘制下方的导航条
  List<BottomNavigationBarItem> getBottomNavItems(int index,
      List<IconData> icons, List<String> titles) {
    return icons.map((IconData icon) {
      bool inCurrent = icons.indexOf(icon) == index;

      return BottomNavigationBarItem(
        icon: Icon(icon, color: inCurrent ? Colors.green : Colors.white70),
        title: Text(
          titles[icons.indexOf(icon)],
          style: TextStyle(color: inCurrent ? Colors.green : Colors.white70),
        ),
      );
    }).toList();
  }
}
