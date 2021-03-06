import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/utils/redux_bundle.dart';
import 'package:the_process/utils/wrappers/firebase_wrapper.dart';
import 'package:the_process/widgets/app_widget/app_widget.dart';

import '../../test-doubles/redux/fake_store.dart';
import '../../test-doubles/firebase/firebase_test_doubles.mocks.dart';
import '../../test-doubles/redux/fake_redux_bundle_completable.dart';
import '../../test-doubles/wrappers/fake_firebase_wrapper_completable.dart';

/// A test harness to wrap the widget under test, (in this case the
/// AppWidget), and provide all the functionality
/// that a test may want in order to interact with the widget, including
/// completing the firebase and redux futures that are awaited in the
/// AppWidget.
class CompletableAppWidgetHarness {
  final _firebaseCompleter = Completer<FirebaseApp>();
  final _reduxCompleter = Completer<Store<AppState>>();

  late final FirebaseWrapper _firebase;
  late final ReduxBundle _redux;
  late final AppWidget _appWidget;

  CompletableAppWidgetHarness({FirebaseWrapper? firebase, ReduxBundle? redux}) {
    _firebase = firebase ??
        FakeFirebaseWrapperCompletable(completer: _firebaseCompleter);
    _redux = redux ?? FakeReduxBundleCompletable(completer: _reduxCompleter);
    _appWidget = AppWidget(firebase: _firebase, redux: _redux);
  }

  Widget get widget => _appWidget;

  void completeFirebase() => _firebaseCompleter.complete(MockFirebaseApp());
  void completeRedux() => _reduxCompleter.complete(FakeStore());
}
