import 'package:create_section/src/services/drive_service.dart';
import 'package:googleapis/docs/v1.dart';
import 'package:googleapis/drive/v3.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../test_doubles/apis/docs_api_fake.dart';
import '../test_doubles/apis/docs_api_test_doubles.mocks.dart';
import '../test_doubles/apis/drive_api_test_doubles.mocks.dart';
import '../test_doubles/apis/drive_api_fake.dart';

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

    test(
        'createDocInFolder() calls DriveAPI\'s update() and returns the result',
        () async {
      // Create example data for the test.
      final exampleParentId = 'exampleParentId';
      final exampleDocumentId = 'exampleDocumentId';
      final exampleFile = File()
        ..id = exampleParentId
        ..parents = [exampleParentId];
      final exampleDocument = Document()..documentId = exampleDocumentId;

      // Create the test doubles.
      final mockDriveApi = MockDriveApi();
      final mockFilesResourceApi = MockFilesResourceApi();
      final mockDocsApi = MockDocsApi();
      final mockDocumentsResourceApi = MockDocumentsResourceApi();

      // Stub the DriveApi mock to return a FilesResourceApi mock that in turn
      // retruns a File, with the given id and parents when 'update' is called.
      when(mockDriveApi.files).thenReturn(mockFilesResourceApi);
      when(mockFilesResourceApi.update(any, any,
              addParents: anyNamed('addParents'),
              enforceSingleParent: anyNamed('enforceSingleParent'),
              includePermissionsForView: anyNamed('includePermissionsForView'),
              keepRevisionForever: anyNamed('keepRevisionForever'),
              ocrLanguage: anyNamed('ocrLanguage'),
              removeParents: anyNamed('removeParents'),
              supportsAllDrives: anyNamed('supportsAllDrives'),
              supportsTeamDrives: anyNamed('supportsTeamDrives'),
              useContentAsIndexableText: anyNamed('useContentAsIndexableText'),
              $fields: anyNamed('\$fields'),
              uploadOptions: anyNamed('uploadOptions'),
              uploadMedia: anyNamed('uploadMedia')))
          .thenAnswer((_) => Future.value(exampleFile));
      // Stub the DocsApi mock to return a DocumentsResourceApi mock that in turn
      // returns a Document with a given id when 'create' is called.
      when(mockDocsApi.documents).thenReturn(mockDocumentsResourceApi);
      when(mockDocumentsResourceApi.create(any))
          .thenAnswer((_) => Future.value(exampleDocument));

      // Create the subject under test.
      final service = await DriveService(mockDriveApi, mockDocsApi);

      // Run the function we are testing.
      final result = await service.createDocInFolder(
          parentId: exampleParentId, docTitle: 'testDocTitle');

      // Check that the document returned by the DriveAPI when 'update' is called
      // is what we get back from the service.
      expect(result.parents, contains(exampleParentId));
    });

    test('createFolder() throws when driveApi throws', () async {
      // Setup a DriveApi fake that throws when 'create' is called.
      final fakeDriveApi = DriveApiFake(updateException: Exception('example'));

      // Create the subject under test.
      final service = await DriveService(fakeDriveApi,
          DocsApiFake(onCreate: Document()..documentId = 'exampleDocumentId'));

      // Run the function we are testing.
      expect(
          service.createDocInFolder(
              parentId: 'exampleParentId', docTitle: 'testDocTitle'),
          throwsA(const TypeMatcher<Exception>()));
    });

    test('createDocInFolder() throws when ...', () async {});

    ////////////// createFolder
    // -- Order of events we want to test:
    // 1. Create a File object with 'folder' mimeType.
    // 2. If a parentId was passed in, add it to the Folder object.
    // 3. Use the Folder object to create a remote folder.
    // -- What could go wrong?
    // 1. The DriveApi call could fail.

    test('createFolder() ', () async {
      final exampleFolderName = 'exampleFolderName';
      final exampleFileId = 'exampleFileId';

      final fakeDriveApi = DriveApiFake(onCreate: File()..id = exampleFileId);
      final fakeDocsApi = DocsApiFake();

      // Create the subject under test.
      final service = await DriveService(fakeDriveApi, fakeDocsApi);

      // Run the function we are testing.
      final result = await service.createFolder(name: exampleFolderName);

      // Check that the File returned by the DriveAPI when 'create' is called
      // is what we get back from the service.
      expect(result.id, exampleFileId);
    });

    test('createFolder() throws when ...', () async {});
  });
}
