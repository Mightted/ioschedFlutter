import 'package:flutter/material.dart';

class ScheduleItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          children: <Widget>[Text("10"), Text("上午")],
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: <Widget>[
              Text("Keynote"),
              Text("Main stage"),
            ],
          ),
        ),
        Icon(Icons.star_border)
      ],
    );
  }
}