import { DocumentData, DocumentReference, FieldValue } from "@google-cloud/firestore";
import { db } from "../firebase_admin";

export interface ProcessingFailureInterface {
  readonly error: Error;
  readonly uid?: string | undefined;
  readonly info?: Record<string, unknown> | undefined;

  save() : Promise<DocumentReference<DocumentData>>;
}

export class ProcessingFailure implements ProcessingFailureInterface {
  readonly error: Error;
  readonly uid?: string | undefined;
  readonly info?: Record<string, unknown> | undefined;

  constructor(error: Error, uid?: string, info?: Record<string, unknown>) {
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
