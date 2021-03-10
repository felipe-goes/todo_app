import 'package:flutter/material.dart';

import 'package:todo_app/models/category.dart';

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
                DropdownButtonFormField(
                  hint: Text('Category'),
                  items: <DropdownMenuItem>[
                    DropdownMenuItem(
                      child: Text('teste'),
                      value: 'teste',
                    ),
                    DropdownMenuItem(
                      child: Text('outro teste'),
                      value: 'outro teste',
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
