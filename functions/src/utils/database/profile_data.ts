import { DocumentData, DocumentReference, FieldValue, WriteResult } from "@google-cloud/firestore";
import { db } from "../firebase_admin";

export class ProfileData {
  uid: string;
  provider: string;
  authState: string;

  constructor(uid: string, provider: string, authState: string) {
      this.uid = uid;
      this.provider = provider;
      this.authState = authState;
  }

  async save() : Promise<WriteResult> {
      const providerName = this.provider+'Auth';
      return db.doc(`profiles/${this.uid}`).set({
          [providerName] : this.authState,
      }, {merge: true});
  }

  async onFailureSave(error: Error) : Promise<DocumentReference<DocumentData>> {
    return db.collection(`processing_failures`).add({
      error: JSON.stringify(error, Object.getOwnPropertyNames(error)),
      type: 'ProfileData',
      createdOn: FieldValue.serverTimestamp(),
      data: {
        uid: this.uid,
      },
    });
  }
}