import 'package:flutter/material.dart';

class Tags {
  static const chill = "Chill";
  static const warning = "Warning";
  static const urgent = "Urgent";
  //static const none = "None";

  static List toList() {
    return [chill, warning, urgent];
  }

  static Color? mapColor(String tag) {
    final colors = const <String, Color?>{
      //Tags.none: null,
      Tags.chill: Colors.green,
      Tags.warning: Colors.yellow,
      Tags.urgent: Colors.red
    };

    return colors[tag];
  }
}
