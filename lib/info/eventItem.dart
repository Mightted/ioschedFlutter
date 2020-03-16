import 'package:flutter/material.dart';

class EventItem extends StatelessWidget {

  Widget child;

  EventItem({this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 200,
          color: Colors.white24,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Sessions", style: TextStyle(fontSize: 30, color: Colors.white),),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top:30, right: 40),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: child,
                  ),
                ),
              )

            ],
          )
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 14),
          child: Text("sessions are a chance to learn about Android's newest technologies directly from Android engineers and "
              "leadership.Here you'll see presentations and demos on our latest features and updates from the staff who "
          "helped build them.", style: TextStyle(color: Colors.white70),),
        )

      ],
    );
  }
}