import 'package:googleapis/docs/v1.dart';
import 'package:googleapis/drive/v3.dart';
import 'package:googleapis_auth/auth_io.dart';

class DriveService {
  final AutoRefreshingAuthClient _userClient;

  DriveService(this._userClient);

  Future<File> saveDoc(
      {required String parentId, required String docTitle}) async {
    final driveApi = DriveApi(_userClient);
    final docsApi = DocsApi(_userClient);

    // create a google doc
    final doc = Document()..title = docTitle;
    final savedDoc = await docsApi.documents.create(doc);

    // move the doc inside the folder
    return await driveApi.files
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

    return await DriveApi(_userClient).files.create(newFolder);
  }
}
