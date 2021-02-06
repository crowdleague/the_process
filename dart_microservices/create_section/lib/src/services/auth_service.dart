import 'dart:convert';

import 'package:create_section/src/services/firestore_service.dart';
import 'package:googleapis/secretmanager/v1.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/io_client.dart' as http;

import 'package:shared_models/shared_models.dart'
    show AuthProviderProjectCredentials;

class AuthService {
  final SecretmanagerApi _secretmanagerApi;

  AuthService(this._secretmanagerApi);

  Future<AutoRefreshingAuthClient> getUserClient(
      String userId, FirestoreService firestoreService) async {
    final userCredentials = await firestoreService.getUserCredential(userId);

    final accessToken = AccessToken(
        userCredentials.tokenType,
        userCredentials.accessToken,
        DateTime.fromMillisecondsSinceEpoch(userCredentials.expiryDate)
            .toUtc());

    final accessCredentials = AccessCredentials(accessToken,
        userCredentials.refreshToken, userCredentials.scope.split(' '));

    final accessSecretVersionResponse = await _secretmanagerApi
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
