import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';
import { google } from 'googleapis';

import * as project_credentials from '../project_credentials.json';

export const client = new google.auth.OAuth2(
  project_credentials.id,
  project_credentials.secret,
  project_credentials.redirect_url
);

client.on('tokens', async (tokens) => {
  var uid;
  if(tokens.id_token) {
    functions.logger.info(`id_token: ${tokens.id_token.substr(0,5)}...`);
    const decodedToken = await admin.auth().verifyIdToken(tokens.id_token);
    uid = decodedToken.uid;
  }
  
  if (tokens.refresh_token) {
    functions.logger.info(`refresh_token: ${tokens.refresh_token.substr(0,5)}...`);
    // TODO: do something with the refresh_token? 
  }
  functions.logger.info(`access_token: ${tokens.access_token?.substr(0,5)}...`);
  // TODO: store the new access token
  
});