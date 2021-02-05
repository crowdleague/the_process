import 'dart:async';

import 'package:create_section/src/services/auth_service.dart';
import 'package:create_section/src/services/drive_service.dart';
import 'package:create_section/src/services/firestore_service.dart';
import 'package:functions_framework/functions_framework.dart';
import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:shelf/shelf.dart';
import 'package:create_section/src/extensions/string_extensions.dart';

const enspyrTesterId = 'ayl3FcuCUVUmwpDGAvwI47ujyY32';
const parentFolderId = '1sxujioDIdBpaLdwzwdn6rxSH9NbpZorF';

@CloudFunction()
FutureOr<Response> function(Request request) async {
  // create a database entry object that will be added to and finally saved
  final firestoreSectionDoc = Document();
  try {
    // Add the id of the user creating the section to the firestore document.
    firestoreSectionDoc.fields['createdBy'] = enspyrTesterId.asValue();

    // Extract section name, update firestore doc and construct title strings
    final sectionName = request.requestedUri.queryParameters['name']!;
    firestoreSectionDoc.name = sectionName;
    final folderTitle = '$sectionName: Sections Planning (CL)';
    final docTitle = '0 - Use Cases < $sectionName (CL)';

    // Create services and a client that will authenticate as the given user.
    final serviceClient =
        await clientViaApplicationDefaultCredentials(scopes: []);
    final authService = AuthService(serviceClient);
    final firestoreService = FirestoreService(serviceClient);
    final userClient =
        await authService.getUserClient(enspyrTesterId, firestoreService);
    final driveService = DriveService(userClient);

    // Use Drive API to create a folder for the section.
    final folder = await driveService.createFolder(
        name: folderTitle, parentId: parentFolderId);

    // Add the folder id to the firestore document for saving to db.
    firestoreSectionDoc.fields['folderId'] = folder.id.asValue();

    // Create our use cases doc and move inside the section folder.
    final useCasesDriveDoc =
        await driveService.saveDoc(parentId: folder.id, docTitle: docTitle);

    // Add the doc id to and save the firestore document.
    firestoreSectionDoc.fields['useCasesDocId'] = useCasesDriveDoc.id.asValue();
    final savedFirestoreSectionDoc =
        await firestoreService.saveSection(firestoreSectionDoc);

    // Return the document id to the client.
    return Response.ok(savedFirestoreSectionDoc.name);
  } catch (error) {
    // Log and return any errors.
    print('$error\n\nSection doc fields: ${firestoreSectionDoc.fields}');
    return Response.internalServerError(body: error);
  }
}
