import { DriveAPI, DriveAPIInterface } from "../google_apis/drive"

export const getDriveAPI = async function(uid: string) : Promise<DriveAPIInterface> {
  const api = await DriveAPI.for(uid);
  return api;
}