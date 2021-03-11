import 'package:flutter/material.dart';

class Tags {
  static const chill = "Chill";
  static const warning = "Warning";
  static const urgent = "Urgent";

  static List toList() {
    return [chill, warning, urgent];
  }

  static Color? mapColor(String tag) {
    final colors = const <String, Color>{
      Tags.chill: Colors.green,
      Tags.warning: Colors.yellow,
      Tags.urgent: Colors.red
    };

    return colors[tag];
  }
}
