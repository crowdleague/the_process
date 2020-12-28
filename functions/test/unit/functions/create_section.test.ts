import * as funcTest from "firebase-functions-test";
import * as admin from 'firebase-admin';
import * as service_locator from '../../../src/utils/service_locator';
import { firebaseAdmin } from '../../../src/utils/firebase_admin';
import { DocumentReference, DocumentSnapshot, WriteResult } from "@google-cloud/firestore";
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

    // Create mocks to be returned in place of services, that provide expected values.

    const driveAPIMock = mock<DriveAPIInterface>();
    driveAPIMock.createFolder.mockResolvedValueOnce({id: 'folderIdBoop'});

    const docsAPIMock = mock<DocsAPIInterface>();
    docsAPIMock.createDoc.mockResolvedValueOnce({documentId: 'docIdBlam'});

    const fakeSectionData = new FakeSectionData('uid');

    // Replace service_locator functions to return our mocked services.

    jest.spyOn(service_locator, 'createSectionData').mockImplementationOnce((uid: string) => fakeSectionData);
    jest.spyOn(service_locator, 'getDriveAPI').mockImplementationOnce((uid: string) => Promise.resolve(driveAPIMock));
    jest.spyOn(service_locator, 'getDocsAPI').mockImplementationOnce((uid: string) => Promise.resolve(docsAPIMock));

    // Create a mocked DocumentSnapshot to pass in to the function under test.

    const snapshotMock = mock<DocumentSnapshot>();
    snapshotMock.data.mockReturnValueOnce({section: {name: 'testy'}});
    // Replacing getters is difficult, this seems to be the best way.
    Object.defineProperty(snapshotMock, 'ref', {
      get: () => {
        const docRefMock = mock<DocumentReference>();
        docRefMock.delete.mockResolvedValueOnce(mockDeep<WriteResult>());
        return docRefMock;
      },
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
