import { DriveAPIInterface } from "../../google_apis/drive";
import { mock } from 'jest-mock-extended';
import { DocsAPIInterface } from "../../google_apis/docs";
import { SectionData } from "../database/section_data";

const service_locator = jest.createMockFromModule('service_locator');

// we make a new api object each time but the AuthenticatedClient used by each api object is a singleton map 

export const getDriveAPI = async function(uid: string) : Promise<DriveAPIInterface> {
  const mocked = mock<DriveAPIInterface>();
  return Promise.resolve(mocked);
};

(service_locator as any).getDriveAPI = getDriveAPI;

export const getDocsAPI = async function(uid: string) : Promise<DocsAPIInterface> {
  const mocked = mock<DocsAPIInterface>();
  return Promise.resolve(mocked);
};

(service_locator as any).getDocsAPI = getDocsAPI;

export const createSectionData = function(uid: string): SectionData {
  return new SectionData(uid);
};

(service_locator as any).getSectonData = createSectionData;