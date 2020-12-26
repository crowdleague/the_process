import * as funcTest from "firebase-functions-test";
import * as admin from 'firebase-admin';
import * as service_locator from '../../../src/utils/service_locator';
import { firebaseAdmin } from '../../../src/utils/firebase_admin';
import { DriveAPI } from "../../../src/google_apis/drive";
import { DocsAPI } from "../../../src/google_apis/docs";
import { mock, when, instance, spy, anyString, anything, reset } from 'ts-mockito';
import { DocumentData, DocumentReference, DocumentSnapshot } from "@google-cloud/firestore";
import { FakeSectionData } from "../../mocks/fake_section_data";
import { expect } from "chai";

describe('Cloud Functions', () => {
  let myFunctions: any;
  const tester = funcTest();
  
  const spiedAdmin = spy(admin);
  const spiedFirebaseAdmin = spy(firebaseAdmin);
  const spiedServiceLocator = spy(service_locator);
  
  const mockedDriveAPI:DriveAPI = mock(DriveAPI);
  const mockedDocsAPI:DocsAPI = mock(DocsAPI);
  const mockedSnapshot:DocumentSnapshot = mock<DocumentSnapshot>(); 
  const mockedDocRef:DocumentReference<DocumentData> = mock(DocumentReference);
  
  const fakeSectionData = new FakeSectionData('uid');

  before(async () => {

    when(spiedAdmin.initializeApp(anything())).thenReturn(instance(mock(admin.app)));
    when(spiedFirebaseAdmin.getFirestore()).thenReturn(instance(mock(admin.firestore)));

    when(spiedServiceLocator.getDriveAPI(anyString())).thenReturn(Promise.resolve(instance(mockedDriveAPI)));
    when(spiedServiceLocator.getDocsAPI(anyString())).thenReturn(Promise.resolve(instance(mockedDocsAPI)));
    when(spiedServiceLocator.createSectionData(anything())).thenReturn(fakeSectionData);

    when(mockedDriveAPI.createFolder(anyString())).thenReturn(Promise.resolve({id: 'folderIdBoop'}));
    when(mockedDocsAPI.createDoc(anyString())).thenReturn(Promise.resolve({documentId: 'docIdBlam'}));

    when(mockedSnapshot.data()).thenReturn({section: {name: 'testy'}});
    
    when(mockedSnapshot.ref).thenReturn(instance(mockedDocRef));

    // Import index.ts with an async import so we can mock before the Firebase modules are accessed.
    myFunctions = await import('../../../src/index');

  });

  it('should successfully run createSectionFolder', async () => {
    const wrapped = tester.wrap(myFunctions.createSection);
    await wrapped(instance(mockedSnapshot));

    expect(fakeSectionData.name).equals('testy');
  });

  after(() => {
    reset(spiedAdmin);
    reset(spiedFirebaseAdmin);
    reset(spiedServiceLocator);
    reset(mockedDriveAPI);
    reset(mockedDocsAPI);
    reset(mockedSnapshot); 
    reset(mockedDocRef);
    tester.cleanup();
  });
});
