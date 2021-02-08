import 'package:create_section/src/services/auth_service.dart';
import 'package:googleapis/secretmanager/v1.dart';
import 'package:test/test.dart';

import '../test-data/auth_test_data.dart' as auth_test_data;
import '../test-doubles/firestore_service_fake.dart';
import '../test-doubles/secretmanager_api_fakes.dart';

final enspyrTesterId = 'ayl3FcuCUVUmwpDGAvwI47ujyY32';

void main() {
  group('AuthService', () {
    test('getUserClient ', () async {
      // -- Order of evnts we want to test:
      // 1. Retrieve user credentials from the firestore.
      // 3. Retrieve project credentials json from secretmanager.
      // 4. Convert user credentials to an AccessCredentials object.
      // 5. Convert project credentials json to a ClientId.
      // 6. Use ClientId & AccessCredentials to create the AutoRefreshingAuthClient.

      // Create test data.
      final exampleCredentialsJson = auth_test_data.credentialsJson;
      final exampleGoogleUserCredentials = auth_test_data.googleUserCredentials;

      // Create test doubles.
      final fakeFirestoreService = FirestoreServiceFake(
          googleUserCredentials: exampleGoogleUserCredentials);
      final fakeSecretmanagerApi =
          SecretmanagerApiFake(payloadData: exampleCredentialsJson);

      // Create the subject under test.
      final authService = await AuthService();

      // Run the function we are testing.
      final userClient = await authService.getUserClient(
        'testUserId',
        fakeFirestoreService,
        fakeSecretmanagerApi,
      );

      expect(userClient.credentials.refreshToken,
          exampleGoogleUserCredentials.refreshToken);
      expect(userClient.credentials.idToken,
          null); // idToken isn't used to create the client
      expect(userClient.credentials.accessToken.data,
          exampleGoogleUserCredentials.accessToken);
    });
  });
}
