import 'package:flutter/material.dart';
import 'package:the_process/actions/platform/open_web_page.dart';
import 'package:the_process/enums/platform/web_page.dart';
import 'package:the_process/extensions/flutter_extensions.dart';

class DocButton extends StatelessWidget {
  final String id;

  DocButton(this.id);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: ImageIcon(AssetImage('assets/google_docs.png')),
        elevation: 0,
        onPressed: () =>
            context.dispatch(OpenWebPage(type: WebPage.google_doc, id: id)));
  }
}
