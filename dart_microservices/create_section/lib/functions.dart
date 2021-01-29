import 'dart:async';

import 'package:functions_framework/functions_framework.dart';
import 'package:googleapis/drive/v2.dart';
import 'package:googleapis/firestore/v1.dart';

import 'package:shelf/shelf.dart';
import 'package:http/http.dart' as http;
import 'package:googleapis_auth/auth_io.dart';

@CloudFunction()
FutureOr<Response> function(Request request) async {
  // // Extract the query parameters.
  // final codeParam = request.requestedUri.queryParameters['code'];
  // final stateParam = request.requestedUri.queryParameters['state'];

  // print('code: $codeParam, state: $stateParam');

  // // If we can't get both the code and state from the request it's probably an
  // // error message so just send back the original url.
  // if (codeParam == null || stateParam == null) {
  //   return Response.ok(request.requestedUri.toString());
  // }

  final autoRefreshingClient =
      await clientViaApplicationDefaultCredentials(scopes: []);

  final driveApi = DriveApi(autoRefreshingClient);
  final someResponse = await driveApi.about;

  final documentParent = 'projects/{project_id}/databases/{database_id}/documents/chatrooms/{chatroom_id}';
  final document = Document();
  final firestoreApi = FirestoreApi(autoRefreshingClient);
  firestoreApi.projects.databases.documents.createDocument(, documentParent, collectionId)

  return Response.ok('');
}


// const sectionData = new SectionData();
// const databaseService = await DatabaseService.getInstanceFor(snapshot.id);

// // We wrap the whole function in a try/catch and add a ProcessingFailure to the database on any failures
// try {

//   const data = snapshot.data();

//   const checkedData = unNull(data, 'There was no data in the snapshot.') as FirebaseFirestore.DocumentData;

//   const newSection = checkedData['section'];
//   const sectionName = newSection['name'];

//   sectionData.name = sectionName;
    
//   const driveAPI = await DriveAPI.for(the_process_id);
//   const docsAPI = await DocsAPI.for(the_process_id);
//   const folder = await driveAPI.createFolder(sectionName+': Sections Planning (CL)');

//   const checkedFolderId = unNull(folder.id, 'The created folder id was missing.') as string;

//   sectionData.folderId = checkedFolderId;

//   functions.logger.info(`created folder:`, folder);

//   const title = '0 - Use Cases < '+sectionName+' (CL)';
//   const doc = await docsAPI.createDoc(title);

//   const checkedDocId = unNull(doc.documentId, 'The created doc id was missing.') as string;

//   sectionData.useCasesDocId = checkedDocId;

//   functions.logger.info(`created doc:`, {documentId: doc.documentId, title: doc.title});

//   await driveAPI.moveDoc(checkedDocId, checkedFolderId);
  
//   functions.logger.info(`moved doc to folder with id: ${checkedFolderId}`);

//   functions.logger.info(`Saving sectionData: `, sectionData);

//   const docRef = await databaseService.save(sectionData);

//   functions.logger.info(`added database entry for section: `, docRef);

//   // Delete the document that was created in the 'new' collection.
//   // The front end uses this event to change the UI.
//   await snapshot.ref.delete();

// } catch (error) {
//   await databaseService.saveFailure(error, sectionData);
//   await snapshot.ref.delete();
// }
