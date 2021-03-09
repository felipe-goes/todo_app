import 'package:flutter/material.dart';

import 'package:todo_app/models/tags.dart';

class ToDo {
  final String title;
  final String? description;
  final String? tag;
  final String? color;

  ToDo({required this.title, this.description, this.tag, this.color});

  Color? chooseTag(String tag) {
    final tags = const <String, Color>{
      Tags.chill: Colors.green,
      Tags.warning: Colors.yellow,
      Tags.urgent: Colors.red
    };

    return tags[tag];
  }

  Color? chooseColor(String color) {
    final colors = const <String, Color>{
      "red": Colors.red,
      "blue": Colors.blue,
      "green": Colors.green,
      "yellow": Colors.yellow,
      "black": Colors.black,
      "white": Colors.white,
      "purple": Colors.purple
    };

    return colors[color];
  }

  @override
  String toString() {
    return 'ToDo{title: $title, description: $description, tag: $tag, color: $color}';
  }
}
