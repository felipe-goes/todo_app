import 'package:flutter/material.dart';

import 'package:todo_app/components/card.dart';

import 'package:todo_app/models/tags.dart';
import 'package:todo_app/models/todo.dart';

class ToDoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo\'s'),
      ),
      body: ListView(
        children: <Widget>[
          ToDoCard(ToDo(
            title: 'Second Title',
            description: 'Another sick description.',
            tag: Tags.warning,
            category: 'yellow',
          )),
          ToDoCard(ToDo(
            title: 'Second Title',
            description: 'Another sick description.',
            category: 'purple',
          )),
          ToDoCard(ToDo(
            title: 'Third Title',
            tag: Tags.urgent,
            category: 'black',
          )),
          ToDoCard(ToDo(
            title: 'Another title but bigger',
            description:
                'One more description that is bigger than all the others just to test how the layout will behave in this scenario.',
            tag: Tags.chill,
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.add),
      ),
    );
  }
}
