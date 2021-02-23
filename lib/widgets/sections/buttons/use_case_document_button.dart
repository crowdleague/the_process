import 'package:flutter/material.dart';
import 'package:the_process/actions/platform/launch_url.dart';
import 'package:the_process/extensions/flutter_extensions.dart';

class UseCaseDocumentButton extends StatelessWidget {
  final String? documentId;
  const UseCaseDocumentButton(this.documentId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // if (folderId == null) return
    final documentURL = 'https://docs.google.com/document/d/$documentId/edit';
    return RawMaterialButton(
      onPressed: () => context.dispatch(LaunchUrl(url: documentURL)),
      elevation: 0.0,
      fillColor: Colors.white,
      child: CircleAvatar(
          radius: 17,
          backgroundColor: Color(0xffbbaFb9),
          child: Icon(Icons.pageview_outlined)),
      padding: EdgeInsets.all(5.0),
      shape: CircleBorder(),
    );
  }
}
