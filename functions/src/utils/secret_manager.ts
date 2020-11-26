import * as functions from 'firebase-functions';
import { Credentials } from 'google-auth-library';
import { SecretManagerServiceClient, protos } from '@google-cloud/secret-manager';


// We create the secret with automatic replication, documented as "the right choice in most cases".
const autoReplication = { automatic: {} };

class SecretManager {
  secretsClient = new SecretManagerServiceClient();

  async save(uid: string, tokens: Credentials) {

    let secret: protos.google.cloud.secretmanager.v1.ISecret;
    
    // Check if a secret already exists and only create if not 
    try {
      [secret] = await this.secretsClient.getSecret({
        name: 'projects/the-process-tool/secrets/'+uid,
      });

      functions.logger.info('Retrieved secret: ', secret);
    }
    catch {
      functions.logger.info(`Could not retrieve a secret for: ${uid}`);

      [secret] = await this.secretsClient.createSecret({
        parent: 'projects/the-process-tool',
        secretId: uid,
        secret: {
          name: uid,
          replication: autoReplication,
        },
      });

      functions.logger.info('Created secret: ', secret);
    }

    const tokensJson = {
      "google": {
          "refresh_token": tokens.refresh_token,
          "access_token": tokens.access_token,
          "expiry_date": tokens.expiry_date,
          "scope": tokens.scope,
      },
    }

    // Add a version with a payload onto the secret.
    const [version] = await this.secretsClient.addSecretVersion({
      parent: secret.name,
      payload: {
        data: Buffer.from(JSON.stringify(tokensJson), 'utf8'),
      },
    });

    functions.logger.info(`Addeded secret version ${version.name}`);
  }

  // 
  async retrieveCredentials(uid: string) : Promise<Credentials> {
    // Access the secret.
    const [accessResponse] = await this.secretsClient.accessSecretVersion({
      name: 'projects/the-process-tool/secrets/'+uid+'/versions/latest',
    });

    const responsePayload = accessResponse.payload?.data?.toString();

    if(responsePayload == null) {
      throw Error(`When retrieving secret for ${uid}, response payload was null`);
    }

    const tokensJson = JSON.parse(responsePayload);
    
    functions.logger.log('Parsed json from responsePayload');

    return tokensJson.google;
  }
}

export const secretManager = new SecretManager();