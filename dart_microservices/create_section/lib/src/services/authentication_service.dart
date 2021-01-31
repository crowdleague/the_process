import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

class AuthenticationService {
  AuthenticationService();

  void setup() async {
    final autoRefreshingClient =
        await clientViaApplicationDefaultCredentials(scopes: []);

    final enspyrTesterId = 'ayl3FcuCUVUmwpDGAvwI47ujyY32';
    final credentialsDocumentName =
        'projects/the-process-tool/databases/(default)/documents/credentials/$enspyrTesterId';

    final firestoreApi = FirestoreApi(autoRefreshingClient);
    final credentialsDoc = await firestoreApi.projects.databases.documents
        .get(credentialsDocumentName);

    final jsonMap = credentialsDoc.fields['google']!.toJson();
  }
}
