import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:shared_models/shared_models.dart' show GoogleUserCredentials;
import 'package:create_section/src/extensions/firestore_document_extensions.dart';

class FirestoreService {
  final _firestoreApi;

  FirestoreService(AutoRefreshingAuthClient client)
      : _firestoreApi = FirestoreApi(client);

  /// Retrieves the user credentials from the Firestore and creates a
  /// [GoogleUserCredentials] for returning.
  Future<GoogleUserCredentials> getGoogleUserCredential(String userId) async {
    final credentialsDocumentName =
        'projects/the-process-tool/databases/(default)/documents/credentials/$userId';
    final Document credentialsDoc = await _firestoreApi
        .projects.databases.documents
        .get(credentialsDocumentName);

    return credentialsDoc.toGoogleUserCredentials();
  }

  Future<Document> saveSection(Document doc) =>
      _firestoreApi.projects.databases.documents.createDocument(
          doc,
          'projects/the-process-tool/databases/(default)/documents',
          'sections');
}
