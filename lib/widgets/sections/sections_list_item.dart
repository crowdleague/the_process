import 'package:flutter/material.dart';
import 'package:the_process/models/sections/section.dart';
import 'package:the_process/widgets/sections/buttons/section_folder_button.dart';
import 'package:the_process/widgets/sections/buttons/use_case_document_button.dart';

class SectionsListItem extends StatelessWidget {
  final Section _section;

  SectionsListItem(Section section) : _section = section;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(_section.name),
          ),
          Row(
            children: [
              UseCaseDocumentButton(_section.useCasesDocId),
              SectionFolderButton(_section.folderId),
            ],
          )
        ],
      ),
    );

    //   ListTile(
    //       title: Text(_section.name),
    //       trailing: SizedBox(
    //         width: 100,
    //         child: Row(
    //           children: [
    //             UseCaseDocumentButton(_section.useCasesDocId),
    //             SectionFolderButton(_section.folderId),
    //           ],
    //         ),
    //       )),
    // );
  }
}
