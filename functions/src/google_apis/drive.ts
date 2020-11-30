import { drive_v3, google } from 'googleapis';

import { unNull } from '../utils/problem_utils';
import { AuthenticatedClient } from '../auth/authenticated_client';

export class DriveAPI {
  rootFolderId: string = '1poq_tgqfzOF34pJFvdbPgYgI_tD6Mseb';
  client!: AuthenticatedClient;
  drive!: drive_v3.Drive;

  // eslint-disable-next-line @typescript-eslint/no-empty-function
  constructor() {}

  static async for(uid: string) : Promise<DriveAPI> {
    const driveAPI = new DriveAPI();
    
    driveAPI.client = await AuthenticatedClient.getInstanceFor(uid);
    driveAPI.drive = google.drive({version: 'v3', auth: driveAPI.client.getOAuth2Client()});

    return driveAPI;
  }

  async createFolder(name: string) : Promise<drive_v3.Schema$File> {

    const filesResponse = await this.drive.files.create({
      requestBody: {
        'name': name,
        'mimeType': 'application/vnd.google-apps.folder',
        'parents': [this.rootFolderId],
      },
      fields: 'id',
    });

    const id = unNull(filesResponse.data.id, 'Creating folder did not return an id.');

    const permissionParams : drive_v3.Params$Resource$Permissions$Create = {
      fileId: id,
      requestBody: {
        emailAddress: 'the-crowdleague-team@googlegroups.com',
        type: 'group',
        role: 'writer',
      },
    }

    await this.drive.permissions.create(permissionParams);

    return filesResponse.data;
  }

  async moveDoc(docId: string, folderId : string) {

    await this.drive.files.update({ 
      fileId: docId,
      addParents: folderId,
      fields: 'id, parents',
    });

  }

}