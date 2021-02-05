import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

import 'package:shared_models/shared_models.dart' show GoogleUserCredentials;

class FirestoreService {
  AutoRefreshingAuthClient _client;

  FirestoreService(this._client);

  Future<GoogleUserCredentials> getUserCredential(String userId) async {
    final firestoreApi = FirestoreApi(_client);

    final credentialsDocumentName =
        'projects/the-process-tool/databases/(default)/documents/credentials/$userId';

    final credentialsDoc = await firestoreApi.projects.databases.documents
        .get(credentialsDocumentName);

    final googleFields = credentialsDoc.fields['google']!.mapValue.fields;

    return GoogleUserCredentials(
      accessToken: googleFields['access_token']!.stringValue,
      refreshToken: googleFields['refresh_token']!.stringValue,
      expiryDate: int.parse(googleFields['expiry_date']!.integerValue),
      idToken: googleFields['id_token']!.stringValue,
      tokenType: googleFields['token_type']!.stringValue,
      scope: googleFields['scope']!.stringValue,
    );
  }

  Future<Document> saveSection(Document doc) =>
      FirestoreApi(_client).projects.databases.documents.createDocument(
          doc..fields.addAll({}),
          'projects/the-process-tool/databases/(default)/documents',
          'sections');
}
