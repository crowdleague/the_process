import { DocumentData, DocumentReference } from "@google-cloud/firestore";
import { anything, instance, mock, spy, when } from "ts-mockito";
import { SectionData } from "../src/utils/database";
import * as service_locator from '../src/utils/service_locator';

describe('Mocking', () => {
  
  before(async () => {
    
  });

  it('should work', async () => {
    const mockedSectionData:SectionData = mock(SectionData);
    const mockedDocRef:DocumentReference<DocumentData> = mock(DocumentReference);
    when(mockedSectionData.save()).thenReturn(Promise.resolve(instance(mockedDocRef)));
    
    const spiedServiceLocator = spy(service_locator);
    when(spiedServiceLocator.createSectionData(anything())).thenReturn(instance(mockedSectionData));

    // service_locator.createSectionData({uid: 'uid', name: 'name', folderId: 'folderId', useCasesDocId: 'useCasesDocId'});
  });

  after(() => {
    
  });
});