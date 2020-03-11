import 'package:flutter/material.dart';
import 'package:ioschedflutter/scheduleItem.dart';

class SchedulePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScheduleItem(
        time: "8:30",
        hasVideo: true,
        title: "Keynote",
        content: "1 hours / Main Stage",
      tags: <String>["Android", "Studio & Tooling", "Android TV", "Google Play", "JetPack"],),
    );
  }
}