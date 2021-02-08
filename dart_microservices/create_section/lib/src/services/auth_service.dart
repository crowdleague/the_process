import 'dart:convert';

import 'package:create_section/src/services/firestore_service.dart';
import 'package:googleapis/secretmanager/v1.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/io_client.dart' as http;

import 'package:shared_models/shared_models.dart'
    show AuthProviderProjectCredentials;

class AuthService {
  AuthService();

  Future<AutoRefreshingAuthClient> getUserClient(
      String userId,
      FirestoreService firestoreService,
      SecretmanagerApi secretmanagerApi) async {
    // Retrieve user credentials from the firestore
    final userCredentials =
        await firestoreService.getGoogleUserCredential(userId);

    // Create an AccessCredentials object.
    final accessCredentials = AccessCredentials(
      AccessToken(
          userCredentials.tokenType,
          userCredentials.accessToken,
          DateTime.fromMillisecondsSinceEpoch(userCredentials.expiryDate)
              .toUtc()),
      userCredentials.refreshToken,
      userCredentials.scope.split(' '),
    );

    // Retrieve project credentials json from secretmanager
    final accessSecretVersionResponse = await secretmanagerApi
        .projects.secrets.versions
        .access('projects/256145062869/secrets/auth-providers/versions/latest');

    // Convert project credentials json to an object.
    final credentials = AuthProviderProjectCredentials.fromJson(
      json.decode(
        utf8.decode(accessSecretVersionResponse.payload.dataAsBytes),
      ),
    );

    // Convert project credentials to a ClientId.
    final clientId = ClientId(credentials.google.id, credentials.google.secret);

    // Use ClientId & AccessCredentials to create the AutoRefreshingAuthClient.
    return autoRefreshingClient(clientId, accessCredentials, http.IOClient());
  }
}
