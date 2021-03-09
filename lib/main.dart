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
      home: ToDoListPage(),
    );
  }
}

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
            title: 'Title',
            description: 'My description of the ToDo.',
            tag: 'Chill',
            color: 'blue',
          )),
          ToDoCard(ToDo(
            title: 'Second Title',
            description: 'Another sick description.',
            tag: 'Warning',
            color: 'yellow',
          )),
          ToDoCard(ToDo(
            title: 'Third Title',
            description:
                'One more description that is bigger than all the others just to test how the layout will behave in this scenario.',
            tag: 'Urgent',
            color: 'black',
          )),
        ],
      ),
    );
  }
}

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

class ToDo {
  final String title;
  final String? description;
  final String? tag;
  final String? color;

  ToDo({required this.title, this.description, this.tag, this.color});
}
