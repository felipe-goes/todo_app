import 'package:flutter/material.dart';

import 'package:todo_app/models/categories.dart';
import 'package:todo_app/models/form_labels.dart';

class CategoryItems extends StatefulWidget {
  @override
  _CategoryItemsState createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<CategoryItems> {
  @override
  Widget build(BuildContext context) {
    String? _selected;

    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 4, 4, 0),
        child: DropdownButtonFormField(
          onChanged: (dynamic newValue) {
            setState(() {
              newValue != null
                  ? _selected = newValue.toString()
                  : _selected = _selected;
            });
          },
          items: createDropDownItems(),
          value: _selected,
          hint: Text(FormLabels.category),
        ),
      ),
    );
  }

  List<DropdownMenuItem> createDropDownItems() {
    List<DropdownMenuItem>? _dropDown = <DropdownMenuItem<String>>[];

    _dropDown = Categories.toList().map<DropdownMenuItem<String>>((category) {
      return DropdownMenuItem<String>(
        child: Text(category),
        value: category,
      );
    }).toList();

    return _dropDown;
  }
}
