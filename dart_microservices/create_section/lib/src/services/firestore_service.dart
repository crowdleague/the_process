import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

import 'package:shared_models/shared_models.dart' show GoogleUserCredentials;

class FirestoreService {
  final _firestoreApi;

  FirestoreService(AutoRefreshingAuthClient client)
      : _firestoreApi = FirestoreApi(client);

  Future<GoogleUserCredentials> getUserCredential(String userId) async {
    final credentialsDocumentName =
        'projects/the-process-tool/databases/(default)/documents/credentials/$userId';

    final credentialsDoc = await _firestoreApi.projects.databases.documents
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
      _firestoreApi.projects.databases.documents.createDocument(
          doc,
          'projects/the-process-tool/databases/(default)/documents',
          'sections');
}
