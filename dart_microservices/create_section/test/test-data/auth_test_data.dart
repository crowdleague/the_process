import 'package:googleapis_auth/auth_io.dart';

/// [AccessCredentials] are used in creating [AutoRefreshingAuthClient]
final credentials = AccessCredentials(
    AccessToken('type', 'data', DateTime.parse('1969-07-20 20:18:04Z')),
    'refreshToken',
    ['scopes']);
