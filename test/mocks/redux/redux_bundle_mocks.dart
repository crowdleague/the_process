import 'dart:async';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:redux/src/store.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/services/auth_service.dart';
import 'package:the_process/services/database_service.dart';
import 'package:the_process/services/platform_service.dart';
import 'package:the_process/utils/redux_bundle.dart';

import '../services/auth_service_mocks.dart';
import '../services/database_service_mocks.dart';
import '../services/platform_service_mocks.dart';

class FakeReduxBundle extends ReduxBundle {
  final Completer<Store<AppState>> _reduxCompleter;

  FakeReduxBundle(
      {@required Completer<Store<AppState>> completer,
      GlobalKey<NavigatorState> navKey})
      : _reduxCompleter = completer,
        super(
            authService: FakeAuthService(),
            databaseService: FakeDatabaseService(),
            platformService: FakePlatformService());

  @override
  AuthService get auth => throw UnimplementedError();

  @override
  Future<Store<AppState>> createStore() => _reduxCompleter.future;

  @override
  DatabaseService get database => throw UnimplementedError();

  @override
  PlatformService get platformService => throw UnimplementedError();
}
