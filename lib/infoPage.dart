import 'package:flutter/material.dart';
import 'package:ioschedflutter/scheduleItem.dart';

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
            "JetPack"
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
