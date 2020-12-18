import * as funcTest from "firebase-functions-test";
// import * as sinon from 'sinon';
import sinon, { stubInterface } from "ts-sinon";

import * as admin from 'firebase-admin';
import * as service_locator from '../src/utils/service_locator';
import { firebaseAdmin } from '../src/utils/firebase_admin';
import { assert } from "chai";
import { DriveAPIInterface } from "../src/google_apis/drive";

describe('Cloud Functions', () => {
  let myFunctions: any, adminInitStub: any, firebaseAdminStub: any, locatorStub: any;
  
  const driveAPIStub = stubInterface<DriveAPIInterface>();
  driveAPIStub.createFolder.returns(Promise.resolve({id: '1'}));

  const tester = funcTest();
  before(async () => {
    // Stub functions so importing index.ts (which initializes Firebase etc) doesn't break.
    adminInitStub = sinon.stub(admin, 'initializeApp');
    firebaseAdminStub = sinon.stub(firebaseAdmin, 'getFirestore');
    locatorStub = sinon.stub(service_locator, 'getDriveAPI').callsFake(() => Promise.resolve(driveAPIStub));

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
