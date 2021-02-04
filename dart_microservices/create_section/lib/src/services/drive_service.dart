import 'package:googleapis/docs/v1.dart';
import 'package:googleapis/drive/v3.dart';
import 'package:googleapis_auth/auth_io.dart';

class DriveService {
  static Future<File> saveDoc(AutoRefreshingAuthClient client,
      {required String parentId, required String docTitle}) async {
    final driveApi = DriveApi(client);
    final docsApi = DocsApi(client);

    // create a google doc
    final doc = Document()..title = docTitle;
    final savedDoc = await docsApi.documents.create(doc);

    // move the doc inside the folder
    return await driveApi.files
        .update(File(), savedDoc.documentId, addParents: parentId);
  }

  /// If the [parentId] parameter is not passed, the folder will be top-level
  static Future<File> createFolder(AutoRefreshingAuthClient client,
      {required String name, String? parentId}) async {
    final newFolder = File()
      ..name = name
      ..mimeType = 'application/vnd.google-apps.folder';
    if (parentId != null) {
      newFolder.parents = [parentId];
    }

    return await DriveApi(client).files.create(newFolder);
  }
}
