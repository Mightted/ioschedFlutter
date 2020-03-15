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
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Text(
                  "23",
                  style: TextStyle(color: Colors.green),
                ),
                Text(
                  "周三",
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
          ),
          SizedBox(
            height: 1000,
            width: MediaQuery.of(context).size.width-80,
            child: ListView.builder(
                itemCount: 10,
                itemExtent: 80,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Container(
                      color: randomColor(),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            child: Icon(Icons.fastfood),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text("Breakfast"),
                             Text("8:30 上午 - 10:00 上午")
                           ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
