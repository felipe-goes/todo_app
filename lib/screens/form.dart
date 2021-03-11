import 'package:flutter/material.dart';

import 'package:todo_app/components/category_items.dart';
import 'package:todo_app/components/tag_items.dart';

import 'package:todo_app/models/form_labels.dart';

//import 'package:todo_app/models/categories.dart';

const WARNING_MESSAGE = "Please choose a title for your ToDo";

class ToDoFormPage extends StatefulWidget {
  @override
  _ToDoFormPageState createState() => _ToDoFormPageState();
}

class _ToDoFormPageState extends State<ToDoFormPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  validator: (value) {
                    if (value != null) {
                      if (value.isEmpty) {
                        return WARNING_MESSAGE;
                      }
                    }
                  },
                  decoration: InputDecoration(labelText: FormLabels.title),
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: FormLabels.description),
                ),
                Row(
                  children: <Widget>[
                    CategoryItems(),
                    TagItems(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState != null) {
                            if (_formKey.currentState!.validate()) {
                              debugPrint("Valido");
                            }
                          }
                        },
                        child: Text(FormLabels.submit),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
class ToDoFormPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  validator: (value) {
                    if (value != null) {
                      if (value.isEmpty) {
                        return WARNING_MESSAGE;
                      }
                    }
                  },
                  decoration: InputDecoration(labelText: FormLabels.title),
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: FormLabels.description),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 4, 4, 0),
                        child: CategoryItems(),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(4, 4, 0, 0),
                        child: TagItems(),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState != null) {
                            if (_formKey.currentState!.validate()) {
                              debugPrint("Valido");
                            }
                          }
                        },
                        child: Text(FormLabels.submit),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/
