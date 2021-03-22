import 'package:todo_app/models/categories.dart';

class DropDownSelected {
  String category;
  String? tag;

  DropDownSelected({this.category = Categories.none, this.tag});
}
