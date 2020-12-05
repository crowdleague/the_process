import 'package:flutter/material.dart';
import 'package:the_process/models/sections/section.dart';
import 'package:the_process/widgets/sections/sections_list/item/doc_button.dart';
import 'package:the_process/widgets/sections/sections_list/item/folder_button.dart';

class SectionsListItem extends StatelessWidget {
  final Section section;
  const SectionsListItem(
    this.section, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(section.name),
      trailing: SizedBox(
        width: 150,
        child: Row(
          children: [
            FolderButton(section.folderId),
            DocButton(section.useCasesDocId)
          ],
        ),
      ),
    );
  }
}
