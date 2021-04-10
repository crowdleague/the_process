import 'package:flutter/material.dart';
import 'package:the_process/widgets/home/project-selection/project_selection_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ProjectSelectionPage();
    });
  }
}
