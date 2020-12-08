import * as functions from 'firebase-functions';

import { firebaseAdmin } from '../utils/firebase_admin';

const messaging = firebaseAdmin.getMessaging();

export async function sendMessageCallback(snapshot : functions.firestore.DocumentSnapshot, context : functions.EventContext) {

  const data = snapshot.data() ?? {};
  const message = data['message'];
  const to = data['to'];
  // const from = snapshot.id;

  await messaging.sendToDevice(
    to,
    {
      data: {
        message: message,
      },
    },
    {
      // Required for background/quit data-only messages on iOS
      contentAvailable: true,
      // Required for background/quit data-only messages on Android
      priority: "high",
    }
  );

}