import 'package:flutter/material.dart';

import 'package:todo_app/screens/form.dart';
// import 'package:todo_app/screens/list.dart';

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
      home: ToDoFormPage(),
    );
  }
}
