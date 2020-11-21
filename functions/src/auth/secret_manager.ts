import * as functions from 'firebase-functions';
import { Credentials } from 'google-auth-library';
import { SecretManagerServiceClient } from '@google-cloud/secret-manager';

// We create the secret with automatic replication, documented as "the right choice in most cases".
const autoReplication = { automatic: {} };

class SecretManager {
  client = new SecretManagerServiceClient();

  async save(uid: string, tokens: Credentials) {
    functions.logger.info(`Creating secret: ${uid}`);

    // TODO: check if secret with name already exists 
    // if yes, update?  or delete and create new? 

    const [secret] = await this.client.createSecret({
      parent: 'projects/the-process-tool',
      secretId: uid,
      secret: {
        name: uid,
        replication: autoReplication,
      },
    });

    functions.logger.info(`Created secret: ${secret.name}`);

    const tokensJson = {
      "google": {
          "refresh_token": tokens.refresh_token,
          "access_token": tokens.access_token,
          "expiry_date": tokens.expiry_date,
          "scope": tokens.scope,
      },
    }

    // Add a version with a payload onto the secret.
    const [version] = await this.client.addSecretVersion({
      parent: secret.name,
      payload: {
        data: Buffer.from(JSON.stringify(tokensJson), 'utf8'),
      },
    });

    functions.logger.info(`Added secret version ${version.name}`);
  }
}

export const secretManager = new SecretManager();