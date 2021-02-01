import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

import 'package:shared_models/shared_models.dart' show GoogleUserCredentials;

class AuthenticationService {
  AuthenticationService();

  static Future<GoogleUserCredentials> getGoogleUserCredentials() async {
    final autoRefreshingClient =
        await clientViaApplicationDefaultCredentials(scopes: []);

    final enspyrTesterId = 'ayl3FcuCUVUmwpDGAvwI47ujyY32';
    final credentialsDocumentName =
        'projects/the-process-tool/databases/(default)/documents/credentials/$enspyrTesterId';

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
}
