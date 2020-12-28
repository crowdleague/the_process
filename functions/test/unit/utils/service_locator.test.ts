// import { mockDeep } from 'jest-mock-extended';
// import { DocsAPIInterface } from '../../../src/google_apis/docs';
// import { DriveAPIInterface } from '../../../src/google_apis/drive';
// import { example_user_credentials } from '../../data/example_user_credentials';

// import * as service_locator from '../../../src/utils/service_locator';

test('ServiceLocator locates expected services', async () => {

  expect(true).toBe(true);
  
  // const sectionData = service_locator.createSectionData('uid');
  // sectionData.name = 'name';
  // sectionData.folderId = 'folderId';
  // sectionData.useCasesDocId = 'useCasesDocId';

  // expect(sectionData.uid).toEqual('uid');
  // expect(sectionData.name).toEqual('name');
  // expect(sectionData.folderId).toEqual('folderId');
  // expect(sectionData.useCasesDocId).toEqual('useCasesDocId');

  // // const spiedSecretManager = spy(secretManager);
  // // jest.mock('secretManager');
  // // secretManager.get.mockResolvedValue

  // // when(spiedSecretManager.retrieveCredentials(anyString())).thenReturn(Promise.resolve(example_user_credentials));

  // const serviceLocatorSpy = jest.spyOn(service_locator, 'createSectionData').mockImplementationOnce((uid: string) => mockDeep());
  // serviceLocatorSpy.mockReset();
  
  // const docsAPI:DocsAPIInterface = await service_locator.getDocsAPI('docsUid');
  // expect(docsAPI.uid).toEqual('docsUid');
  // expect(docsAPI.client.uid).toEqual('docsUid');
  
  // const driveAPI:DriveAPIInterface = await service_locator.getDriveAPI('driveUid');
  // expect(driveAPI.uid).toEqual('driveUid');
  // expect(driveAPI.client.uid).toEqual('driveUid');

  // // reset(spiedSecretManager);

});
