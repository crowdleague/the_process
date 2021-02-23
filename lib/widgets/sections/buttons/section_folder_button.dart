import 'package:flutter/material.dart';
import 'package:the_process/actions/platform/launch_url.dart';
import 'package:the_process/extensions/flutter_extensions.dart';

class SectionFolderButton extends StatelessWidget {
  final String? folderId;
  const SectionFolderButton(this.folderId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // if (folderId == null) return
    final folderURL = 'https://drive.google.com/drive/folders/$folderId';
    return RawMaterialButton(
      onPressed: () => context.dispatch(LaunchUrl(url: folderURL)),
      elevation: 0.0,
      fillColor: Colors.white,
      child: CircleAvatar(
          radius: 17,
          backgroundColor: Color(0xffbbaFb9),
          child: Icon(Icons.folder_open_outlined)),
      padding: EdgeInsets.all(5.0),
      shape: CircleBorder(),
    );
  }
}
