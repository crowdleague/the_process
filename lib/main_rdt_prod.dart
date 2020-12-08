import 'package:flutter/material.dart';
import 'package:redux_remote_devtools/redux_remote_devtools.dart';
import 'package:the_process/utils/redux_bundle.dart';
import 'package:the_process/utils/store_operation.dart';
import 'package:the_process/widgets/app_widget/app_widget.dart';

import 'models/app_state/app_state.dart';

void main() {
  // Create the rdt middleware that connects to the rdt server.
  final _rdtMiddleware = RemoteDevToolsMiddleware<AppState>('localhost:8000');

  // Create an operation for the redux bundle to run on the store.
  // In this case, we give RemoteDevToolsMiddleware access to the store then
  // tell it to connect to the server.
  final _rdtOperation = StoreOperation((store) async {
    _rdtMiddleware.store = store;
    await _rdtMiddleware.connect();
  });

  // Setup the redux bundle with an extra middleware that sends each action
  // and state to the rdt server for display.
  ReduxBundle.setup(
    extraMiddlewares: [_rdtMiddleware],
    storeOperations: [_rdtOperation],
  );

  runApp(AppWidget());
}
