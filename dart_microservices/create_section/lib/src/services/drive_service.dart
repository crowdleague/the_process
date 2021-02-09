import 'package:googleapis/docs/v1.dart';
import 'package:googleapis/drive/v3.dart';

class DriveService {
  final DriveApi _driveApi;
  final DocsApi _docsApi;

  DriveService(this._driveApi, this._docsApi);

  Future<File> saveDoc(
      {required String parentId, required String docTitle}) async {
    // create a google doc
    final doc = Document()..title = docTitle;
    final savedDoc = await _docsApi.documents.create(doc);

    // move the doc inside the folder
    return await _driveApi.files
        .update(File(), savedDoc.documentId, addParents: parentId);
  }

  /// If the [parentId] parameter is not passed, the folder will be top-level
  Future<File> createFolder({required String name, String? parentId}) async {
    final newFolder = File()
      ..name = name
      ..mimeType = 'application/vnd.google-apps.folder';

    if (parentId != null) {
      newFolder.parents = [parentId];
    }

    return await _driveApi.files.create(newFolder);
  }
}
