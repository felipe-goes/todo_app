import 'package:flutter/material.dart';

class Categories {
  static const red = "Red";
  static const blue = "Blue";
  static const green = "Green";
  static const yellow = "Yellow";
  static const black = "Black";
  static const white = "White";
  static const purple = "Purple";
  //static const none = "None";

  static List toList() {
    return [red, blue, green, yellow, black, white, purple];
  }

  static Color? mapColor(String category) {
    final colors = const <String, Color?>{
      //Categories.none: null,
      Categories.red: Colors.red,
      Categories.blue: Colors.blue,
      Categories.green: Colors.green,
      Categories.yellow: Colors.yellow,
      Categories.black: Colors.black,
      Categories.white: Colors.white,
      Categories.purple: Colors.purple
    };

    return colors[category];
  }
}
