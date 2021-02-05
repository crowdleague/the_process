import 'package:create_section/src/services/auth_service.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:test/test.dart';

import '../test-doubles/auto_refreshing_auth_client_fake.dart';

final enspyrTesterId = 'ayl3FcuCUVUmwpDGAvwI47ujyY32';

void main() {
  group('AuthService', () {
    test('', () async {
      final fake = AutoRefreshingAuthClientFake();
      final userClient = await AuthService.getInstance(client: fake)
          .then((authService) => authService.getUserClient(enspyrTesterId));
    });
  });
}
