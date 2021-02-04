import 'package:create_section/src/services/firestore_service.dart';
import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:test/test.dart';

final enspyrTesterId = 'ayl3FcuCUVUmwpDGAvwI47ujyY32';

void main() {
  group('FirestoreService', () {
    test('successfully save section doc', () async {
      final adcClient =
          await clientViaApplicationDefaultCredentials(scopes: []);

      var requestDoc = Document()
        ..fields = {
          'name': Value()..stringValue = 'testName',
          'folderId': Value()..stringValue = 'testFolderId',
          'useCasesDocId': Value()..stringValue = 'testUseCasesDocId',
        };

      final responseDoc =
          await FirestoreService.saveSection(adcClient, requestDoc);

      print(responseDoc);
    });
  });
}
