import * as funcTest from "firebase-functions-test";
import * as admin from 'firebase-admin';
import * as service_locator from '../../../src/utils/service_locator';
import { firebaseAdmin } from '../../../src/utils/firebase_admin';
import { DocumentReference, DocumentSnapshot } from "@google-cloud/firestore";
import { FakeSectionData } from "../../mocks/fake_section_data";
import { mock, mockDeep } from "jest-mock-extended";
import { DriveAPIInterface } from "../../../src/google_apis/drive";
import { DocsAPIInterface } from "../../../src/google_apis/docs";

describe('CloudFunction', () => {
  let myFunctions: any;
  const tester = funcTest();
  
  beforeAll(async () => {
    // Use async import so we can spy before the Firebase modules are accessed.
    myFunctions = await import('../../../src/index');

    // replace calls during the firebase initialization that require a live connection 
    jest.spyOn(admin, 'initializeApp').mockImplementationOnce(() => mockDeep());
    jest.spyOn(firebaseAdmin, 'getFirestore').mockImplementationOnce(() => mockDeep());
  });

  it('.createSection saves failures to database', async () => {
    const fakeSectionData = new FakeSectionData('uid');
    jest.spyOn(service_locator, 'createSectionData').mockImplementationOnce((uid: string) => fakeSectionData);

    // setup the test harness and call the function 
    const wrapped = tester.wrap(myFunctions.createSection);
    await wrapped(mockDeep<DocumentSnapshot>());

    // check that the section has the expected values 
    expect(fakeSectionData.error).not.toBe(null);
  });

  it('.createSection saves SectionData with expected values', async () => {

    const fakeSectionData = new FakeSectionData('uid');
    jest.spyOn(service_locator, 'createSectionData').mockImplementationOnce((uid: string) => fakeSectionData);
    jest.spyOn(service_locator, 'getDriveAPI').mockImplementationOnce((uid: string) => Promise.resolve(mockDeep<DriveAPIInterface>()));
    jest.spyOn(service_locator, 'getDocsAPI').mockImplementationOnce((uid: string) => Promise.resolve(mockDeep<DocsAPIInterface>()));

    // setup all the mocks 
    // when(mockedDriveAPI.createFolder(anyString())).thenReturn(Promise.resolve({id: 'folderIdBoop'}));
    // when(mockedDocsAPI.createDoc(anyString())).thenReturn(Promise.resolve({documentId: 'docIdBlam'}));
    // when(mockedSnapshot.data()).thenReturn({section: {name: 'testy'}});
    // when(mockedSnapshot.ref).thenReturn(instance(mockedDocRef));

    const snapshotMock = mock<DocumentSnapshot>();
    snapshotMock.data.mockReturnValue({section: {name: 'testy'}});
    Object.defineProperty(snapshotMock, "ref", {
      get: () => { return mock<DocumentReference>(); },
    });

    // setup the test harness and call the function 
    const wrapped = tester.wrap(myFunctions.createSection);
    await wrapped(snapshotMock);

    // check that the section has the expected values 
    expect(fakeSectionData.name).toBe('testy');
  });

  afterAll(() => {
    jest.resetAllMocks();
    tester.cleanup();
  });
});
