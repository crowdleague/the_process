import * as functions from 'firebase-functions';
import { exchangeCodeWithGoogle } from './auth/server_flow_google';
import { getAuthorizationUrl } from './auth/server_flow_google';

export const test = functions.https.onRequest((request, response) => {
  functions.logger.info("Hello logs!", {structuredData: true});
  response.send("Hello from Firebase!");
});

// server flow 
export const getAuthUrl = functions.https.onRequest(getAuthorizationUrl);
export const exchangeWithGoogle = functions.https.onRequest(exchangeCodeWithGoogle);
