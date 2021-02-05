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

  static AuthService getInstance(String userId) {
    if (_instance == null) {
      _instance = AuthService(userId);
      return _instance!;
    }
    return _instance!;
  }

  /// Instance parts
  ///
  AuthService(this._userId) : _secretManagerApi = SecretmanagerApi(client);

  final String _userId;
  final SecretmanagerApi _secretManagerApi;
  final AutoRefreshingAuthClient _client;

  static Future<AutoRefreshingAuthClient> getUserClient(
      AutoRefreshingAuthClient client, String userId) async {
    final userCredentials =
        await FirestoreService.getUserCredential(client, userId);

    final accessToken = AccessToken(
        userCredentials.tokenType,
        userCredentials.accessToken,
        DateTime.fromMillisecondsSinceEpoch(userCredentials.expiryDate)
            .toUtc());

    final accessCredentials = AccessCredentials(accessToken,
        userCredentials.refreshToken, userCredentials.scope.split(' '));

    final googleProjectCredentials =
        (await AuthService.getAuthProviderProjectCredentials(client)).google;

    final clientId =
        ClientId(googleProjectCredentials.id, googleProjectCredentials.secret);

    return autoRefreshingClient(clientId, accessCredentials, http.IOClient());
  }

  static Future<AuthProviderProjectCredentials>
      getAuthProviderProjectCredentials(AutoRefreshingAuthClient client) async {
    final accessSecretVersionResponse = await secretManagerApi
        .projects.secrets.versions
        .access('projects/256145062869/secrets/auth-providers/versions/latest');

    final jsonString =
        utf8.decode(accessSecretVersionResponse.payload.dataAsBytes);

    return AuthProviderProjectCredentials.fromJson(json.decode(jsonString));
  }
}
