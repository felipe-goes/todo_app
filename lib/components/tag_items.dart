import 'package:flutter/material.dart';

import 'package:todo_app/models/drop_down_selected.dart';
import 'package:todo_app/models/form_labels.dart';
import 'package:todo_app/models/tags.dart';

class TagItems extends StatefulWidget {
  final DropDownSelected _dropDownSelected;

  TagItems(this._dropDownSelected);

  @override
  _TagItemsState createState() => _TagItemsState(_dropDownSelected);
}

class _TagItemsState extends State<TagItems> {
  final DropDownSelected _dropDownSelected;

  _TagItemsState(this._dropDownSelected);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: DropdownButtonFormField(
        onChanged: (dynamic newValue) {
          setState(() {
            newValue != null
                ? _dropDownSelected.tag = newValue.toString()
                : _dropDownSelected.tag = _dropDownSelected.tag;
          });
        },
        items: createDropDownItems(),
        value: _dropDownSelected.tag,
        hint: Text(FormLabels.tags),
      ),
    );
  }

  List<DropdownMenuItem> createDropDownItems() {
    List<DropdownMenuItem>? _dropDown = <DropdownMenuItem<String>>[];

    _dropDown = Tags.toList().map<DropdownMenuItem<String>>((tag) {
      return DropdownMenuItem<String>(
        child: Text(
          tag,
          style: TextStyle(
            backgroundColor: Tags.mapColor(tag),
            color: tag != Tags.warning ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        value: tag,
      );
    }).toList();

    return _dropDown;
  }
}
