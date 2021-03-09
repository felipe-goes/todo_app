import 'package:flutter/material.dart';
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
            leading: Icon(
              Icons.circle,
              color:
                  this.toDo.color == null ? null : chooseColor(this.toDo.color),
            ),
            title: Text(this.toDo.title),
            subtitle: this.toDo.description == null
                ? null
                : Text(this.toDo.description!),
            trailing: this.toDo.tag == null
                ? null
                : Chip(
                    label: Text(this.toDo.tag!),
                    backgroundColor: chooseTag(this.toDo.tag!),
                  ),
          ),
        ),
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
