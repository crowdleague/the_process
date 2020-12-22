import * as funcTest from "firebase-functions-test";
import sinon, { stubInterface, stubObject } from "ts-sinon";

import * as admin from 'firebase-admin';
import * as service_locator from '../src/utils/service_locator';
import { firebaseAdmin } from '../src/utils/firebase_admin';
import { assert } from "chai";
import { DriveAPIInterface } from "../src/google_apis/drive";
import { DocsAPIInterface } from "../src/google_apis/docs";
import { SectionData, SectionDataInterface } from "../src/utils/database";

describe('Cloud Functions', () => {
  let myFunctions: any, adminInitStub: any, firebaseAdminStub: any, locatorStub: any;
  
  const driveAPIStub = stubInterface<DriveAPIInterface>();
  driveAPIStub.createFolder.returns(Promise.resolve({id: 'folderIdBoop'}));

  const docsAPIStub = stubInterface<DocsAPIInterface>();
  docsAPIStub.createDoc.returns(Promise.resolve({documentId: 'docIdBlam'}))

  admin.firestore.DocumentReference<admin.firestore.DocumentData>
  const sectionData = new SectionData('uid', 'name', 'folderId', 'useCasesDocId');
  const sectonDataStub = stubObject<SectionData>(sectionData, { save:  });
  sectonDataStub.save.returns(Promise.resolve()

  const tester = funcTest();
  before(async () => {
    // Stub functions so importing index.ts (which initializes Firebase etc) doesn't break.
    adminInitStub = sinon.stub(admin, 'initializeApp');
    firebaseAdminStub = sinon.stub(firebaseAdmin, 'getFirestore');
    locatorStub = sinon.stub(service_locator, 'getDriveAPI').callsFake(() => Promise.resolve(driveAPIStub));
    locatorStub = sinon.stub(service_locator, 'getDocsAPI').callsFake(() => Promise.resolve(docsAPIStub));
    locatorStub = sinon.stub(service_locator, 'getSectionData').callsFake(() => Promise.resolve());
    
    // Now that we have mocked FirebaseAdmin etc. we import index.ts so we can call our 
    // functions in tests. We use an async import so we can mock before the Firebase modules
    // are accessed.
    myFunctions = await import('../src/index');
  });

  it("createSectionFolder", async () => {
    const wrapped = tester.wrap(myFunctions.createSectionFolder);
    const snapshot =  tester.firestore.makeDocumentSnapshot({section: {name: 'testy'}}, 'sections');
    const result = await wrapped(snapshot);
    assert.equal(result, true);
  });

  after(() => {
    adminInitStub.restore();
    firebaseAdminStub.restore();
    locatorStub.restore();
    tester.cleanup();
  });
});
