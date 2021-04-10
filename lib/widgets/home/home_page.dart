import 'package:flutter/material.dart';
import 'package:the_process/widgets/home/project-selection/project_selection_page.dart';
import 'package:the_process/widgets/home/section-detail/section_detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) return ProjectSelectionPage();
      return Row(
        children: [
          Container(width: 300, child: ProjectSelectionPage()),
          SectionDetailPage()
        ],
      );
    });
  }
}
