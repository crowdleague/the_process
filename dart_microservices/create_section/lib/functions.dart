import 'dart:async';

import 'package:create_section/src/services/auth_service.dart';
import 'package:create_section/src/services/drive_service.dart';
import 'package:create_section/src/services/firestore_service.dart';
import 'package:functions_framework/functions_framework.dart';
import 'package:googleapis/firestore/v1.dart';
import 'package:shelf/shelf.dart';

const enspyrTesterId = 'ayl3FcuCUVUmwpDGAvwI47ujyY32';
const parentFolderId = '1sxujioDIdBpaLdwzwdn6rxSH9NbpZorF';

@CloudFunction()
FutureOr<Response> function(Request request) async {
  try {
    // create a database entry object that will be added to and finally saved
    final sectionDoc = Document()
      ..fields['createdBy'] = (Value()..stringValue = enspyrTesterId);

    // Extract the query parameters and create file names.
    final sectionName = request.requestedUri.queryParameters['name']!;

    sectionDoc.name = sectionName;

    final folderTitle = '$sectionName: Sections Planning (CL)';
    final docTitle = '0 - Use Cases < $sectionName (CL)';

    // final authService = await AuthService.getInstance();

    // Create a client that will authenticated as the given user.
    final userClient = await AuthService.getInstance()
        .then((authService) => authService.getUserClient(enspyrTesterId));

    // Create a folder for the section.
    final folder = await DriveService.createFolder(userClient,
        name: folderTitle, parentId: parentFolderId);

    sectionDoc.fields['folderId'] = Value()..stringValue = folder.id;

    // create the use cases doc inside the folder
    final doc = await DriveService.saveDoc(userClient,
        parentId: folder.id, docTitle: docTitle);

    sectionDoc.fields['useCasesDocId'] = Value()..stringValue = doc.id;

    await FirestoreService.saveSection(userClient, sectionDoc);

    return Response.ok('');
  } catch (error) {
    // We add a ProcessingFailure to the database on any failures
    print(error);
    return Response.internalServerError(body: error);
  }
}