import 'package:googleapis/firestore/v1.dart';
import 'package:test/fake.dart';

class FirestoreApiFake implements FirestoreApi {
  final Document? _getDocument;
  final Exception? _getException;
  FirestoreApiFake({Document? getDocument, Exception? getException})
      : _getDocument = getDocument,
        _getException = getException;

  @override
  ProjectsResourceApi get projects =>
      ProjectsResourceApiFake(_getDocument, _getException);
}

class ProjectsResourceApiFake extends Fake implements ProjectsResourceApi {
  final Document? _getDocument;
  final Exception? _getException;
  ProjectsResourceApiFake(this._getDocument, this._getException);

  @override
  ProjectsDatabasesResourceApi get databases =>
      ProjectsDatabasesResourceApiFake(_getDocument, _getException);
}

class ProjectsDatabasesResourceApiFake extends Fake
    implements ProjectsDatabasesResourceApi {
  final Document? _getDocument;
  final Exception? _getException;
  ProjectsDatabasesResourceApiFake(this._getDocument, this._getException);
  @override
  ProjectsDatabasesDocumentsResourceApi get documents =>
      ProjectsDatabasesDocumentsResourceApiFake(_getDocument, _getException);
}

class ProjectsDatabasesDocumentsResourceApiFake extends Fake
    implements ProjectsDatabasesDocumentsResourceApi {
  final Document? _getDocument;
  final Exception? _getException;
  ProjectsDatabasesDocumentsResourceApiFake(
      this._getDocument, this._getException);
  @override
  Future<Document> get(String name,
      {List<String>? mask_fieldPaths,
      String? transaction,
      String? readTime,
      String? $fields}) {
    if (_getException != null) {
      throw _getException!;
    }
    return Future.value(_getDocument);
  }
}
