import 'package:flutter/material.dart';

import 'package:todo_app/models/categories.dart';
import 'package:todo_app/models/drop_down_selected.dart';
import 'package:todo_app/models/form_labels.dart';

class CategoryItems extends StatefulWidget {
  final DropDownSelected _dropDownSelected;

  CategoryItems(this._dropDownSelected);

  @override
  _CategoryItemsState createState() => _CategoryItemsState(_dropDownSelected);
}

class _CategoryItemsState extends State<CategoryItems> {
  final DropDownSelected _dropDownSelected;

  _CategoryItemsState(this._dropDownSelected);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: DropdownButtonFormField(
        onChanged: (dynamic newValue) {
          setState(() {
            newValue != null
                ? _dropDownSelected.category = newValue.toString()
                : _dropDownSelected.category = _dropDownSelected.category;
          });
        },
        items: createDropDownItems(),
        value: _dropDownSelected.category,
        hint: Text(FormLabels.category),
      ),
    );
  }

  List<DropdownMenuItem> createDropDownItems() {
    List<DropdownMenuItem>? _dropDown = <DropdownMenuItem<String>>[];

    _dropDown = Categories.toList().map<DropdownMenuItem<String>>((category) {
      return DropdownMenuItem<String>(
        child: category != Categories.none
            ? Icon(
                Icons.circle,
                color: Categories.mapColor(category),
              )
            : Text(Categories.none),
        value: category,
      );
    }).toList();

    return _dropDown;
  }
}
