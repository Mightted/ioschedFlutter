import 'package:flutter/material.dart';
import 'package:ioschedflutter/scheduleItem.dart';

class SchedulePage extends StatefulWidget {
  List<String> tabs;
  TabController controller;

  SchedulePage({this.tabs, this.controller});

  @override
  State createState() => _ScheduleState();
}

class _ScheduleState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: widget.controller,
      children: widget.tabs.map((String tab) {
        return Container(
          color: Colors.black,
          child: getScheduleContent(),
        );
      }).toList(),
    );
  }

  Widget getScheduleContent() {
    return Column(
      children: <Widget>[
        ScheduleItem(
          time: "8:30",
          hasVideo: true,
          title: "Keynote",
          content: "1 hours / Main Stage",
          tags: <String>[
            "Android",
            "Studio & Tooling",
            "Android TV",
            "Google Play",
            "JetPack",
          ],
        ),
        ScheduleItem(
          time: "8:30",
          hasVideo: true,
          title: "Keynote",
          content: "1 hours / Main Stage",
          tags: <String>[
            "Android",
            "Studio & Tooling",
            "Android TV",
            "Google Play",
            "JetPack"
          ],
        ),
      ],
    );
  }
}
