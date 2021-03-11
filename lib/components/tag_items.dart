import 'package:flutter/material.dart';
import 'package:todo_app/models/form_labels.dart';

import 'package:todo_app/models/tags.dart';

class TagItems extends StatefulWidget {
  @override
  _TagItemsState createState() => _TagItemsState();
}

class _TagItemsState extends State<TagItems> {
  String? _selected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: DropdownButtonFormField(
        onChanged: (dynamic newValue) {
          setState(() {
            debugPrint("newValue: $newValue, _selected: $_selected");
            newValue != null
                ? _selected = newValue.toString()
                : _selected = _selected;
            debugPrint("newValue: $newValue, _selected: $_selected");
          });
        },
        items: createDropDownItems(),
        value: _selected,
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
