import 'dart:convert';

import 'package:googleapis/drive/v3.dart';
import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:test/test.dart';

void main() {
  test('Firestore', () async {
    final autoRefreshingClient =
        await clientViaApplicationDefaultCredentials(scopes: []);

    final enspyrTesterId = 'ayl3FcuCUVUmwpDGAvwI47ujyY32';
    final documentName =
        'projects/the-process-tool/databases/(default)/documents/credentials/$enspyrTesterId';

    final firestoreApi = FirestoreApi(autoRefreshingClient);
    final credentialsDoc =
        await firestoreApi.projects.databases.documents.get(documentName);

    final jsonMap = credentialsDoc.fields['google']!.toJson();

    print(json.encode(jsonMap));
  });
}
