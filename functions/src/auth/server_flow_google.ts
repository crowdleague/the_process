// --- Relevant resources ---
//
// firebase/functions-samples > authorized-https-endpoint
// https://github.com/firebase/functions-samples/blob/master/authorized-https-endpoint/functions/index.js
// 
// Using existing express apps in cloud functions 
// https://firebase.google.com/docs/functions/http-events#using_existing_express_apps

// import * as functions from 'firebase-functions';
import * as express from 'express';
import { google } from 'googleapis'; // drive_v3
import { SecretManagerServiceClient } from '@google-cloud/secret-manager';

const projectName = 'projects/the_process'; // Project for which to manage secrets.
const secretId = 'UID'; // Secret ID.
const payload = 'hello world!'; // String source data.

import * as project_credentials from '../project_credentials.json';

export const exchangeCodeWithGoogle = express();

const secretsClient = new SecretManagerServiceClient();

const oauth2Client = new google.auth.OAuth2(
  project_credentials.id,
  project_credentials.secret,
  project_credentials.redirect_url
);

oauth2Client.on('tokens', (tokens) => {
  if (tokens.refresh_token) {
    // store the refresh_token in my database!
    console.log(tokens.refresh_token);
  }
  console.log(tokens.access_token);
});

// generate a url that asks permissions for Drive and Docs scopes
const scopes = ['https://www.googleapis.com/auth/documents',
   'https://www.googleapis.com/auth/documents.readonly',
   'https://www.googleapis.com/auth/drive',
   'https://www.googleapis.com/auth/drive.file',
   'https://www.googleapis.com/auth/drive.readonly'];

// access_type is either 'online' (default) or 'offline' (gets refresh_token)
const url = oauth2Client.generateAuthUrl({  
  access_type: 'offline',
  scope: scopes,
});

// Get the code from the request, call retrieveAuthToken and return the response
const exchangeCodeForToken = async (req: any, res: any) => {
  try {

    // If we can't get a code and state from the request it's probably an error message, just send back the original url
    // || req.query.state === null || req.query.state === undefined
    if(req.query.code === null || req.query.code === undefined) {
      return res.send(req.originalUrl);
    }
    
    // const authResponse = await oauth2Client.getToken(req.query.code);
    // authResponse.tokens

    // Create the secret with automation replication.
    const [secret] = await secretsClient.createSecret({
      parent: projectName,
      secret: {
        name: secretId,
        replication: {
          automatic: {},
        },
      },
      secretId,
    });

    console.info(`Created secret ${secret.name}`);

    // Add a version with a payload onto the secret.
    const [version] = await secretsClient.addSecretVersion({
      parent: secret.name,
      payload: {
        data: Buffer.from(payload, 'utf8'),
      },
    });

    console.info(`Added secret version ${version.name}`);

    // Access the secret.
    const [accessResponse] = await secretsClient.accessSecretVersion({
      name: version.name,
    });

    const responsePayload = accessResponse.payload?.data?.toString();

    res.send(JSON.stringify(`Payload: ${responsePayload}`));

    // Close the window, the entry in database will update the UI of the original window 
    // return res.send(`
    //   <script>
    //     window.close();
    //   </script>
    // `);
  } catch(error) {
    console.error(error);
    return res.status(500).send('Something went wrong while exchanging the code.');
  }
};

exchangeCodeWithGoogle.use(exchangeCodeForToken);

////////////////////////////////////////////////////////////////////////////////////////
// GET AUTHORIZED
////////////////////////////////////////////////////////////////////////////////////////

export const redirectToAuthorization = express();

// Get the code from the request, call retrieveAuthToken and return the response
const authorizationUrlCallback = async (req: any, res: any) => res.redirect(url);

redirectToAuthorization.use(authorizationUrlCallback);