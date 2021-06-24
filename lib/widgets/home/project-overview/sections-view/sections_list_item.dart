import 'package:flutter/material.dart';
import 'package:the_process/models/sections/section.dart';
import 'package:the_process/widgets/home/project-overview/sections-view/buttons/section_folder_button.dart';
import 'package:the_process/widgets/home/project-overview/sections-view/buttons/use_case_document_button.dart';

class SectionsListItem extends StatelessWidget {
  final Section _section;

  const SectionsListItem(Section section, {Key? key})
      : _section = section,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 0.0),
      child: SizedBox(
        height: 65,
        child: Card(
          color: Colors.black12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  _section.name,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Row(
                children: [
                  UseCaseDocumentButton(_section.useCasesDocId),
                  SectionFolderButton(_section.folderId),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
