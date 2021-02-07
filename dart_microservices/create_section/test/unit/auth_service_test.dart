import 'package:create_section/src/services/auth_service.dart';
import 'package:googleapis/secretmanager/v1.dart';
import 'package:test/test.dart';

import '../test-data/auth_test_data.dart' as test_data;
import '../test-doubles/auto_refreshing_auth_client_fake.dart';
import '../test-doubles/firestore_service_fake.dart';

final enspyrTesterId = 'ayl3FcuCUVUmwpDGAvwI47ujyY32';

void main() {
  group('AuthService', () {
    test('', () async {
      final fake =
          AutoRefreshingAuthClientFake(credentials: test_data.credentials);
      final secretmanagerApi = SecretmanagerApi(fake);
      final authService = await AuthService();
      final fakeFirestoreService = FirestoreServiceFake();

      final userClient = await authService.getUserClient(
        'testUserId',
        fakeFirestoreService,
        secretmanagerApi,
      );

      expect(userClient.credentials, test_data.credentials);
    });
  });
}
