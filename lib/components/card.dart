import 'package:flutter/material.dart';

import 'package:todo_app/models/tags.dart';
import 'package:todo_app/models/todo.dart';

class ToDoCard extends StatelessWidget {
  final ToDo toDo;

  ToDoCard(this.toDo);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(4),
          child: ListTile(
            leading: toDo.color != null
                ? Icon(
                    Icons.circle,
                    color: toDo.chooseColor(toDo.color!),
                  )
                : null,
            title: Text(toDo.title),
            subtitle: toDo.description != null ? Text(toDo.description!) : null,
            trailing: toDo.tag != null
                ? Chip(
                    label: Text(toDo.tag!),
                    backgroundColor: toDo.chooseTag(toDo.tag!),
                    labelStyle: TextStyle(
                      color: toDo.tag != Tags.warning
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
