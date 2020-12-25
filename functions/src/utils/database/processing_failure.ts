import { DocumentData, DocumentReference, FieldValue } from "@google-cloud/firestore";
import { db } from "../firebase_admin";

export interface ProcessingFailureInterface {
  readonly error: Error;
  readonly uid: string;
  readonly info: Map<String, Object>;

  save() : Promise<DocumentReference<DocumentData>>;
}

export class ProcessingFailure implements ProcessingFailureInterface {
  readonly error: Error;
  readonly uid: string;
  readonly info: Map<String, Object>;

  constructor(error: Error, uid: string, info: Map<String, Object>) {
    this.error = error;
    this.uid = uid;
    this.info = info;
  }

  async save() : Promise<DocumentReference<DocumentData>> {
      return db.collection('processing_failures').add({
          'createdOn': FieldValue.serverTimestamp(),
          'error': this.error,
          'createdBy': this.uid,
          'info': this.info,          
      });
  }
}