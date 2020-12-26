import { expect } from 'chai';
import { anyString, reset, spy, when } from 'ts-mockito';
import { DocsAPIInterface } from '../../../src/google_apis/docs';
import { DriveAPIInterface } from '../../../src/google_apis/drive';
import { secretManager } from '../../../src/utils/credentials/secret_manager';
import * as service_locator from '../../../src/utils/service_locator';
import { example_user_credentials } from '../../data/example_user_credentials';

describe('Service Locator', () => {
  
  const sectionData = service_locator.createSectionData('uid');
  const spiedSecretManager = spy(secretManager);

  before(async () => {
    sectionData.name = 'name';
    sectionData.folderId = 'folderId';
    sectionData.useCasesDocId = 'useCasesDocId';
  });

  it('locates services with expected properties', async () => {
    expect(sectionData.uid).equals('uid');
    expect(sectionData.name).equals('name');
    expect(sectionData.folderId).equals('folderId');
    expect(sectionData.useCasesDocId).equals('useCasesDocId');

    when(spiedSecretManager.retrieveCredentials(anyString())).thenReturn(Promise.resolve(example_user_credentials));

    const docsAPI:DocsAPIInterface = await service_locator.getDocsAPI('docsUid');
    expect(docsAPI.uid).equals('docsUid');
    expect(docsAPI.client.uid).equals('docsUid');
    
    const driveAPI:DriveAPIInterface = await service_locator.getDriveAPI('driveUid');
    expect(driveAPI.uid).equals('driveUid');
    expect(driveAPI.client.uid).equals('driveUid');

  });

  after(() => {
    reset(spiedSecretManager);
  });
});