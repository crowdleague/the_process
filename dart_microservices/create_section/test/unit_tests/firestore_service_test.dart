import 'package:create_section/src/services/firestore_service.dart';
import 'package:googleapis/firestore/v1.dart';
import 'package:test/test.dart';

import '../test_data/firestore_document_test_data.dart'
    as firestore_document_test_data;
import '../test_doubles/auto_refreshing_auth_client_fake.dart';
import '../test_doubles/firestore_api_fake.dart';

void main() {
  group('FirestoreService', () {
    test('.() turns project & user credentials into authenticated client',
        () async {
      // -- Order of events we want to test:
      // 1. Create document name from the userId.
      // 3. Use firestoreApi to retrieve data from the firestore.
      // 4. Convert to a model object.
      // -- What could go wrong?
      // 1. Using the firestoreApi produces an error.
      // 2. Using the firestoreApi produces an error.

      final exampleUserId = 'uid';

      final fakeFirestoreApi =
          FirestoreApiFake(getDocument: firestore_document_test_data.basicDoc);

      // Create the subject under test.
      final firestoreService = await FirestoreService(fakeFirestoreApi);

      // Run the function we are testing.
      final googleUserCredentials =
          await firestoreService.getGoogleUserCredentials(exampleUserId);
    });
  });
}
