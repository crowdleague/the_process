import { expect } from 'chai';
import * as service_locator from '../src/utils/service_locator';

describe('Service Locator', () => {
  
  before(async () => {
    
  });

  it("should locate correct objects", async () => {
    const sectionData = service_locator.createSectionData({uid: 'uid', name: 'name', folderId: 'folderId', useCasesDocId: 'useCasesDocId'});
    expect(sectionData.uid).equals('uid');
    expect(sectionData.name).equals('name');
    expect(sectionData.folderId).equals('folderId');
    expect(sectionData.useCasesDocId).equals('useCasesDocId');
  });

  after(() => {
    
  });
});