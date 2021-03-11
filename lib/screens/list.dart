import 'package:flutter/material.dart';

import 'package:todo_app/components/card.dart';

import 'package:todo_app/models/categories.dart';
import 'package:todo_app/models/tags.dart';
import 'package:todo_app/models/todo.dart';

class ToDoListPage extends StatefulWidget {
  @override
  _ToDoListPageState createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  final List<ToDo> _toDos = <ToDo>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo\'s'),
      ),
      body: ListView.builder(
          itemCount: _toDos.length,
          itemBuilder: (BuildContext context, int index) {
            return ToDoCard(_toDos[index]);
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _toDos.add(ToDo(
              title: "Another Title",
              description: "Another sick description.",
              category: Categories.purple,
              tag: Tags.chill,
            ));
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
