import 'package:flutter/material.dart';

void main() {
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ToDoList(
        title: 'Title',
        description: 'My description of the ToDo.',
        tag: 'Chill',
        color: 'blue',
      ),
    );
  }
}

class ToDoList extends StatelessWidget {
  final String title;
  final String? description;
  final String? tag;
  final String? color;

  ToDoList({required this.title, this.description, this.tag, this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo\'s'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(
                Icons.circle,
                color: this.color == null ? null : chooseColor(this.color),
              ),
              title: Text(this.title),
              subtitle:
                  this.description == null ? null : Text(this.description!),
              trailing: this.tag == null
                  ? null
                  : Chip(
                      label: Text(this.tag!),
                      backgroundColor: chooseTag(this.tag!),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  chooseTag(String tag) {
    final tags = const <String, Color>{
      "Urgent": Colors.red,
      "Chill": Colors.green,
      "Warning": Colors.yellow
    };

    return tags[tag];
  }

  chooseColor(String? color) {
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
}
