import 'dart:math';

import 'package:flutter/material.dart';

var colors = [
  Colors.blueAccent,
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.deepOrangeAccent,
  Colors.brown,
  Colors.lightGreenAccent,
  Colors.lightBlue
];

Color randomColor() => colors[Random().nextInt(colors.length)];
