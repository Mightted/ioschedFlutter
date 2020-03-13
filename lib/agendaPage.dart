import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class AgendaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      child: Row(
        children: <Widget>[
//          Column(
//            children: <Widget>[
//              Text(
//                "23",
//                style: TextStyle(color: Colors.green),
//              ),
//              Text(
//                "周三",
//                style: TextStyle(color: Colors.green),
//              )
//            ],
//          ),
          SizedBox(
            height: 1000,
            width: 200,
            child: ListView.builder(
                itemCount: 10,
                itemExtent: 90,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 80, top: 8, bottom: 8),
                    child: Container(
                      width: 200,
                      color: randomColor(),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
