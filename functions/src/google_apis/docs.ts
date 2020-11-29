import { docs_v1, google } from 'googleapis';
import { AuthClient } from '../auth/auth_client';

export class DocsAPI {
  rootFolderId: string = '1poq_tgqfzOF34pJFvdbPgYgI_tD6Mseb';
  client!: AuthClient;
  docs!: docs_v1.Docs;

  private constructor() {}

  static async with(uid: string) {
    const docsAPI = new DocsAPI();
    docsAPI.client = await AuthClient.getInstanceWithCredentialsFor(uid);
    docsAPI.docs = google.docs({version: 'v1', auth: docsAPI.client.getOAuth2Client()});
  }

  async createDoc(title: string) : Promise<docs_v1.Schema$Document> {
    const createResponse = await this.docs.documents.create({
      requestBody: {
        'title': title,
      }
    });

    return createResponse.data;
  }

}