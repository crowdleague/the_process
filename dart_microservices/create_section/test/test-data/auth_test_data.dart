import 'package:googleapis_auth/auth_io.dart';

/// [AccessCredentials] are used in creating [AutoRefreshingAuthClient]
final credentials = AccessCredentials(
    AccessToken('type', 'data', DateTime.parse('1969-07-20 20:18:04Z')),
    'refreshToken',
    ['scopes']);

final credentialsJson = '''
{
  "google": {
    "id": "blah.apps.googleusercontent.com",
    "secret": "boopbopbap",
    "redirect_url": "https://the_place.com"
  },
  "asana": {
    "client_id": "blahdyblah",
    "client_secret": "bapboopbop",
    "redirect_uri": "https://place.com"
  }
}
''';
