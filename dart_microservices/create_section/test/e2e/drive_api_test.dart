import 'dart:io';

import 'package:create_section/src/services/authentication_service.dart';
import 'package:googleapis/drive/v3.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:test/test.dart';
import 'package:http/io_client.dart' as http;

void main() {
  test('DriveAPI', () async {
    final userCredentials =
        await AuthenticationService.getGoogleUserCredentials();

    final accessToken = AccessToken(
        userCredentials.tokenType,
        userCredentials.accessToken,
        DateTime.fromMillisecondsSinceEpoch(userCredentials.expiryDate)
            .toUtc());

    //

    final accessCredentials = AccessCredentials(accessToken,
        userCredentials.refreshToken, userCredentials.scope.split(' '));

    final authClient = authenticatedClient(http.IOClient(), accessCredentials);

    // final autoRefreshingClient = await clientViaApplicationDefaultCredentials(
    //     scopes: ['https://www.googleapis.com/auth/drive']);

    final driveApi = DriveApi(authClient);

    final newFile = File()
      ..name = 'testName'
      ..mimeType = 'application/vnd.google-apps.folder'
      ..parents = ['rootFolderId'];

    final apiResponse = await driveApi.files.create(newFile);

    print(apiResponse);
  });
}
