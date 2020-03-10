import 'package:flutter/material.dart';

class ScheduleItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: Colors.white70),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Text(
                      "8:30",
                      style: TextStyle(color: Colors.green, fontSize: 26),
                    ),
                    Text(
                      "上午",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Keynote",
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    Row(
                      children: <Widget>[
                        Icon(Icons.videocam, color: Colors.white60),
                        Text("1 hours / Main Stage")
                      ],
                    ),
                    Wrap(
                      spacing: 4,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.blueAccent,
                        ),
                        Text("Keynote")
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Icon(
                    Icons.star_border,
                    color: Colors.white70,
                    size: 26,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
