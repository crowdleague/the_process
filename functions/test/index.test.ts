import * as funcTest from "firebase-functions-test";
import sinon, { stubInterface } from "ts-sinon";

import * as functions from 'firebase-functions';

import * as admin from 'firebase-admin';
import * as service_locator from '../src/utils/service_locator';
import { firebaseAdmin } from '../src/utils/firebase_admin';
import { DriveAPIInterface } from "../src/google_apis/drive";
import { DocsAPIInterface } from "../src/google_apis/docs";
import { SectionData } from "../src/utils/database";
import { mock, when, instance } from 'ts-mockito';

describe('Cloud Functions', () => {
  let myFunctions: any, adminInitStub: any, firebaseAdminStub: any, locatorStub: any;
  
  const driveAPIStub = stubInterface<DriveAPIInterface>();
  driveAPIStub.createFolder.returns(Promise.resolve({id: 'folderIdBoop'}));

  const docsAPIStub = stubInterface<DocsAPIInterface>();
  docsAPIStub.createDoc.returns(Promise.resolve({documentId: 'docIdBlam'}))

  const exampleData:FirebaseFirestore.DocumentData = {section: {name: 'testy'}};
  const mockedSnapshot:functions.firestore.DocumentSnapshot = mock<functions.firestore.DocumentSnapshot>(); 
  when(mockedSnapshot.data()).thenReturn(exampleData);

  const mockedDocRef:admin.firestore.DocumentReference<admin.firestore.DocumentData> = mock<admin.firestore.DocumentReference<admin.firestore.DocumentData>>();
  const mockedSectionData:SectionData = mock(SectionData);
  when(mockedSectionData.save()).thenReturn(Promise.resolve(mockedDocRef));

  when(mockedSnapshot.ref).thenReturn(mockedDocRef);

  // const mockedSnapshotDocRef:admin.firestore.DocumentReference<admin.firestore.DocumentData> = mock<admin.firestore.DocumentReference<admin.firestore.DocumentData>>();
  // when(mockedSnapshotDocRef.delete()).thenReturn(Promise.resolve(mockedDocRef));

  const tester = funcTest();
  before(async () => {
    // Stub functions so importing index.ts (which initializes Firebase etc) doesn't break.
    adminInitStub = sinon.stub(admin, 'initializeApp');
    firebaseAdminStub = sinon.stub(firebaseAdmin, 'getFirestore');
    locatorStub = sinon.stub(service_locator, 'getDriveAPI').callsFake(() => Promise.resolve(driveAPIStub));
    locatorStub = sinon.stub(service_locator, 'getDocsAPI').callsFake(() => Promise.resolve(docsAPIStub));
    locatorStub = sinon.stub(service_locator, 'getSectionData').callsFake(() => mockedSectionData);
    
    // Now that we have mocked FirebaseAdmin etc. we import index.ts so we can call our 
    // functions in tests. We use an async import so we can mock before the Firebase modules
    // are accessed.
    myFunctions = await import('../src/index');
  });

  it("createSectionFolder", async () => {
    const wrapped = tester.wrap(myFunctions.createSectionFolder);    
    await wrapped(instance(mockedSnapshot));
  });

  after(() => {
    adminInitStub.restore();
    firebaseAdminStub.restore();
    locatorStub.restore();
    tester.cleanup();
  });
});
