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
      // Create test data.
      final exampleAccessCredentials = auth_test_data.accessCredentials;
      // Create test doubles.
      final fakeSecretmanagerApi = SecretmanagerApiFake();
      final fakeFirestoreService = FirestoreServiceFake();

      // Create the subject under test.
      final authService = await AuthService();

      // Run the function we are testing.
      final userClient = await authService.getUserClient(
        'testUserId',
        fakeFirestoreService,
        fakeSecretmanagerApi,
      );

      // 1. Retrieve user credentials from the firestore.
      // 2. Create an AccessCredentials object.
      // 3. Retrieve project credentials json from secretmanager.
      // 4. Convert project credentials json to an object.
      // 5. Convert project credentials to a ClientId.
      // 6. Use ClientId & AccessCredentials to create the AutoRefreshingAuthClient.

      expect(userClient.credentials.refreshToken,
          exampleAccessCredentials.refreshToken);
      expect(userClient.credentials.idToken, exampleAccessCredentials.idToken);
      expect(userClient.credentials.accessToken,
          exampleAccessCredentials.accessToken);
    });
  });
}
