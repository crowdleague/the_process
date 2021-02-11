import 'package:googleapis/docs/v1.dart';
import 'package:test/fake.dart';

class DocsApiFake implements DocsApi {
  final Document? _createReturnDoc;
  DocsApiFake({Document? onCreate}) : _createReturnDoc = onCreate;
  @override
  DocumentsResourceApi get documents =>
      DocumentsResourceApiFake(_createReturnDoc);
}

class DocumentsResourceApiFake extends Fake implements DocumentsResourceApi {
  final Document? _createReturnDoc;

  DocumentsResourceApiFake(this._createReturnDoc);

  @override
  Future<Document> create(Document request, {String? $fields}) =>
      Future.value(_createReturnDoc);
}
