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
        child: InkWell(
          splashColor:
              toDo.category != null ? toDo.chooseColor()!.withAlpha(50) : null,
          onTap: () => {},
          child: Padding(
            padding: EdgeInsets.all(4),
            child: ListTile(
              leading: toDo.category != null
                  ? Icon(
                      Icons.circle,
                      color: toDo.chooseColor(),
                    )
                  : null,
              title: Text(toDo.title),
              subtitle:
                  toDo.description != null ? Text(toDo.description!) : null,
              trailing: toDo.tag != null
                  ? Chip(
                      label: Text(toDo.tag!),
                      backgroundColor: toDo.chooseTag(),
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
      ),
    );
  }
}
