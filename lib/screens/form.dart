import 'package:flutter/material.dart';

import 'package:todo_app/components/category_items.dart';
import 'package:todo_app/components/tag_items.dart';

//import 'package:todo_app/models/categories.dart';

class ToDoFormPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  //final _categories = Categories.toList();
  //final _testando = <DropdownMenuItem>[];

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
                        return "Please choose a title for your ToDo";
                      }
                    }
                  },
                  decoration: InputDecoration(labelText: "Title"),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Description"),
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
                            } else {
                              debugPrint("Invalido");
                            }
                          }
                        },
                        child: Text('New'),
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
