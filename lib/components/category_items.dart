import 'package:flutter/material.dart';

import 'package:todo_app/models/categories.dart';

class CategoryItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      hint: Text('Category'),
      items: createDropDown(),
    );
  }

  List<DropdownMenuItem> createDropDown() {
    final _dropDown = <DropdownMenuItem>[];

    Categories.toList().map((category) {
      _dropDown.add(DropdownMenuItem(
        child: Text(category),
        value: category,
      ));
    });

    return _dropDown;
  }
}
