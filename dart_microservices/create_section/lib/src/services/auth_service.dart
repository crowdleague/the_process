import 'dart:convert';

import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis/secretmanager/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

import 'package:http/io_client.dart' as http;

import 'package:shared_models/shared_models.dart'
    show AuthProviderProjectCredentials, GoogleUserCredentials;

class AuthService {
  AuthService();

  static Future<GoogleUserCredentials> getGoogleUserCredentials(
      String userId) async {
    final autoRefreshingClient =
        await clientViaApplicationDefaultCredentials(scopes: []);

    final credentialsDocumentName =
        'projects/the-process-tool/databases/(default)/documents/credentials/$userId';

    final firestoreApi = FirestoreApi(autoRefreshingClient);
    final credentialsDoc = await firestoreApi.projects.databases.documents
        .get(credentialsDocumentName);

    final googleFields = credentialsDoc.fields['google']!.mapValue.fields;

    final credentials = GoogleUserCredentials(
      accessToken: googleFields['access_token']!.stringValue,
      refreshToken: googleFields['refresh_token']!.stringValue,
      expiryDate: int.parse(googleFields['expiry_date']!.integerValue),
      idToken: googleFields['id_token']!.stringValue,
      tokenType: googleFields['token_type']!.stringValue,
      scope: googleFields['scope']!.stringValue,
    );

    return credentials;
  }

  static Future<AuthProviderProjectCredentials>
      getAuthProviderProjectCredentials() async {
    final autoRefreshingClient =
        await clientViaApplicationDefaultCredentials(scopes: []);

    final secretManagerApi = SecretmanagerApi(autoRefreshingClient);
    final accessSecretVersionResponse = await secretManagerApi
        .projects.secrets.versions
        .access('projects/256145062869/secrets/auth-providers/versions/latest');

    final jsonString =
        utf8.decode(accessSecretVersionResponse.payload.dataAsBytes);

    return AuthProviderProjectCredentials.fromJson(json.decode(jsonString));
  }

  static Future<AutoRefreshingAuthClient> getAuthenticatedClient(
      String userId) async {
    final userCredentials = await AuthService.getGoogleUserCredentials(userId);

    final accessToken = AccessToken(
        userCredentials.tokenType,
        userCredentials.accessToken,
        DateTime.fromMillisecondsSinceEpoch(userCredentials.expiryDate)
            .toUtc());

    final accessCredentials = AccessCredentials(accessToken,
        userCredentials.refreshToken, userCredentials.scope.split(' '));

    final googleProjectCredentials =
        (await AuthService.getAuthProviderProjectCredentials()).google;

    final clientId =
        ClientId(googleProjectCredentials.id, googleProjectCredentials.secret);

    return autoRefreshingClient(clientId, accessCredentials, http.IOClient());
  }
}
