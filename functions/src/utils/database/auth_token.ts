import { DocumentData, DocumentReference, FieldValue, WriteResult } from "@google-cloud/firestore";
import { db } from "../firebase_admin";

export class AuthToken {
  uid: string;
  authProvider: string;
  accessToken : string;
  refreshToken : string;

  constructor(uid: string, authProvider: string, accessToken: string, refreshToken: string) {
    this.uid = uid;
    this.authProvider = authProvider;
    this.accessToken = accessToken;
    this.refreshToken = refreshToken;
  }
  
  async save() : Promise<WriteResult> {
    return db.doc(`tokens/${this.uid}`).set({
      'accessToken' : this.accessToken,
      'refreshToken' : this.accessToken,
    }, {merge: true});
  }

  async onFailureSave(error: Error) : Promise<DocumentReference<DocumentData>> {
    return db.collection(`processing_failures`).add({
      error: JSON.stringify(error, Object.getOwnPropertyNames(error)),
      type: 'AuthToken',
      createdOn: FieldValue.serverTimestamp(),
      data: {
        uid: this.uid,
      },
    });
  }
}
