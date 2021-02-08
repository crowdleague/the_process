import 'package:create_section/src/services/firestore_service.dart';
import 'package:shared_models/src/google_user_credentials.dart';
import 'package:googleapis/firestore/v1.dart';
import 'package:test/fake.dart';

class FirestoreServiceFake extends Fake implements FirestoreService {
  final GoogleUserCredentials _googleUserCredentials;

  FirestoreServiceFake({GoogleUserCredentials? googleUserCredentials})
      : _googleUserCredentials = googleUserCredentials ??
            GoogleUserCredentials(
                accessToken: 'accessToken',
                expiryDate: DateTime.parse('2012-02-27').millisecondsSinceEpoch,
                idToken: 'idToken',
                refreshToken: 'refreshToken',
                scope: 'scope',
                tokenType: 'Bearer');

  @override
  Future<GoogleUserCredentials> getGoogleUserCredentials(String userId) =>
      Future.value(_googleUserCredentials);

  @override
  Future<Document> saveSection(Document doc) {
    final newDoc = Document.fromJson(doc.toJson());
    newDoc.name = 'savedDocName';
    return Future.value(newDoc);
  }
}
