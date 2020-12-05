import 'package:flutter/material.dart';
import 'package:the_process/models/sections/section.dart';

class SectionsListItem extends StatelessWidget {
  final Section section;
  const SectionsListItem(
    this.section, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(section.name));
  }
}
