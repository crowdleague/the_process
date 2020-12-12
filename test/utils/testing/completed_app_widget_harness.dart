import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/utils/redux_bundle.dart';
import 'package:the_process/utils/wrappers/firebase_wrapper.dart';
import 'package:the_process/widgets/app_widget/app_widget.dart';

import '../../mocks/redux/redux_bundle_mocks.dart';
import '../../mocks/wrappers/firebase_wrapper_mocks.dart';

/// A test harness to wrap the widget under test, (in this case the
/// AppWidget), and provide all the functionality
/// that a test may want in order to interact with the widget.
///
/// In this case, the firebase and redux futures that are awaited in the
/// AppWidget have already been completed.lllllllllllll
class CompletedAppWidgetHarness {
  final _firebaseCompleter = Completer<FirebaseApp>();
  final _reduxCompleter = Completer<Store<AppState>>();

  FirebaseWrapper _firebase;
  ReduxBundle _redux;
  AppWidget _appWidget;

  CompletedAppWidgetHarness({FirebaseWrapper firebase, ReduxBundle redux}) {
    _firebase = firebase ?? FakeFirebaseWrapper(completer: _firebaseCompleter);
    _redux = redux ?? FakeReduxBundle(completer: _reduxCompleter);
    _appWidget = AppWidget(firebase: _firebase, redux: _redux);
    _firebaseCompleter.complete();
    _reduxCompleter.complete();
  }

  Widget get widget => _appWidget;
}
