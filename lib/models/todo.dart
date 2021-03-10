import 'package:flutter/material.dart';

import 'tags.dart';
import 'category.dart';

class ToDo {
  final String title;
  final String? description;
  final String? tag;
  final String? category;

  ToDo({required this.title, this.description, this.tag, this.category});

  Color? chooseTag() {
    final tags = const <String, Color>{
      Tags.chill: Colors.green,
      Tags.warning: Colors.yellow,
      Tags.urgent: Colors.red
    };

    return tags[tag];
  }

  Color? chooseColor() {
    final colors = const <String, Color>{
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

  @override
  String toString() {
    return 'ToDo{title: $title, description: $description, tag: $tag, category: $category}';
  }
}
