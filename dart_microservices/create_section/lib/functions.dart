import 'dart:async';

import 'package:functions_framework/functions_framework.dart';
import 'package:googleapis/drive/v3.dart';
import 'package:googleapis/firestore/v1.dart';

import 'package:shelf/shelf.dart';
import 'package:http/http.dart' as http;
import 'package:googleapis_auth/auth_io.dart';

@CloudFunction()
FutureOr<Response> function(Request request) async {
  // Extract the query parameters.
  final sectionName = request.requestedUri.queryParameters['name'];

  final docTitle = '0 - Use Cases < $sectionName (CL)';

  print('titile: $docTitle');

  // get a client for accessing the firestore

  final autoRefreshingClient =
      await clientViaApplicationDefaultCredentials(scopes: []);

  final enspyrTesterId = 'ayl3FcuCUVUmwpDGAvwI47ujyY32';
  final documentName =
      'projects/the-process-tool/databases/(default)/documents/credentials/$enspyrTesterId';

  final firestoreApi = FirestoreApi(autoRefreshingClient);
  final credentialsDoc =
      await firestoreApi.projects.databases.documents.get(documentName);

  print(credentialsDoc.fields);

  // final document = Document();
  // firestoreApi.projects.databases.documents.createDocument(, documentParent, collectionId)

  // final driveApi = DriveApi(autoRefreshingClient);

  // final newFile = File()
  //   ..name = 'testName'
  //   ..mimeType = 'application/vnd.google-apps.folder'
  //   ..parents = ['rootFolderId'];

  // final apiResponse = await driveApi.files.create(newFile);

  // print(apiResponse);

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
