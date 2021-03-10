import 'package:flutter/material.dart';

import 'package:todo_app/models/tags.dart';

class TagItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      hint: Text('Tags'),
      items: createDropDown(),
    );
  }

  List<DropdownMenuItem> createDropDown() {
    final _dropDown = <DropdownMenuItem>[];

    Tags.toList().map((tag) {
      _dropDown.add(DropdownMenuItem(
        child: Text(tag),
        value: tag,
      ));
    });

    return _dropDown;
  }
}
