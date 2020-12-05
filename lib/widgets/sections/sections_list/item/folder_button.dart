import 'package:flutter/material.dart';

class FolderButton extends StatelessWidget {
  final String id;

  FolderButton(this.id);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage('assets/google_drive.png'),
    );
    // FloatingActionButton(
    //     child: ImageIcon(),
    //     backgroundColor: Colors.white,
    //     elevation: 0,
    //     onPressed: () => context
    //         .dispatch(OpenWebPage(type: WebPage.google_drive_folder, id: id)));
  }
}
