import 'package:create_section/src/services/auth_service.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:test/test.dart';

final enspyrTesterId = 'ayl3FcuCUVUmwpDGAvwI47ujyY32';

void main() {
  group('AuthService', () {
    test('', () async {
      final adcClient =
          await clientViaApplicationDefaultCredentials(scopes: []);

      final userClient = AuthService.getUserClient(adcClient, enspyrTesterId);
    });
  });
}
