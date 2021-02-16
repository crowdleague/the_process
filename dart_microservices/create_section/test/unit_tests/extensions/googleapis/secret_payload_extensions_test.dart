import 'dart:convert';

import 'package:googleapis/secretmanager/v1.dart';
import 'package:test/test.dart';

import 'package:create_section/src/extensions/googleapis/secret_payload_extensions.dart';

import '../../../test_data/auth_test_data.dart';
import '../../../test_doubles/apis/secretmanager_api_test_doubles.dart';

void main() {
  group('SecretPayloadExtension', () {
    test('toClientId() returns expected ClientId', () {
      final exampleSecretPayload =
          createSecretPayloadFrom(json: credentialsJson);

      final credentialsJsonMap =
          json.decode(credentialsJson) as Map<String, dynamic>;

      final clientId = exampleSecretPayload.toClientId();

      expect(clientId.identifier, credentialsJsonMap['google']['id']);
      expect(clientId.secret, credentialsJsonMap['google']['secret']);
    });
  });
}
