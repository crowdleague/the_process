import 'dart:convert';

import 'package:create_section/src/services/firestore_service.dart';
import 'package:googleapis/secretmanager/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

import 'package:http/io_client.dart' as http;

import 'package:shared_models/shared_models.dart'
    show AuthProviderProjectCredentials;

class AuthService {
  /// Static parts
  ///
  static AuthService? _instance;

  /// Optionally takes an [AutoRefreshingAuthClient] to allow mocking in tests
  static Future<AuthService> getInstance(
      {AutoRefreshingAuthClient? client}) async {
    if (_instance == null) {
      final serviceClient =
          client ?? await clientViaApplicationDefaultCredentials(scopes: []);
      _instance = AuthService(serviceClient);
      return _instance!;
    }
    return _instance!;
  }

  /// Instance parts
  ///
  AuthService(this._serviceClient);

  final AutoRefreshingAuthClient _serviceClient;

  Future<AutoRefreshingAuthClient> getUserClient(String userId) async {
    final userCredentials =
        await FirestoreService.getUserCredential(_serviceClient, userId);

    final accessToken = AccessToken(
        userCredentials.tokenType,
        userCredentials.accessToken,
        DateTime.fromMillisecondsSinceEpoch(userCredentials.expiryDate)
            .toUtc());

    final accessCredentials = AccessCredentials(accessToken,
        userCredentials.refreshToken, userCredentials.scope.split(' '));

    final secretManagerApi = SecretmanagerApi(_serviceClient);
    final accessSecretVersionResponse = await secretManagerApi
        .projects.secrets.versions
        .access('projects/256145062869/secrets/auth-providers/versions/latest');

    final jsonString =
        utf8.decode(accessSecretVersionResponse.payload.dataAsBytes);

    final credentials =
        AuthProviderProjectCredentials.fromJson(json.decode(jsonString));

    final clientId = ClientId(credentials.google.id, credentials.google.secret);

    return autoRefreshingClient(clientId, accessCredentials, http.IOClient());
  }
}
