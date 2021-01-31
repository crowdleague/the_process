import 'dart:io';

import 'package:googleapis/drive/v3.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:test/test.dart';

void main() {
  test('DriveAPI', () async {
    final autoRefreshingClient = await clientViaApplicationDefaultCredentials(
        scopes: ['https://www.googleapis.com/auth/drive']);

    final driveApi = DriveApi(autoRefreshingClient);

    final newFile = File()
      ..name = 'testName'
      ..mimeType = 'application/vnd.google-apps.folder'
      ..parents = ['rootFolderId'];

    final apiResponse = await driveApi.files.create(newFile);

    print(apiResponse);
  });
}
