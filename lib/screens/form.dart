import 'package:flutter/material.dart';

import 'package:todo_app/components/category_items.dart';
import 'package:todo_app/components/tag_items.dart';

import 'package:todo_app/models/categories.dart';
import 'package:todo_app/models/drop_down_selected.dart';
import 'package:todo_app/models/form_labels.dart';
import 'package:todo_app/models/todo.dart';

const WARNING_MESSAGE = "Please choose a title for your ToDo";

class ToDoFormPage extends StatefulWidget {
  @override
  _ToDoFormPageState createState() => _ToDoFormPageState();
}

class _ToDoFormPageState extends State<ToDoFormPage> {
  final _formKey = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final DropDownSelected _dropDownSelected = DropDownSelected();

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
                  controller: _titleController,
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
                  controller: _descriptionController,
                  decoration:
                      InputDecoration(labelText: FormLabels.description),
                ),
                Row(
                  children: <Widget>[
                    CategoryItems(_dropDownSelected),
                    Expanded(
                      flex: 1,
                      child: Text(""),
                    ),
                    TagItems(_dropDownSelected),
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
                              ToDo _toDo = ToDo(
                                title: _titleController.text,
                                description: _descriptionController.text,
                                category: _dropDownSelected.category !=
                                        Categories.none
                                    ? _dropDownSelected.category
                                    : null,
                                tag: _dropDownSelected.tag,
                              );
                              Navigator.pop(context, _toDo);
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
