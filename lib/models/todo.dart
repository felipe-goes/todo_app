class ToDo {
  final String title;
  final String? description;
  final String? tag;
  final String? color;

  ToDo({required this.title, this.description, this.tag, this.color});

  @override
  String toString() {
    return 'ToDo{title: $title, description: $description, tag: $tag, color: $color}';
  }
}
