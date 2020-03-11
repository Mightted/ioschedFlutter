import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

// ignore: must_be_immutable
class ScheduleItem extends StatelessWidget {
  String time;
  String title, content;
  bool isAm, hasVideo;
  List<String> tags;

  ScheduleItem(
      {this.time,
      this.isAm = true,
      this.hasVideo = false,
      this.title,
      this.content,
      this.tags = const []});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: Colors.white70),
      child: SizedBox(
        height: 200,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
              ),
            ),
//              Expanded(
//                flex: 2,
//                child: Flex(
//                  direction: Axis.vertical,
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: <Widget>[
//                    Text(
//                      time,
//                      style: TextStyle(color: Colors.green, fontSize: 26),
//                    ),
//                    Text(
//                      isAm ? "上午" : "下午",
//                      style: TextStyle(
//                          color: Colors.green,
//                          fontSize: 12,
//                          fontWeight: FontWeight.bold),
//                    )
//                  ],
//                ),
//              ),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title,
                      style: TextStyle(
                          height: 1.5, fontSize: 18, color: Colors.white)),
                  Row(
                    children: <Widget>[
                      hasVideo
                          ? Icon(Icons.videocam, color: Colors.white60)
                          : null,
                      Text(content)
                    ],
                  ),
                  Wrap(
                      spacing: 12,
                      runSpacing: 4,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: tags.map((tag) {
                        return Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: randomColor(),
                            ),
                            Text(tag)
                          ],
                        );
                      }).toList())
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
      ),
    );
  }
}
