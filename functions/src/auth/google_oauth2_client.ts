import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';
import { google } from 'googleapis';

import * as secrets from './secret_manager';
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

  functions.logger.info(`Creating secret: ${uid}`);

  // Create the secret with automation replication.
  const [secret] = await secrets.client.createSecret({
    parent: 'projects/the-process-tool',
    secretId: uid,
    secret: {
      name: uid,
      replication: {
        automatic: {},
      },
    },
  });

  functions.logger.info(`Created secret: ${secret.name}`);

  const tokensJson = {
      "google": {
        "refresh_token": tokens.refresh_token,
        "access_token": tokens.access_token,
        "expiry_date": tokens.expiry_date,
        "scope": tokens.scope,
      },
    }

  // Add a version with a payload onto the secret.
  const [version] = await secrets.client.addSecretVersion({
    parent: secret.name,
    payload: {
      data: Buffer.from(JSON.stringify(tokensJson), 'utf8'),
    },
  });

  functions.logger.info(`Added secret version ${version.name}`);
});