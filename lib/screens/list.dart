import 'package:flutter/material.dart';

import 'package:todo_app/components/card.dart';

import 'package:todo_app/models/todo.dart';

import 'package:todo_app/screens/form.dart';

class ToDoListPage extends StatefulWidget {
  final List<ToDo> _toDos = <ToDo>[];

  @override
  _ToDoListPageState createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo\'s'),
      ),
      body: ListView.builder(
          itemCount: widget._toDos.length,
          itemBuilder: (BuildContext context, int index) {
            return ToDoCard(widget._toDos[index]);
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return ToDoFormPage();
            }),
          ).then((toDo) => _addToDo(toDo));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _addToDo(ToDo toDo) {
    setState(() {
      widget._toDos.add(toDo);
    });
  }
}
