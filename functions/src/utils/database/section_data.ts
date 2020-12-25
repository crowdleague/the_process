import { DocumentData, DocumentReference, FieldValue } from "@google-cloud/firestore";
import { db } from "../firebase_admin";

export interface SectionDataInterface {
  readonly uid: string;
  readonly name: string;
  readonly folderId: string;
  readonly useCasesDocId: string;

  save() : Promise<DocumentReference<DocumentData>>;
  failed(failures: any[])  : Promise<DocumentReference<DocumentData>>;
}

export class SectionData implements SectionDataInterface {
  readonly uid: string;
  readonly name: string;
  readonly folderId: string;
  readonly useCasesDocId: string;

  constructor(uid: string, name: string, folderId: string, useCasesDocId: string) {
      this.uid = uid;
      this.name = name;
      this.folderId = folderId;
      this.useCasesDocId = useCasesDocId;
  }
  async save() : Promise<DocumentReference<DocumentData>> {
      return db.collection('sections').add({
          'createdOn': FieldValue.serverTimestamp(),
          'createdBy': this.uid,
          'name': this.name,
          'folderId': this.folderId,
          'useCasesDocId': this.useCasesDocId,
      });
  }
  async failed(failures: any[])  : Promise<DocumentReference<DocumentData>> {
      const data = {
          'uid': this.uid,
          'failures': failures,
      };
      return db.collection(`users/${this.uid}/processing_failures`).add({
          'type': 'SectionData',
          'createdOn': FieldValue.serverTimestamp(),
          'message': JSON.stringify(data),
          'data': data,
      });
  }
}