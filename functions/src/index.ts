import * as functions from 'firebase-functions';
import { redirectToAuthorization, exchangeCodeWithGoogle } from './auth/server_flow_google';

// server flow 
export const getAuthorized = functions.https.onRequest(redirectToAuthorization);
export const exchangeWithGoogle = functions.https.onRequest(exchangeCodeWithGoogle);


// Save the token to a document named as the user id
    // const dbEntry = new database.AuthToken(req.query.state, token_response);
    // await dbEntry.save();