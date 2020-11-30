import * as functions from 'firebase-functions';
import { google } from 'googleapis';
import { Credentials, OAuth2Client } from 'google-auth-library';

import { PeopleAPI } from '../google_apis/people';
import { firebaseAdmin } from '../utils/firebase_admin';
import { secretManager } from '../utils/secret_manager';
import * as project_credentials from '../project_credentials.json';
import { unNull } from '../utils/problem_utils';

// A Singleton class that provides a single instance 
export class AuthenticatedClient {
  
  private static instance: Map<String, AuthenticatedClient>;

  private oauth2 : OAuth2Client = new google.auth.OAuth2(
    project_credentials.id,
    project_credentials.secret,
    project_credentials.redirect_url,
  );

  private constructor() {
    
    // Add a callback to respond to token refresh 
    this.oauth2.on('tokens', async (tokens) => {
      this.logAnonymized(tokens);
      await this.storeIfNew(tokens);
    });
  }

  static async getInstanceFor(uid: string) : Promise<AuthenticatedClient> {

    if (!AuthenticatedClient.instance.get(uid)) {
      // Create an instance and set the credentials 
      const client = new AuthenticatedClient();
      const tokens : Credentials = await secretManager.retrieveCredentials(uid);
      client.oauth2.setCredentials(tokens);
      AuthenticatedClient.instance.set(uid, client);
    }

    return AuthenticatedClient.instance.get(uid)!; // guaranteed to be set so we bang it
  }

  getOAuth2Client() : OAuth2Client {
    return this.oauth2;
  }

  async storeIfNew(tokens: Credentials) {

    if(tokens.access_token === null) {
      throw Error('No access token.');
    }
    if(tokens.refresh_token === null) {
      throw Error('No refresh token.');
    }
    const newExpiry = unNull(tokens.expiry_date, 'No new expiry date.');
    const oldExpiry = unNull(this.oauth2.credentials.expiry_date, 'No old expiry date.');    

    if(newExpiry > oldExpiry) {
      functions.logger.log('Getting email from PeopleAPI...');

      const peopleAPI = new PeopleAPI(this.oauth2);
      const email = await peopleAPI.getEmail();

      functions.logger.log('Converting email to Firebase UID...');

      const userRecord = await firebaseAdmin.getAuth().getUserByEmail(email);

      functions.logger.log('Saving tokens under UID in SecretManager...');
      
      await secretManager.save(userRecord.uid, tokens);
    }
  }

  logAnonymized(tokens: Credentials) {
    const id_str = tokens.id_token?.substr(0,5)+'...';
    const refresh_str = tokens.refresh_token?.substr(0,5)+'...';
    const access_str = tokens.access_token?.substr(0,5)+'...';

    const anonymisedCredentials = {
      'id_token': id_str,
      'refresh_token': refresh_str,
      'access_token': access_str,
      'expiry': tokens.expiry_date,
    }
    
    functions.logger.warn('Anonymized credentials: ', anonymisedCredentials); 
  }

}