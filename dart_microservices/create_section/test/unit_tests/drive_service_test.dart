import 'package:create_section/src/services/drive_service.dart';
import 'package:googleapis/docs/v1.dart';
import 'package:googleapis/drive/v3.dart';
import 'package:test/test.dart';

import '../test_doubles/docs_api_fake.dart';
import '../test_doubles/drive_api_fake.dart';

void main() {
  group('DriveService', () {
    ////////////// createDocInFolder
    // -- Order of events we want to test:
    // 1. Create a Document object with given title.
    // 2. Use the DocsApi to create the remote doc.
    // 3. Use the DriveApi to move the doc to the given folder.
    // 4. Return the updated File object.
    // -- What could go wrong?
    // 1. The DocsApi call could fail.
    // 2. The DriveApi call could fail.

    test('createDocInFolder() ', () async {
      final exampleParentId = 'exampleParentId';
      final exampleDocumentId = 'exampleDocumentId';

      // Setup a DriveApi fake that returns a File with the given id and
      // parents when 'update' is called.
      final fakeDriveApi = DriveApiFake(
          onUpdate: File()
            ..id = exampleParentId
            ..parents = [exampleParentId]);
      // Setup a DocsApi fake that returns a Document with a given id when
      // 'create' is called.
      final fakeDocsApi =
          DocsApiFake(onCreate: Document()..documentId = exampleDocumentId);

      // Create the subject under test.
      final service = await DriveService(fakeDriveApi, fakeDocsApi);

      // Run the function we are testing.
      final result = await service.createDocInFolder(
          parentId: exampleParentId, docTitle: 'testDocTitle');

      // Check that the document returned by the DriveAPI when 'update' is called
      // is called is what we get back from the service.
      expect(result.parents, contains(exampleParentId));
    });

    test('createFolder() throws when ...', () async {});

    test('createFolder() throws when ...', () async {});

    test('createDocInFolder() throws when ...', () async {});

    ////////////// createFolder
    // -- Order of events we want to test:
    // 1. Create a File object with 'folder' mimeType.
    // 2. If a parentId was passed in, add it to the Folder object.
    // 3. Use the Folder object to create a remote folder.
    // -- What could go wrong?
    // 1. The DriveApi call could fail.

    test('createFolder() ', () async {});

    test('createFolder() throws when ...', () async {});
  });
}
