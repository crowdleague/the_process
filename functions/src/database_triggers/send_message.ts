import * as functions from 'firebase-functions';

import { firebaseAdmin } from '../utils/firebase_admin';

const messaging = firebaseAdmin.getMessaging();

export async function sendMessageCallback(snapshot : functions.firestore.DocumentSnapshot, context : functions.EventContext) {

  const data = snapshot.data() ?? {};
  const message = data['message'];
  const to = data['to'];
  // const from = snapshot.id;

  functions.logger.info(`Sending "${message}" to ${to}`);

  const payload = {
    notification: {
      title: 'Notification!',
      body: message,
      icon: 'https://lh3.googleusercontent.com/a-/AOh14Gjd4HoLnCz78kJoUToyB3gsNL9uI9pkVxM2iBK4=s96-c',
    },
  };

  const response = await messaging.sendToDevice(
    to, payload,
  );

  functions.logger.info(`Response: `, response);

  // const dataMessage = { data: {
  //     message: message,
  //   },
  // };
  // const extras = { // Required for background/quit data-only messages on iOS
  //   contentAvailable: true,
  //   // Required for background/quit data-only messages on Android
  //   priority: "high", };

}