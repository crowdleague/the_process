import 'package:create_section/src/services/singletons/auth_service_singleton.dart';
import 'package:test/test.dart';

import '../test-doubles/auto_refreshing_auth_client_fake.dart';

final enspyrTesterId = 'ayl3FcuCUVUmwpDGAvwI47ujyY32';

void main() {
  group('AuthService', () {
    test('', () async {
      final fake = AutoRefreshingAuthClientFake();

      final authService = await AuthServiceSingleton.getInstance(client: fake);
      final userClient = await authService.getUserClient(enspyrTesterId);

      expect(userClient.credentials.accessToken, 'accessToken');
    });
  });
}
