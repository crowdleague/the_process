import 'package:googleapis/firestore/v1.dart';
import 'package:test/fake.dart';

class FirestoreApiFake implements FirestoreApi {
  final Document? _getDocument;
  FirestoreApiFake({Document? getDocument}) : _getDocument = getDocument;

  @override
  ProjectsResourceApi get projects =>
      ProjectsResourceApiFake(getDocument: _getDocument);
}

class ProjectsResourceApiFake extends Fake implements ProjectsResourceApi {
  final Document? _getDocument;
  ProjectsResourceApiFake({Document? getDocument}) : _getDocument = getDocument;

  @override
  ProjectsDatabasesResourceApi get databases =>
      ProjectsDatabasesResourceApiFake(getDocument: _getDocument);
}

class ProjectsDatabasesResourceApiFake extends Fake
    implements ProjectsDatabasesResourceApi {
  final Document? _getDocument;
  ProjectsDatabasesResourceApiFake({Document? getDocument})
      : _getDocument = getDocument;
  @override
  ProjectsDatabasesDocumentsResourceApi get documents =>
      ProjectsDatabasesDocumentsResourceApiFake(_getDocument);
}

class ProjectsDatabasesDocumentsResourceApiFake extends Fake
    implements ProjectsDatabasesDocumentsResourceApi {
  final Document? _document;
  ProjectsDatabasesDocumentsResourceApiFake(this._document);
  @override
  Future<Document> get(String name,
      {List<String>? mask_fieldPaths,
      String? transaction,
      String? readTime,
      String? $fields}) {
    return Future.value(_document);
  }
}
