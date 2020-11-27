import 'package:flutter/material.dart';

class SectionsPage extends StatelessWidget {
  const SectionsPage();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none, hintText: 'Enter a search term'),
        ),
      ),
    );
  }
}
