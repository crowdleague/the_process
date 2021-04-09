import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/widgets/sections/sections_page.dart';
import 'package:the_process/widgets/shared/profile_avatar.dart';

class ProjectSelectionPage extends StatefulWidget {
  ProjectSelectionPage({Key? key}) : super(key: key);

  @override
  _ProjectSelectionPageState createState() => _ProjectSelectionPageState();
}

class _ProjectSelectionPageState extends State<ProjectSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SectionsPage(),
          StoreConnector<AppState, String?>(
            distinct: true,
            converter: (store) => store.state.profileData?.photoURL,
            builder: (context, photoURL) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ProfileAvatar(photoURL),
              );
            },
          ),
        ],
      ),
    );
  }
}
