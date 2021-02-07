import 'package:create_section/src/services/auth_service.dart';
import 'package:googleapis/secretmanager/v1.dart';
import 'package:test/test.dart';

import '../test-data/auth_test_data.dart' as test_data;
import '../test-doubles/firestore_service_fake.dart';
import '../test-doubles/secretmanager_api_fakes.dart';

final enspyrTesterId = 'ayl3FcuCUVUmwpDGAvwI47ujyY32';

void main() {
  group('AuthService', () {
    test('getUserClient ', () async {
      // Create test-doubles used to test getUserClient function.
      final fakeSecretmanagerApi = SecretmanagerApiFake();
      final fakeFirestoreService = FirestoreServiceFake();

      final authService = await AuthService();

      final userClient = await authService.getUserClient(
        'testUserId',
        fakeFirestoreService,
        fakeSecretmanagerApi,
      );

      expect(userClient.credentials.refreshToken,
          test_data.credentials.refreshToken);
    });
  });
}
