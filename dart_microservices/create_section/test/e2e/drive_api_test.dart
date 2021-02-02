import 'dart:io';

import 'package:create_section/src/services/authentication_service.dart';
import 'package:googleapis/drive/v3.dart';
import 'package:googleapis/docs/v1.dart';
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

    final accessCredentials = AccessCredentials(accessToken,
        userCredentials.refreshToken, userCredentials.scope.split(' '));

    final googleProjectCredentials =
        await AuthenticationService.getGoogleProjectCredentials();

    final clientId =
        ClientId(googleProjectCredentials.id, googleProjectCredentials.secret);

    final client =
        autoRefreshingClient(clientId, accessCredentials, http.IOClient());

    final driveApi = DriveApi(client);
    final docsApi = DocsApi(client);

    final newFolder = File()
      ..name = 'SubFolder'
      ..mimeType = 'application/vnd.google-apps.folder'
      ..parents = ['1mHE_1mpsug-sP8ex1_ELMiaYXRrzSvHp'];

    final apiResponse = await driveApi.files.create(newFolder);

    final useCasesDocument = Document()..title = 'Test Title';
    final savedDoc = await docsApi.documents.create(useCasesDocument);

    final response = await driveApi.files
        .update(null, savedDoc.documentId, addParents: newFolder.id);

    // const response = await this.drive.files.update({
    //   fileId: docId,
    //   addParents: folderId,
    //   fields: 'id, parents',
    // });

    print(response);
  });
}
