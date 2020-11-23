import 'package:flutter/material.dart';
import 'package:the_process/actions/auth/get_authorized.dart';
import 'package:the_process/enums/auth/provider.dart';
import 'package:the_process/extensions/flutter_extensions.dart';

class GoogleAuthorizationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: ImageIcon(AssetImage('assets/google.png')),
        elevation: 1,
        onPressed: () =>
            context.dispatch(GetAuthorized(toAccess: Provider.google)));
  }
}
