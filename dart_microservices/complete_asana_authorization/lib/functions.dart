import 'dart:async';
import 'dart:convert';

import 'package:complete_asana_authorization/src/auth_credentials/auth_provider_project_credentials.dart';
import 'package:functions_framework/functions_framework.dart';

import 'package:shelf/shelf.dart';
// import 'package:http/http.dart' as http;
import 'package:googleapis_auth/auth_io.dart';
import 'package:googleapis/secretmanager/v1.dart';

@CloudFunction()
FutureOr<Response> function(Request request) async {
  // Extract the query parameters.
  final codeParam = request.requestedUri.queryParameters['code'];
  final stateParam = request.requestedUri.queryParameters['state'];

  print('code: $codeParam, state: $stateParam');

  // If we can't get both the code and state from the request it's probably an
  // error message so just send back the original url.
  if (codeParam == null || stateParam == null) {
    return Response.ok(request.requestedUri.toString());
  }

  final autoRefreshingClient =
      await clientViaApplicationDefaultCredentials(scopes: []);

  final secretManagerApi = SecretmanagerApi(autoRefreshingClient);
  final accessSecretVersionResponse = await secretManagerApi
      .projects.secrets.versions
      .access('projects/256145062869/secrets/auth-providers/versions/latest');

  final credentials = AuthProviderProjectCredentials.fromJson(
      utf8.decode(accessSecretVersionResponse.payload.dataAsBytes));

  print(credentials.toJson());

  print('Exchanging code for tokens...');

  // Build the post string from an object
  // final queryParameters = {
  //   'grant_type': 'authorization_code',
  //   'client_id': project_credentials.asana.client_id,
  //   'client_secret': project_credentials.asana.client_secret,
  //   'redirect_uri': project_credentials.asana.redirect_uri,
  //   'code': codeParam,
  // };

  // final uri =
  //   Uri.https('https://app.asana.com', '/-/oauth_token', queryParameters);

  // final response = await http.post(uri);

  // final resp =
  //     await http.post( + postData);

  // return Response.seeOther(location);

  return Response.ok('Yo!');
}

//   const email = resp.data.data.email;

//   logger.log('Converting email to Firebase UID...');

//   const userRecord = await authService.getUserRecordByEmail(email);

//   logger.log('Saving tokens...');

//   const tokens = {
//     refresh_token: resp.data.refresh_token,
//     access_token: resp.data.access_token,
//     expires_in: resp.data.expires_in,
//   }

//   await authService.saveAsanaCredentials(userRecord.uid, tokens);

//   logger.log('Saving finished state to database...');

//   await authService.updateAuthorizationStatus(userRecord.uid, ProviderName.Asana, AuthorizationStep.Authorized);

//   // Close the window, the entry in database will update the UI of the original window
//   return res.send(`
//     <head>
//     </head>
//     <body>
//       <div>Credentials have been saved, you can close this window.</div>
//     </body>
//     <script>
//       window.close();
//     </script>
//   `);
// } catch(error) {
//   logger.error(error);
//   return res.status(500).send(`Something went wrong while exchanging the code. \n ${error}`);
// }
