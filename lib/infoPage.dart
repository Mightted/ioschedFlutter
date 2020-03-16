import 'package:flutter/material.dart';
import 'package:ioschedflutter/info/eventItem.dart';

class InfoPage extends StatefulWidget {
  List<String> tabs;
  TabController controller;

  InfoPage({this.tabs, this.controller});

  @override
  State createState() => _InfoState();
}

class _InfoState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
        controller: widget.controller,
        children: widget.tabs.map((String tab) {
          return Container(
            color: Colors.black,
            child: getScheduleContent(),
          );
        }).toList());
  }

  Widget getScheduleContent() {
    return ListView(
//      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
          child: Text(
            "EVENT TYPES",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        EventItem(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.green,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                    height: 30,
                    width: 64,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                    height: 30,
                    width: 100,
                  ),
                ),
              )
            ],
          ),
        ),
        EventItem(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.green,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                    height: 30,
                    width: 64,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(20)),
                  ),
                  child: SizedBox(
                    height: 60,
                    width: 100,
                  ),
                ),
              )
            ],
          ),
        ),
        EventItem(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.green,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 3),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red),
                  child: SizedBox(
                    height: 100,
                    width: 32,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF00004d), width: 3),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(20)),
                  ),
                  child: SizedBox(
                    height: 60,
                    width: 60,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
